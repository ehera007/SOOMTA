package controller.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandMemCommand;
import command.MemberCommand;
import service.band.BandDetailJoinService;
import service.band.BandDetailService;
import service.band.BandHomeService;
import service.member.MemberJoinService;
import service.member.MemberPerDataService;

@Controller
@RequestMapping("band")
public class BandDetailController {
	@RequestMapping("bandDetailHome")
	public String bandDetailHome() {
		return "band/bandDetailHome";
	}

	@RequestMapping("bandIntro")
	public String bandIntro() {
		return "band/bandIntro";
	}

	
	
	@Autowired
	BandDetailService bandDetailService;
	@RequestMapping("bandDetail")
	public String bandDetail(@RequestParam(value = "bandNo") Long bandNo, HttpSession session, Model model) {
		String path = bandDetailService.bandDetail(session, model, bandNo);
		return path;

	}
	

	@Autowired
	MemberPerDataService memberPerDataService;
	@RequestMapping("bandDetailJoin")
	public String bandDetailJoin(
			@RequestParam(value = "bandNo") Long bandNo,
			HttpSession session,Model model) {
		memberPerDataService.perData(model, session);
		bandDetailService.bandDetail(bandNo, model);
		return "band/bandDetailJoin";
	}
	
	
	
	@Autowired
	BandDetailJoinService bandDetailJoinService;
	@RequestMapping("bandDetailJoinOk")
	public String bandDetailJoinOk(BandMemCommand bandMemCommand,HttpSession session,Model model) {
		bandDetailJoinService.bandDetailJoin(session, bandMemCommand, model);
		return "band/bandDetailJoinOk";
	}
	//session = login 값 등 계쏙 유지해서 쓰려고 저장한곳
	
	
	
	@RequestMapping("bandDetailmem")
	public String bandDetailmem() {
		return "band/bandDetailmem";
	}

	@RequestMapping("bandDetailmy")
	public String bandDetailmy() {
		return "band/bandDetailmy";
	}

	@RequestMapping("bandDetailall")
	public String bandDetailmember() {
		return "band/bandDetailall";
	}

	@RequestMapping("bandDetailContent")
	public String bandDetailContent() {
		return "band/bandDetailContent";
	}

	@RequestMapping("bandDetailnotok")
	public String bandDetailnotok() {
		return "band/bandDetailnotok";
	}
/*
	@RequestMapping("bandDetailJoinChk")
	public String bandDetailjoinChk() {
		return "band/bandDetailJoinChk";
	}
*/
	//
	@Autowired
	MemberJoinService memberJoinService;
	@RequestMapping(value = "memJoined", method = RequestMethod.POST) // 회원가입 완료 후
	public String memJoined(MemberCommand memberCommand) {
		// memberJoinService.memInsert(memberCommand);
		return "member/joined";
	}


	// bandDetailcontentjoin
	@RequestMapping("bandDetailcontentjoin")
	public String bandDetailcontentjoin() {
		return "band/bandDetailcontentjoin";
	}

	// bandDetailHomeMgr
	@Autowired
	BandHomeService bandHomeService;

	@RequestMapping("bandDetailHomeMgr")
	public String bandDetailHomeMgr(@RequestParam(value = "bandNo") Long bandNo, Model model) {
		bandHomeService.bandHome(bandNo, model);
		return "band/bandDetailHomeMgr";
	}

	@RequestMapping("bandDetailContentSujung")
	public String bandDetailcontentSujung() {
		return "band/bandDetailcontentSujung";
	}

	@RequestMapping("bandDetailallMgr")
	public String bandDetailallMgr() {
		return "band/bandDetailallMgr";
	}

	@RequestMapping("bandDetailmemMgr")
	public String bandDetailmemMgr() {
		return "band/bandDetailmemMgr";
	}

	@RequestMapping("bandDetailmyMgr")
	public String bandDetailmyMgr() {
		return "band/bandDetailmyMgr";
	}

	/*
	 * @RequestMapping("bandDetailjoin") public String bandDetailjoin() { return
	 * "band/bandDetailjoin"; }
	 */

}
