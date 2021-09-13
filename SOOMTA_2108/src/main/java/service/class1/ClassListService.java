package service.class1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.StartEndPageDTO;
import Model.TutorDTO;
import command.CtgCommand;
import controller.employees.Page;
import repository.ClassRepository;

public class ClassListService {
	@Autowired
	ClassRepository classRepository;
	public void classList(Model model, String classCategoryS, Integer page, String path, CtgCommand ctgCommand) {
		System.out.println("a : "+ ctgCommand.getMemGender());
		System.out.println("a : "+ ctgCommand.getClassCity());
		System.out.println("a : "+ ctgCommand.getClassWay());
		System.out.println("a : "+ ctgCommand.getTutorGender());
		int limit = 12;
		int limitPage = 12;
		
		Long startRow = ((long)page -1) * limit +1;
		Long endRow = startRow + limit -1;
		StartEndPageDTO pages = new StartEndPageDTO();
		pages.setStartRow(startRow);
		pages.setEndRow(endRow);

		ctgCommand.setStartEndPageDTO(pages);
		ctgCommand.setClassCategoryS(classCategoryS);
		ctgCommand.setClassCategoryS(classCategoryS);
		List<ClassDTO> list = classRepository.classList(ctgCommand);
		int count = classRepository.countC(classCategoryS);
		model.addAttribute("list",list);
		model.addAttribute("count", count);
		model.addAttribute("no", startRow);
		model.addAttribute("path", path);
		Page pageAction = new Page();
		pageAction.pageAction(count, limit, page, limitPage, model, path);
	}
}
