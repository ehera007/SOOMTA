package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TutorCommand {
	String tutorId;
	String tutorPw;
	String tutorPwCon;
	String tutorName;  
	String tutorPhone;
	String tutorGender; 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date tutorDob;
	String tutorEmail;
	String tutorEmailCon;
	String tutorEmailCk;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date tutor_Since;
	String tutorCertification;
	String tutorCareer;
	String tutorFinalEdu;
	String tutorRespond;
	String tutorArea;
	String tutorImage;
	String tutorIntroduce;
	String tutorLikearea;
	
	
	public String getTutorEmailCon() {
		return tutorEmailCon;
	}
	public String getTutorEmailCk() {
		return tutorEmailCk;
	}
	public void setTutorEmailCon(String tutorEmailCon) {
		this.tutorEmailCon = tutorEmailCon;
	}
	public void setTutorEmailCk(String tutorEmailCk) {
		this.tutorEmailCk = tutorEmailCk;
	}
	public String getTutorPwCon() {
		return tutorPwCon;
	}
	public void setTutorPwCon(String tutorPwCon) {
		this.tutorPwCon = tutorPwCon;
	}
	public String getTutorId() {
		return tutorId;
	}
	public String getTutorPw() {
		return tutorPw;
	}
	public String getTutorName() {
		return tutorName;
	}
	public String getTutorPhone() {
		return tutorPhone;
	}
	public String getTutorGender() {
		return tutorGender;
	}
	public Date getTutorDob() {
		return tutorDob;
	}
	public String getTutorEmail() {
		return tutorEmail;
	}
	public Date getTutor_Since() {
		return tutor_Since;
	}
	public String getTutorCertification() {
		return tutorCertification;
	}
	public String getTutorCareer() {
		return tutorCareer;
	}
	public String getTutorFinalEdu() {
		return tutorFinalEdu;
	}
	public String getTutorRespond() {
		return tutorRespond;
	}
	public String getTutorArea() {
		return tutorArea;
	}
	public String getTutorImage() {
		return tutorImage;
	}
	public String getTutorIntroduce() {
		return tutorIntroduce;
	}
	public String getTutorLikearea() {
		return tutorLikearea;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public void setTutorPw(String tutorPw) {
		this.tutorPw = tutorPw;
	}
	public void setTutorName(String tutorName) {
		this.tutorName = tutorName;
	}
	public void setTutorPhone(String tutorPhone) {
		this.tutorPhone = tutorPhone;
	}
	public void setTutorGender(String tutorGender) {
		this.tutorGender = tutorGender;
	}
	public void setTutorDob(Date tutorDob) {
		this.tutorDob = tutorDob;
	}
	public void setTutorEmail(String tutorEmail) {
		this.tutorEmail = tutorEmail;
	}
	public void setTutor_Since(Date tutor_Since) {
		this.tutor_Since = tutor_Since;
	}
	public void setTutorCertification(String tutorCertification) {
		this.tutorCertification = tutorCertification;
	}
	public void setTutorCareer(String tutorCareer) {
		this.tutorCareer = tutorCareer;
	}
	public void setTutorFinalEdu(String tutorFinalEdu) {
		this.tutorFinalEdu = tutorFinalEdu;
	}
	public void setTutorRespond(String tutorRespond) {
		this.tutorRespond = tutorRespond;
	}
	public void setTutorArea(String tutorArea) {
		this.tutorArea = tutorArea;
	}
	public void setTutorImage(String tutorImage) {
		this.tutorImage = tutorImage;
	}
	public void setTutorIntroduce(String tutorIntroduce) {
		this.tutorIntroduce = tutorIntroduce;
	}
	public void setTutorLikearea(String tutorLikearea) {
		this.tutorLikearea = tutorLikearea;
	}
}
