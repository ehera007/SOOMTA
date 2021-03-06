package Model;

import java.util.Date;

public class MemberDTO {
	String memId;
	String memPw;
	String memName;
	String memPhone;
	Date memSince;
	String memGender;
	Date memDob;
	String memEmail;
	String memArea;
	String memEmailCk;
	
	StartEndPageDTO startEndPageDTO;
	
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getMemId() {
		return memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public String getMemName() {
		return memName;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public Date getMemSince() {
		return memSince;
	}
	public String getMemGender() {
		return memGender;
	}
	public Date getMemDob() {
		return memDob;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public String getMemArea() {
		return memArea;
	}
	public String getMemEmailCk() {
		return memEmailCk;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	public void setMemSince(Date memSince) {
		this.memSince = memSince;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public void setMemDob(Date memDob) {
		this.memDob = memDob;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public void setMemArea(String memArea) {
		this.memArea = memArea;
	}
	public void setMemEmailCk(String memEmailCk) {
		this.memEmailCk = memEmailCk;
	}
	
	
}
