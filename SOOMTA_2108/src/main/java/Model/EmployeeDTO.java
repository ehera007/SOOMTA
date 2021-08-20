package Model;

import java.util.Date;

public class EmployeeDTO {
	String empId;
	String empPw;
	String empName;
	String empJob;
	Date hireDate;
	String empEmail;
	String empPhone;
	String empAddr;
	
	public String getEmpId() {
		return empId;
	}
	public String getEmpPw() {
		return empPw;
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
	public String getEmpEmail() {
		return empEmail;
	}
	public String getEmpPhone() {
		return empPhone;
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
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public void setEmpJob(String empJob) {
		this.empJob = empJob;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	public void setEmpAddr(String empAddr) {
		this.empAddr = empAddr;
	}
	
}
