package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberCommand {
	String memId;
	String memPw;
	String memPwCon;
	String memName;
	String memPhone;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date memSince;
	String memGender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date memDob;
	String memEmail;
	String memArea;
	String memEmailCk;
	
	
	public boolean isMemPwConEq() {
		return memPw.equals(memPwCon);
	}
	public String getMemPwCon() {
		return memPwCon;
	}
	public void setMemPwCon(String memPwCon) {
		this.memPwCon = memPwCon;
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
