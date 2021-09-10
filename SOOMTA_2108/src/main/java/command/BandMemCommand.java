package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BandMemCommand {
	String bandPublic;
	String memId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date memDob;
	String memGender;
	String bandJoinIntro;
	Long bandNo;
	

	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Long getBandNo() {
		return bandNo;
	}
	public void setBandNo(Long bandNo) {
		this.bandNo = bandNo;
	}
	public String getBandPublic() {
		return bandPublic;
	}

	public Date getMemDob() {
		return memDob;
	}
	public String getMemGender() {
		return memGender;
	}
	
	public String getBandJoinIntro() {
		return bandJoinIntro;
	}
	
	public void setBandPublic(String bandPublic) {
		this.bandPublic = bandPublic;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public void setMemDob(Date memDob) {
		this.memDob = memDob;
	}
	public void setBandJoinIntro(String bandJoinIntro) {
		this.bandJoinIntro= bandJoinIntro;
	}
	
}
