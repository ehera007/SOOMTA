package command;

import Model.StartEndPageDTO;

public class BandCtgCommand {
	String[] bandGender;
	String[] bandWay;
	String bandCategoryS;
	StartEndPageDTO startEndPageDTO;
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String[] getBandGender() {
		return bandGender;
	}
	public void setBandGender(String[] bandGender) {
		this.bandGender = bandGender;
	}
	public String[] getBandWay() {
		return bandWay;
	}
	public void setBandWay(String[] bandWay) {
		this.bandWay = bandWay;
	}
	public String getBandCategoryS() {
		return bandCategoryS;
	}
	public void setBandCategoryS(String bandCategoryS) {
		this.bandCategoryS = bandCategoryS;
	}
}
