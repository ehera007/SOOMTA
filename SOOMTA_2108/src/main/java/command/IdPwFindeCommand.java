package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class IdPwFindeCommand {
	String type;
	String name;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date birth;
	String ph;
	String id;
	String email;
	
	
	public String getType() {
		return type;
	}
	public String getName() {
		return name;
	}
	public Date getBirth() {
		return birth;
	}
	public String getPh() {
		return ph;
	}
	public String getId() {
		return id;
	}
	public String getEmail() {
		return email;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
