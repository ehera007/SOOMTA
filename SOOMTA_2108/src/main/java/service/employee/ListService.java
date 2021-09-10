package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import Model.MemberDTO;
import Model.StartEndPageDTO;
import Model.TutorDTO;
import controller.employees.Page;
import repository.EmployeeRepository;

public class ListService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void tutorList(Model model) {
		List<TutorDTO> list = employeeRepository.tutorList();
		model.addAttribute("tutorList",list);
	}
	public void memList(Model model, Integer page) {
		System.out.println("page" + page);
		int limit = 10;
		int limitPage = 10;
		
		Long startRow = ((long)page -1) * limit +1;
		Long endRow = startRow + limit -1;
		StartEndPageDTO pages = new StartEndPageDTO();
		pages.setStartRow(startRow);
		pages.setEndRow(endRow);
		
		MemberDTO dto = new MemberDTO();
		dto.setStartEndPageDTO(pages);
		
		List<MemberDTO> list = employeeRepository.memList(dto);
		int count = employeeRepository.countM();
		System.out.println("c"+count);
		model.addAttribute("memList",list);
		model.addAttribute("count", count);
		model.addAttribute("no", startRow);
		
		Page pageAction = new Page();
		pageAction.pageAction(count, limit, page, limitPage, model, "memList");
	}
	public void boardList(Model model) {
		List<FaqDTO> list = employeeRepository.boardList();
		model.addAttribute("faqList", list);
	}
}
