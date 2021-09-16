package controller.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandContentCommand;
import command.BandMemCommand;
import command.MemberCommand;
import service.band.BandContentAllService;
import service.band.BandContentDetailService;
import service.band.BandContentJoinService;
import service.band.BandDetailJoinService;
import service.band.BandDetailService;
import service.band.BandDetailmemMgrService;
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
	
	@RequestMapping("bandMemIntroduce")
	public String bandMemIntroduce() {
		return "band/bandMemIntroduce";
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
	@Autowired
	BandContentJoinService bandContentJoinService;
	@RequestMapping("bandDetailmy")
	public String bandDetailmy(BandContentCommand bandContentCommand, HttpSession session, Model model) {
		bandContentJoinService.contentJoin(bandContentCommand, session);
		return "redirect:bandDetailmyMgr";
	}

	@RequestMapping("bandDetailall")
	public String bandDetailmember() {
		return "band/bandDetailall";
	}
	
	@Autowired
	BandContentDetailService bandContentDetailService;
	@RequestMapping("bandDetailContent")
	public String bandDetailContent(
			@RequestParam(value="noticeNo") String noticeNo, Model model) {
		bandContentDetailService.bandDetail(noticeNo, model);
		return "band/bandDetailContent";
	}
	
	@RequestMapping("bandDetailContentDel")
	public String bandDetailContentDel(
			@RequestParam(value="noticeNo") String noticeNo,
			@RequestParam(value="bandNo") String bandNo) {
		bandContentDetailService.noticeDel(noticeNo);
		return "redirect:bandDetailmyMgr?bandNo="+ bandNo;
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
	@RequestMapping("bandDetailContentjoin")
	public String bandDetailContentjoin(@RequestParam(value = "bandNo") Long bandNo, Model model) {
		model.addAttribute("bandNo", bandNo);
		return "band/bandDetailContentjoin";
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
	public String bandDetailcontentSujung(@RequestParam(value="noticeNo") String noticeNo, Model model) {
		bandContentDetailService.bandDetail(noticeNo, model);
		return "band/bandDetailcontentSujung";
	}
	
	@RequestMapping(value="bandDetailContentSujungOk")
	public String bandDetailContentSujungOk(BandContentCommand bandContentCommand) {
		bandContentDetailService.bandNoticeUpdate(bandContentCommand);
		return "redirect:bandDetailContent?noticeNo=" + bandContentCommand.getNoticeNo();
	}
	
	@Autowired
	BandContentAllService bandContentAllService;
	@RequestMapping("bandDetailallMgr")
	public String bandDetailallMgr(Model model,
			@RequestParam(value = "bandNo") Long bandNo) {
		bandContentAllService.selectAll(model, bandNo);
		return "band/bandDetailallMgr";
	}

	@Autowired
	BandDetailmemMgrService bandDetailmemMgrService;
	@RequestMapping("bandDetailmemMgr")
	public String bandDetailmemMgr(
			@RequestParam(value="bandNo") String bandNo, Model model) {
		bandDetailmemMgrService.memMgr(bandNo, model);
		model.addAttribute("bandNo", bandNo);
		return "band/bandDetailmemMgr";
	}

	@RequestMapping("bandDetailmyMgr")
	public String bandDetailmyMgr(HttpSession session, Model model) {
		bandContentAllService.mySelect(session, model);
		return "band/bandDetailmyMgr";
	}
	
	@RequestMapping("bandAllow")
	public String bandAllow(
			@RequestParam(value="memId") String memId,
			@RequestParam(value="bandNo") String bandNo) {
		bandDetailmemMgrService.bandAllow(memId);
		return "redirect:bandDetailmemMgr?bandNo="+bandNo;
	}
	
	@RequestMapping("bandMemDel")
	public String bandMemDel(
			@RequestParam(value="memId") String memId,
			@RequestParam(value="bandNo") String bandNo) {
		bandDetailmemMgrService.bandMemDel(memId);
		return "redirect:bandDetailmemMgr?bandNo="+bandNo;
	}
	
	/*
	 * @RequestMapping("bandDetailjoin") public String bandDetailjoin() { return
	 * "band/bandDetailjoin"; }
	 */


}

