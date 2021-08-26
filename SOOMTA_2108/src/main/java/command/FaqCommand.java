package command;

import org.springframework.web.multipart.MultipartFile;

public class FaqCommand {
	Long faqNo;
	String empId;
	String faqCategory;
	String faqContents;
	MultipartFile []  faqImg;
	
	
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
	public MultipartFile[] getFaqImg() {
		return faqImg;
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
	public void setFaqImg(MultipartFile[] faqImg) {
		this.faqImg = faqImg;
	}
}
