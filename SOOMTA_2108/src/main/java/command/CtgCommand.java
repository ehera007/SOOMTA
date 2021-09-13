package command;

import Model.StartEndPageDTO;

public class CtgCommand {
	String [] tutorGender;
	String [] memGender;
	String [] classWay;
	String [] classCity;
	String classCategoryS;
	
	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	
	public String[] getTutorGender() {
		return tutorGender;
	}
	public void setTutorGender(String[] tutorGender) {
		this.tutorGender = tutorGender;
	}
	public String[] getMemGender() {
		return memGender;
	}
	public void setMemGender(String[] memGender) {
		this.memGender = memGender;
	}
	public String[] getClassWay() {
		return classWay;
	}
	public void setClassWay(String[] classWay) {
		this.classWay = classWay;
	}
	public String[] getClassCity() {
		return classCity;
	}
	public void setClassCity(String[] classCity) {
		this.classCity = classCity;
	}
	public String getClassCategoryS() {
		return classCategoryS;
	}
	public void setClassCategoryS(String classCategoryS) {
		this.classCategoryS = classCategoryS;
	}
}
