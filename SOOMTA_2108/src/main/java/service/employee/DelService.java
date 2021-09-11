package service.employee;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import repository.EmployeeRepository;

public class DelService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void tutorDel(String tutorId) {
		employeeRepository.tutorDel(tutorId);
	}
	
	public void memDel(String memId) {
		employeeRepository.memDel(memId);
	} 
	
	public void boardDel(String faqNo) {
		employeeRepository.boardDel(faqNo);
	}
	public void faqCkDel(String faqNums) {
		String[] delFaq = faqNums.split(",");
		
		List<String> list = new ArrayList<String>();
		for(String faqNum : delFaq) {
			list.add(faqNum);
		}
		Map<String, Object> condition= new HashMap<String, Object>();
		condition.put("faqNums", list);
		employeeRepository.faqCkDel(condition);
		}

}
