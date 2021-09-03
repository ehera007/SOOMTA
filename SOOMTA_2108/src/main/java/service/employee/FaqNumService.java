package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.FaqCommand;
import repository.EmployeeRepository;

public class FaqNumService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void faqNo(Model model, FaqCommand faqCommand) {
		Long faqNo = employeeRepository.faqNo();
		faqCommand.setFaqNo(faqNo.toString());
		model.addAttribute("faqCommand",faqCommand);
		model.addAttribute("faqNo",faqNo);
	}
}
