package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EmployeeDTO;
import Model.StartEndPageDTO;
import controller.employees.Page;
import repository.EmployeeRepository;

public class EmployeeListService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empList(Model model, Integer page) {
		int limit = 10;
		int limitPage = 10;

		Long startRow = ((long)page -1) * limit +1;
		Long endRow = startRow + limit -1;
		StartEndPageDTO pages = new StartEndPageDTO();
		pages.setStartRow(startRow);
		pages.setEndRow(endRow);
		
		EmployeeDTO dto = new EmployeeDTO();
		dto.setStartEndPageDTO(pages);
		
		List<EmployeeDTO> list = employeeRepository.empList(dto);
		int count = employeeRepository.countE();
		model.addAttribute("empList",list);
		model.addAttribute("count", count);
		model.addAttribute("no", startRow);
		
		Page pageAction = new Page();
		pageAction.pageAction(count, limit, page, limitPage, model, "empList");
	}
}
