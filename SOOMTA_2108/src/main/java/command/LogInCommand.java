package command;

public class LogInCommand {
	private String userId;
	private String userPw;
	
	private Boolean idStore; //id저장
	private Boolean autoLogin; //자동로그인
	
	
	
	public Boolean getIdStore() {
		return idStore;
	}
	public Boolean getAutoLogin() {
		return autoLogin;
	}
	public void setIdStore(Boolean idStore) {
		this.idStore = idStore;
	}
	public void setAutoLogin(Boolean autoLogin) {
		this.autoLogin = autoLogin;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
}
