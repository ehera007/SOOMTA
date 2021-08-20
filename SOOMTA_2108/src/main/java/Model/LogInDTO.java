package Model;

public class LogInDTO {
	String userId;
	String userPw;
	String userEmail;
	String grade;
	
	public String getUserId() {
		return userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public String getGrade() {
		return grade;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
