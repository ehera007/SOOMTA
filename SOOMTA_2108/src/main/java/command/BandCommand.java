package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class BandCommand {
	Long bandNo;
	String bandName;
	String bandCategoryL;
	String bandCategoryS;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date bandRegiDay;
	String bandIntroduce;
	String bandGender;
	String bandWay;
	Long bandTotal;
	String bandPublic; 
	String bandAge;
	MultipartFile [] bandImg;

	public Long getBandNo() {
		return bandNo;
	}
	public void setBandNo(Long bandNo) {
		this.bandNo = bandNo;
	}
	public String getBandName() {
		return bandName;
	}
	public void setBandName(String bandName) {
		this.bandName = bandName;
	}
	public String getBandCategoryL() {
		return bandCategoryL;
	}
	public void setBandCategoryL(String bandCategoryL) {
		this.bandCategoryL = bandCategoryL;
	}
	public String getBandCategoryS() {
		return bandCategoryS;
	}
	public void setBandCategoryS(String bandCategoryS) {
		this.bandCategoryS = bandCategoryS;
	}
	public Date getBandRegiDay() {
		return bandRegiDay;
	}
	public void setBandRegiDay(Date bandRegiDay) {
		this.bandRegiDay = bandRegiDay;
	}
	public String getBandIntroduce() {
		return bandIntroduce;
	}
	public void setBandIntroduce(String bandIntroduce) {
		this.bandIntroduce = bandIntroduce;
	}
	public String getBandGender() {
		return bandGender;
	}
	public void setBandGender(String bandGender) {
		this.bandGender = bandGender;
	}
	public String getBandWay() {
		return bandWay;
	}
	public void setBandWay(String bandWay) {
		this.bandWay = bandWay;
	}
	public Long getBandTotal() {
		return bandTotal;
	}
	public void setBandTotal(Long bandTotal) {
		this.bandTotal = bandTotal;
	}
	public String getBandPublic() {
		return bandPublic;
	}
	public void setBandPublic(String bandPublic) {
		this.bandPublic = bandPublic;
	}
	public String getBandAge() {
		return bandAge;
	}
	public void setBandAge(String bandAge) {
		this.bandAge = bandAge;
	}
	public MultipartFile[] getBandImg() {
		return bandImg;
	}
	public void setBandImg(MultipartFile[] bandImg) {
		this.bandImg = bandImg;
	}
	
	
	
}
