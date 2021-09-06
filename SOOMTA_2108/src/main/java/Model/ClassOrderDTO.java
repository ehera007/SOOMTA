package Model;

import java.util.Date;

public class ClassOrderDTO {
	String classNo;//강의번호
	String className;//강의이름
	String classCategoryL;
	String classCategoryS;//강의분류
	Date classStart;
	Date classEnd;//강의기간
	String classTotal;//수강생
	String classState;//상태
	String classSatisfy;//만족도
	String reviewContents;//후기
	String PurchaseNo; //구매번호
	Date purchaseDate; //구매일시
	String tutorId;
	
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassCategoryL() {
		return classCategoryL;
	}
	public void setClassCategoryL(String classCategoryL) {
		this.classCategoryL = classCategoryL;
	}
	public String getClassCategoryS() {
		return classCategoryS;
	}
	public void setClassCategoryS(String classCategoryS) {
		this.classCategoryS = classCategoryS;
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
	public String getClassTotal() {
		return classTotal;
	}
	public void setClassTotal(String classTotal) {
		this.classTotal = classTotal;
	}
	public String getClassState() {
		return classState;
	}
	public void setClassState(String classState) {
		this.classState = classState;
	}
	public String getClassSatisfy() {
		return classSatisfy;
	}
	public void setClassSatisfy(String classSatisfy) {
		this.classSatisfy = classSatisfy;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public String getPurchaseNo() {
		return PurchaseNo;
	}
	public void setPurchaseNo(String purchaseNo) {
		PurchaseNo = purchaseNo;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	
}
