package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Autowired
	private EmpService service;
	
	@RequestMapping("/userLogin")
	public String userLogin(@RequestParam Map<String, String> param, HttpServletRequest req) {
		String url = "/loginForm";
		
		
		System.out.println(url);
		if(service.checkLogin(param)) {
			System.out.println("param : "+param.get("UID"));
			System.out.println(service.getUserInfo(param.get("UID")));
			req.getSession().setAttribute("user", service.getUserInfo(param.get("UID")));
			url = "main1";
			System.out.println("비밀번호 일치");
		}
		
		return url;
	}
	@RequestMapping("/userLogout")
	public String userLogout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/page/loginForm";
	}
	
	
	@RequestMapping("/userModify")
	public String userModify(HttpSession session, @RequestParam Map<String, String> param, MultipartFile file) {
		System.out.println("modimodi");
		Map<String, Object> user = (HashMap<String, Object>)session.getAttribute("user");
		String id = (String)user.get("empNo");
		System.out.println("컨트롤러 : "+id+", "+param+","+file);
		service.modifyEmp(id, param, file);
		return "redirect:/page/mainForm";
	}
	
	@ResponseBody
	@RequestMapping("/getEmpImage")
	public byte[] getProfileImg(String loginEmp) {
		return service.getImageAsByteArray(loginEmp);
	}
	
	@ResponseBody
	@RequestMapping("/selectEmpInfo")
	public Map<String, Object> selectOne(String empNo){
		System.out.println("emp 상세요청 내놔");
		return service.selectOneEmp(empNo);
	}
	
	@ResponseBody
	@RequestMapping("/selectByDept")
	public List<Map<String, Object>> getMembersByDept(String type){
		return service.selectAllByDept(type);
	}
	
	@ResponseBody
	@RequestMapping("/getAllList")
	public List<Map<String, Object>> getAllOrderdEmp(){
		System.out.println(service.getAllOrderdEmp());
		return service.getAllOrderdEmp();
	}
}
