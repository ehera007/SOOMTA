package Model;

import java.util.Date;


public class ReviewDTO {
	String classSatisfy; //클래스 만족도
	String tutorSatisfy; //튜터 만족도
	Date reviewRegiDay; //리뷰등록일
	String reviewContents; //리뷰내용
    String purchaseNo; //구매번호
    String classNo; //클래스번호
    String tutorId; //튜터아이디
    String memId;//회원아이디
    String className;
    Date classStart;
	Date classEnd;
    
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
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
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getClassSatisfy() {
		return classSatisfy;
	}
	public void setClassSatisfy(String classSatisfy) {
		this.classSatisfy = classSatisfy;
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
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public String getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(String purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
    
}
