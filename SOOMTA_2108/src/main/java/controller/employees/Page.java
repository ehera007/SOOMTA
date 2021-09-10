package controller.employees;

import org.springframework.ui.Model;

public class Page {
	public void pageAction(int count , int limit , int page, int limitPage, Model model, String pageUrl) {
		System.out.println("Page.java"+count+"/2:"+limit+page+"/3:"+limitPage+"/4:"+model+"/5:"+pageUrl);
		int maxPage = (int)((double) count / limit + 0.99);
		int startPage = (int)((double) page / limitPage + 0.99); 
		int endPage = startPage + limitPage - 1;
		
		if(endPage > maxPage)endPage = maxPage;
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("page", page);
		model.addAttribute("pageUrl", pageUrl);
	}
}
