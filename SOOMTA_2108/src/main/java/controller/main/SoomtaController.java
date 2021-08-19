package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("about")
public class SoomtaController {
	@RequestMapping("soomta")//회사소개
	public String soomta() {
		return "main/bottom_soomta/soomta";
	}
	@RequestMapping("service")//서비스소개
	public String service() {
		return "main/bottom_soomta/aboutService";
	}
	@RequestMapping("hire")//인재채용
	public String hire() {
		return "main/bottom_soomta/hire";
	}
	@RequestMapping("hireDetil")//인재채용 내용 보기
	public String hireDetil() {
		return "main/bottom_soomta/hireDetail";
	}
}
