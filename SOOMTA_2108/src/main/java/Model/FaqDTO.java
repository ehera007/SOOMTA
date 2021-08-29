package Model;

import java.util.Date;

public class FaqDTO {
	Long faqNo;
	String empId;
	String faqCategory;
	String faqContents;
	String faqImg;
	String faqTitle;
	Date faqDate;
	String faqCtgrS;
	String faqHit;
	
	
	public String getFaqHit() {
		return faqHit;
	}
	public void setFaqHit(String faqHit) {
		this.faqHit = faqHit;
	}
	public Long getFaqNo() {
		return faqNo;
	}
	public String getEmpId() {
		return empId;
	}
	public String getFaqCategory() {
		return faqCategory;
	}
	public String getFaqContents() {
		return faqContents;
	}
	public String getFaqImg() {
		return faqImg;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public Date getFaqDate() {
		return faqDate;
	}
	public String getFaqCtgrS() {
		return faqCtgrS;
	}
	public void setFaqNo(Long faqNo) {
		this.faqNo = faqNo;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}
	public void setFaqContents(String faqContents) {
		this.faqContents = faqContents;
	}
	public void setFaqImg(String faqImg) {
		this.faqImg = faqImg;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
	}
	public void setFaqCtgrS(String faqCtgrS) {
		this.faqCtgrS = faqCtgrS;
	}
	

}
