package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class ClassCommand {
	String classNo;
	String tutorId;
	String className;
	MultipartFile [] classImg;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date classRegiday;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date classStart;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date classEnd;
	String classCategoryL;
	String classCategoryS;
	String classPrice;
	String classGender;
	String classWay;
	String classTotal;
	String classState;
	String classIntroduce;
	String fileDel;
	String classArea;
	String classCity;
	
	public String getClassCity() {
		return classCity;
	}
	public void setClassCity(String classCity) {
		this.classCity = classCity;
	}
	public String getClassArea() {
		return classArea;
	}
	public void setClassArea(String classArea) {
		this.classArea = classArea;
	}
	public String getFileDel() {
		return fileDel;
	}
	public void setFileDel(String fileDel) {
		this.fileDel = fileDel;
	}
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public Date getClassRegiday() {
		return classRegiday;
	}
	public void setClassRegiday(Date classRegiday) {
		this.classRegiday = classRegiday;
	}
	public String getClassState() {
		return classState;
	}
	public void setClassState(String classState) {
		this.classState = classState;
	}
	public String getClassIntroduce() {
		return classIntroduce;
	}
	public void setClassIntroduce(String classIntroduce) {
		this.classIntroduce = classIntroduce;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public MultipartFile[] getClassImg() {
		return classImg;
	}
	public void setClassImg(MultipartFile[] classImg) {
		this.classImg = classImg;
	}
	public Date getClassStart() {
		return classStart;
	}
	public void setClassStart(Date classStart) {
		this.classStart = classStart;
	}
	public Date getClassEnd() {
		return classEnd;
	}
	public void setClassEnd(Date classEnd) {
		this.classEnd = classEnd;
	}
	public String getClassCategoryL() {
		return classCategoryL;
	}
	public void setClassCategoryL(String classCategoryL) {
		this.classCategoryL = classCategoryL;
	}
	public String getClassCategoryS() {
		return classCategoryS;
	}
	public void setClassCategoryS(String classCategoryS) {
		this.classCategoryS = classCategoryS;
	}
	public String getClassPrice() {
		return classPrice;
	}
	public void setClassPrice(String classPrice) {
		this.classPrice = classPrice;
	}
	public String getClassGender() {
		return classGender;
	}
	public void setClassGender(String classGender) {
		this.classGender = classGender;
	}
	public String getClassWay() {
		return classWay;
	}
	public void setClassWay(String classWay) {
		this.classWay = classWay;
	}
	public String getClassTotal() {
		return classTotal;
	}
	public void setClassTotal(String classTotal) {
		this.classTotal = classTotal;
	}
}
