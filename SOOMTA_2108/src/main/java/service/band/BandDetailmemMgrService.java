package service.band;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import repository.BandDetailRepository;

public class BandDetailmemMgrService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void memMgr(String bandNo, Model model) {
		List<MemberDTO> list = bandDetailRepository.bandMember(bandNo);
		List<MemberDTO> list1 = bandDetailRepository.bandAllowMember(bandNo);
		model.addAttribute("memList", list);
		model.addAttribute("allowMember", list1);
	}
	public void bandAllow(String memId){
		bandDetailRepository.bandAllow(memId);
	}
	public void bandMemDel(String memId) {
		bandDetailRepository.bandMemDel(memId);
	}
}