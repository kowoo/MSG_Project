package service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import dao.EmpDao;

@Service
public class EmpService {
	@Autowired
	private EmpDao dao;
	private static final String UPLOAD_PATH = "C:/empPic";
	
	public boolean checkLogin(Map<String, String> login_Info) {
		boolean result = false;
		String input_ID = login_Info.get("UID");
		String input_PWD = login_Info.get("UPW");
		
		Map<String, Object> member = dao.getMember(input_ID);
		if(member != null) {
			if(member.get("empPw").equals(input_PWD)) {
				result = true;
			}
		}
		return result;
	}
	
	public void modifyEmp(String empNo, Map<String, String> params, MultipartFile file) {
		String fName = writeFile(file);
		params.put("empNo", empNo);
		if(dao.modifyEmpByUser(params) > 0 ) {
			System.out.println("서비스 이픔분 들어옴");
			Map<String, String> param = new HashMap<String, String>();
			param.put("EMPNO", empNo);
			param.put("FILE", fName);
			System.out.println("변경사항 개수 : "+dao.modifyEmpPic(param));
		}
	}
	
	public Map<String, Object> getUserInfo(String id){
		return dao.getMemberInfo(id);
	}
	
	private String writeFile(MultipartFile file) {
		String fName = null;
		UUID uuid = UUID.randomUUID();
		fName = uuid.toString()+"_"+file.getOriginalFilename();
		File target = new File(UPLOAD_PATH, fName);
		try {
			FileCopyUtils.copy(file.getBytes(), target);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fName;
	}
	
	
	public byte[] getImageAsByteArray(String empNo) {
		System.out.println("찾을 사원번호 : "+empNo);
		String fileName = dao.getFileName(empNo);
		if(fileName == null) {
			fileName = "default.jpg";
		}
		File originFile = new File(UPLOAD_PATH+"/"+fileName); 
		InputStream targetStream = null;
		
		try {
			targetStream = new FileInputStream(originFile);
			
			return IOUtils.toByteArray(targetStream);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Map<String, Object>> selectAllByDept(String type){
		String dept = "";
		
		switch(type) {
		case "m":
			dept = "경영/기획부";
			break;
		case "b":
			dept = "영업부";
			break;
		case "i":
			dept = "IT부";
			break;
		default:
			dept = "재무부";
			break;
		}
		System.out.println("바뀐 값 : "+dept);
		return dao.selectByDept(dept);
	}
	
	public List<Map<String, Object>> getAllOrderdEmp(){
		return dao.selectOderedAll();
	}
	
	public Map<String, Object> selectOneEmp(String empNo){
		return dao.selectOne(empNo);
	}
}
