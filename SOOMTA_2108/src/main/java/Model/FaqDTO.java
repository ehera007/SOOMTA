package Model;

public class FaqDTO {
	Long faqNo;
	String empId;
	String faqCategory;
	String faqContents;
	String faqImg;

	
	public Long getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(Long faqNo) {
		this.faqNo = faqNo;
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
	
	

}
