package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.LogInDTO;
import Model.PurchaseDTO;
import command.PurchaseCommand;
import repository.ClassRepository;
import repository.MemberRepository;

public class MemberPurchaseOkService {
	@Autowired
	MemberRepository mebermRepository;
	@Autowired
	ClassRepository classRepository;
	public void purchaseOk(PurchaseCommand purchaseCommand, HttpSession session, Model model) {
		PurchaseDTO dto = new PurchaseDTO();
		dto.setPurchaseNo(purchaseCommand.getPurchaseNo());
		dto.setClassNo(purchaseCommand.getClassNo());
		dto.setTutorId(purchaseCommand.getTutorId());
		dto.setPurchaseDate(purchaseCommand.getPurchaseDate());
		dto.setPurchaseMethod(purchaseCommand.getPurchaseMethod());
		dto.setPurchaseInformation(purchaseCommand.getPurchaseInformation());

		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = logIn.getUserId();
		System.out.println(memId);
		dto.setMemId(memId);
		
		mebermRepository.purchaseInsert(dto);
	}
}
