package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("policy")
public class PolicyController {
	@RequestMapping("service")//이용약관
	public String service() {
		return "main/bottom_left/service";
	}
	@RequestMapping("privacy")//개인정보처리방침
	public String privacy() {
		return "main/bottom_left/privacy";
	}
	@RequestMapping("refund")//환불
	public String refund() {
		return "main/bottom_left/refund";
	}
	@RequestMapping("info")//사업자정보 확인
	public String info() {
		return "main/bottom_left/info";
	}
}
