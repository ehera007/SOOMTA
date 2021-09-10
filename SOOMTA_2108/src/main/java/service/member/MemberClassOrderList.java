package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassOrderDTO;
import Model.LogInDTO;
import repository.MemberRepository;

public class MemberClassOrderList {
	@Autowired
	MemberRepository memberRepository;
	public void classOrderList(HttpSession session,Model model) {
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = logIn.getUserId();
		List<ClassOrderDTO> list = memberRepository.classOrderList(memId);
		model.addAttribute("list", list);
		
		int memClassCount = memberRepository.memClassCount(logIn.getUserId());
		model.addAttribute("memClassCount",memClassCount);

	}
}
