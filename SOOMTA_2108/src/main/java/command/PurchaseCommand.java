package command;

import java.util.Date;

public class PurchaseCommand {
	String purchaseNo;//구매번호
	String classNo;//클래스 번호
	String memId;//회원 아이디
	String tutorId;//튜터 아이디
    Date purchaseDate;//구매일시
    String purchaseMethod;//결제방법
    String purchaseInformation;//결제정보
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
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public String getPurchaseMethod() {
		return purchaseMethod;
	}
	public void setPurchaseMethod(String purchaseMethod) {
		this.purchaseMethod = purchaseMethod;
	}
	public String getPurchaseInformation() {
		return purchaseInformation;
	}
	public void setPurchaseInformation(String purchaseInformation) {
		this.purchaseInformation = purchaseInformation;
	}
}
