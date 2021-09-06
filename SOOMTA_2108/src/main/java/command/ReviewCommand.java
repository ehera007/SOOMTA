package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReviewCommand {
	String className;
	String classNo; //클래스번호
	String classSatisfy;//클래스 만족도
	String purchaseNo; //구매번호
	String tutorSatisfy; //튜터 만족도
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date reviewRegiDay; //리뷰등록일
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date classStart;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date classEnd;
	String reviewContents; //리뷰내용
	String tutorId;
	
	
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getClassSatisfy() {
		return classSatisfy;
	}
	public void setClassSatisfy(String classSatisfy) {
		this.classSatisfy = classSatisfy;
	}
	public String getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(String purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public String getTutorSatisfy() {
		return tutorSatisfy;
	}
	public void setTutorSatisfy(String tutorSatisfy) {
		this.tutorSatisfy = tutorSatisfy;
	}
	public Date getReviewRegiDay() {
		return reviewRegiDay;
	}
	public void setReviewRegiDay(Date reviewRegiDay) {
		this.reviewRegiDay = reviewRegiDay;
	}
	public Date getClassStart() {
		return classStart;
	}
	public void setClassStart(Date classStart) {
		this.classStart = classStart;
	}
	public Date getClassEnd() {
		return classEnd;
	}
	public void setClassEnd(Date classEnd) {
		this.classEnd = classEnd;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	
	
}
