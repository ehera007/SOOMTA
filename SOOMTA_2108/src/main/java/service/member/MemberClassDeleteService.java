package service.member;


import org.springframework.beans.factory.annotation.Autowired;

import Model.ClassOrderDTO;
import repository.MemberRepository;

public class MemberClassDeleteService {
	@Autowired
	MemberRepository memberRepository;
	public void classDel(String purchaseNo) {
		memberRepository.classDel(purchaseNo);
	}
	
}
