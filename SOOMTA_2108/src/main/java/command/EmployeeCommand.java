package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class EmployeeCommand {
	String empId;
	String empPw;
	String empPwCon;
	String empName;
	String empJob;
	@DateTimeFormat(pattern = "yyyy-MM-dd") //날짜 형식 지정
	Date hireDate;
	String empPhone;
	String empEmail;
	String empAddr;
	String oldPw;
	
	String rowCk;
	
	
	
	public String getRowCk() {
		return rowCk;
	}
	public void setRowCk(String rowCk) {
		this.rowCk = rowCk;
	}
	public String getOldPw() {
		return oldPw;
	}
	public void setOldPw(String oldPw) {
		this.oldPw = oldPw;
	}
	public boolean isEmpPwConEq() {
		return empPw.equals(empPwCon);
	}
	public String getEmpId() {
		return empId;
	}
	public String getEmpPw() {
		return empPw;
	}
	public String getEmpPwCon() {
		return empPwCon;
	}
	public String getEmpName() {
		return empName;
	}
	public String getEmpJob() {
		return empJob;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public String getEmpPhone() {
		return empPhone;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public String getEmpAddr() {
		return empAddr;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public void setEmpPw(String empPw) {
		this.empPw = empPw;
	}
	public void setEmpPwCon(String empPwCon) {
		this.empPwCon = empPwCon;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public void setEmpJob(String empJob) {
		this.empJob = empJob;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public void setEmpAddr(String empAddr) {
		this.empAddr = empAddr;
	}
	

}
