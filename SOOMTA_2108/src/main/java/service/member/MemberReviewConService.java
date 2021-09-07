package service.member;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;


import Model.ReviewDTO;
import repository.MemberRepository;

public class MemberReviewConService {
	@Autowired
	MemberRepository memberRepository;
	public void reviewCon(String purchaseNo, Model model) {
		ReviewDTO dto = memberRepository.reviewCon(purchaseNo);
		model.addAttribute("reviewCon",dto);
	}
}
