package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

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
	Date tutorSince;
	String tutorCertification;
	String tutorCareer;
	String tutorFinalEdu;
	String tutorRespond;
	String tutorArea;
	MultipartFile tutorImage;
	String tutorIntroduce;
	String tutorLikearea;
	String tutorEmailOk;
	String delFile;

	public String getDelFile() {
		return delFile;
	}
	public void setDelFile(String delFile) {
		this.delFile = delFile;
	}
	String oldPw;
	public String getOldPw() {
		return oldPw;
	}
	public void setOldPw(String oldPw) {
		this.oldPw = oldPw;
	}
	public boolean isTutorPwConEq() {
		return tutorPw.equals(tutorPwCon);
	}
	
	public String getTutorEmailOk() {
		return tutorEmailOk;
	}
	public void setTutorEmailOk(String tutorEmailOk) {
		this.tutorEmailOk = tutorEmailOk;
	}
	
	public boolean isTutorEmailConEq() {
		return tutorEmail.equals(tutorEmailCon);
	}
	public Date getTutorSince() {
		return tutorSince;
	}
	public void setTutorSince(Date tutorSince) {
		this.tutorSince = tutorSince;
	}
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
	public MultipartFile getTutorImage() {
		return tutorImage;
	}
	public void setTutorImage(MultipartFile tutorImage) {
		this.tutorImage = tutorImage;
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

	public void setTutorIntroduce(String tutorIntroduce) {
		this.tutorIntroduce = tutorIntroduce;
	}
	public void setTutorLikearea(String tutorLikearea) {
		this.tutorLikearea = tutorLikearea;
	}
}
