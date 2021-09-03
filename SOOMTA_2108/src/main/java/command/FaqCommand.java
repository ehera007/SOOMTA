package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class FaqCommand {
	String faqNo;
	String empId;
	String faqCategory;
	String faqContents;
	MultipartFile []  faqImg;
	String faqTitle;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date faqDate;
	String faqCtgrS;
	String fileDel1;
	
	
	
	public String getFileDel1() {
		return fileDel1;
	}
	public void setFileDel1(String fileDel1) {
		this.fileDel1 = fileDel1;
	}
	public String getFaqNo() {
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
	public String getFaqTitle() {
		return faqTitle;
	}
	public Date getFaqDate() {
		return faqDate;
	}
	public String getFaqCtgrS() {
		return faqCtgrS;
	}
	public void setFaqNo(String faqNo) {
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
