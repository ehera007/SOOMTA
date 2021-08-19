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
}
