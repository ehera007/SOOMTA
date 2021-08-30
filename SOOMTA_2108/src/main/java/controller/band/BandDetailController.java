package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
 
	@RequestMapping("bandDetail")
	public String bandDetail() {
		return "band/bandDetail";
	}

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

	@RequestMapping("bandJoin")
	public String bandJoin() {
		return "band/bandJoin";
	}

	@RequestMapping("bandDetailnotok")
	public String bandDetailnotok() {
		return "band/bandDetailnotok";
	}

	@RequestMapping("bandDetailjoin")
	public String bandDetailjoin() {
		return "band/bandDetailjoin";
	}

	// bandDetailjoinOk
	@RequestMapping("bandDetailjoinOk")
	public String bandDetailjoinOk() {
		return "band/bandDetailjoinOk";
	}
	//bandDetailcontentjoin
	@RequestMapping("bandDetailcontentjoin")
	public String bandDetailcontentjoin() {
		return "band/bandDetailcontentjoin";
	}
	
	//bandDetailHomeMgr
	@RequestMapping("bandDetailHomeMgr")
	public String bandDetailHomeMgr() {
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
	//강사상세 지우기!
	@RequestMapping("tutorDetail")
	public String tutorDetail() {
		return "band/tutorDetail";
	}
}
