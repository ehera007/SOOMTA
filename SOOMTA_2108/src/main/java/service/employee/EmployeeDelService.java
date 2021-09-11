package service.employee;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

import repository.EmployeeRepository;

public class EmployeeDelService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empDel(String empId) {
		employeeRepository.empDel(empId);
	}
	public void empCkDel(String empIds) {
		String[] delIdx = empIds.split(",");
		
		List<String> list = new ArrayList<String>();
		for(String empId : delIdx) {
			list.add(empId);
		}
		Map<String, Object> condition= new HashMap<String, Object>();
		condition.put("empIds", list);
		employeeRepository.empCkDel(condition);
		}
}
