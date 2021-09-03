package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.LogInDTO;
import Model.ReviewDTO;
import command.ReviewCommand;
import repository.MemberRepository;

public class ReviewWriteService {
	@Autowired
	MemberRepository memberRepository;
	public void reviewWrite(ReviewCommand reviewCommand,HttpSession session) {
		ReviewDTO dto = new ReviewDTO();
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setMemId(logIn.getUserId());
		
		
		dto.setTutorId(reviewCommand.getTutorId());
		dto.setPurchaseNo(reviewCommand.getPurchaseNo());
		dto.setClassNo(reviewCommand.getClassNo());
		dto.setTutorSatisfy(reviewCommand.getTutorSatisfy());
		System.out.println(reviewCommand.getTutorSatisfy());
		dto.setClassSatisfy(reviewCommand.getClassSatisfy());
		System.out.println(reviewCommand.getClassSatisfy());
		dto.setReviewContents(reviewCommand.getReviewContents());
		System.out.println(reviewCommand.getReviewContents());
		dto.setReviewRegiDay(reviewCommand.getReviewRegiDay());
		memberRepository.reviewWrite(dto);
	}
}
