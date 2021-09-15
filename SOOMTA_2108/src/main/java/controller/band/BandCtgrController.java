package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.main.BandSearchService;

@Controller
@RequestMapping("band")
public class BandCtgrController {
	@Autowired
	BandSearchService bandSearchService;
	@RequestMapping("mainCtgr")
	public String mainCtgr() {
		return "band/bandMainCtgr";
	}

	@RequestMapping("education")
	public String education() {
		return "band/educationCtgr";
	}
	@RequestMapping("certificate")
	public String certificate() {
		return "band/certificateCtgr";
	}
	@RequestMapping("art")
	public String art() {
		return "band/artCtgr";
	}
	@RequestMapping("retack")
	public String retack() {
		return "band/retackCtgr";
	}
	@RequestMapping("employeement")
	public String employeement() {
		return "band/employeementCtgr";
	}
	@RequestMapping("bandList")
	public String ect() {
		return "band/bandList";
	}
	@RequestMapping("bandDetailPage")
	public String bandsDetailPage() {
		return "band/bandDetailPage";
	}
	@RequestMapping(value="bandSearch", method=RequestMethod.POST)
	public String bandSearch(Model model, @RequestParam(value="keyWord") String keyWord) {
		bandSearchService.bandSearch(model, keyWord);
		return "band/bandSearch";
	}
	
	
	
}
