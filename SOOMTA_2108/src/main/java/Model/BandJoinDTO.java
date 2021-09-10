package Model;

public class BandJoinDTO {
	Long bandNo;
	String memId;
	String bandJoinIntro;
	String bandAllow;
	public String getBandAllow() {
		return bandAllow;
	}
	public void setBandAllow(String bandAllow) {
		this.bandAllow = bandAllow;
	}
	public String getMemId() {
		return memId;
	}
	public Long getBandNo() {
		return bandNo;
	}
	public String getBandJoinIntro() {
		return bandJoinIntro;
	}
	
	public void setMemId (String memId) {
		this.memId =memId ;
	}

	public void setBandNo(Long bandNo) {
		this.bandNo = bandNo;
	}
	
	public void setBandJoinIntro(String bandJoinIntro) {
		this.bandJoinIntro= bandJoinIntro;
	}
}