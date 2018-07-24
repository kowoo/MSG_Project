package dao;

import java.util.List;
import java.util.Map;

public interface EmpDao {
	public Map<String, Object> getMember(String empNo);
	public Map<String, Object> getMemberInfo(String empNo);
	public int modifyEmpByUser(Map<String, String> params);
	public int modifyEmpPic(Map<String, String> params);
	public String getFileName(String empNo);
	public Map<String, Object> selectOne(String empNo);
	public List<Map<String,Object>> selectByDept(String dept);
	public List<Map<String,Object>> selectOderedAll();
}
