package service.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.SearchRepository;

public class ClassSearchService {
	@Autowired
	SearchRepository searchRepository;
	public void classSearch(Model model, String keyWord) {
		List<ClassDTO> clist = searchRepository.classSearch(keyWord);
		model.addAttribute("clist", clist);
	}
}
