package service.class1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.ReviewDTO;
import repository.ClassRepository;

public class ClassReviewViewService {
	@Autowired
	ClassRepository classRepository;
	public void reviewViewList(String classNo, Model model) {
		List<ReviewDTO> list = classRepository.reviewViewList(classNo);
		model.addAttribute("list", list);
		ClassDTO dto = classRepository.classDetailPage(classNo);
		model.addAttribute("dto", dto);
		int reviewCount = classRepository.reviewCount(classNo);
		model.addAttribute("reviewCount", reviewCount);
		double classSatisfyCount = classRepository.classSatisfyCount(classNo);
		model.addAttribute("classSatisfyCount", classSatisfyCount);
		double tutorSatisfyCount = classRepository.tutorSatisfyCount(classNo);
		model.addAttribute("tutorSatisfyCount", tutorSatisfyCount);
	}
}
