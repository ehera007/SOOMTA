package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.faq.FaqViewService;
import service.faq.HireListService;

@Controller
@RequestMapping("about")
public class SoomtaController {
	@Autowired
	HireListService hireListService;
	@Autowired
	FaqViewService faqViewService;
	@RequestMapping("soomta")//회사소개
	public String soomta() {
		return "main/bottom_soomta/soomta";
	}
	@RequestMapping("service")//서비스소개
	public String service() {
		return "main/bottom_soomta/aboutService";
	}
	@RequestMapping("hire")//인재채용
	public String hire(Model model) {
		hireListService.hire(model);
		return "main/bottom_soomta/hire";
	}
	@RequestMapping("hireDetil")//인재채용 내용 보기
	public String hireDetil(@RequestParam(value="faqNo") String faqNo, Model model) {
		faqViewService.tView(faqNo,model);
		return "main/bottom_soomta/hireDetail";
	}
}
