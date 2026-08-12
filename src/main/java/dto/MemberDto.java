package dto;

public class MemberDto {
	private String id,name,password,password_length,email,nickname,grade,reg_date,update_date,exit_date;

	public MemberDto(String id, String name, String password, String password_length, String email, String nickname,
			String grade, String reg_date, String update_date, String exit_date) {
		
		this.id = id;
		this.name = name;
		this.password = password;
		this.password_length = password_length;
		this.email = email;
		this.nickname = nickname;
		this.grade = grade;
		this.reg_date = reg_date;
		this.update_date = update_date;
		this.exit_date = exit_date;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getPassword_length() {
		return password_length;
	}

	public String getEmail() {
		return email;
	}

	public String getNickname() {
		return nickname;
	}

	public String getGrade() {
		return grade;
	}

	public String getReg_date() {
		return reg_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public String getExit_date() {
		return exit_date;
	}
	
	
	
	
	
}
