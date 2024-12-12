package question.model;

import java.sql.Date;

public class Questions {

	private int id;
	private String name;
	private String phone;
	private String email;
	private String question;
	private String uname;
	private Date date;
	
	public Questions(int id, String name, String phone, String email, String question, String uname, Date date) {

		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.question = question;
		this.uname = uname;
		this.date = date;
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		
		return name;
	}
	
	public String getPhone() {
		
		return phone;
	}
	
	public String getEmail() {
		
		return email;
	}

	public String getQuestion() {
		return question;
	}
	
	public String getUname() {
		
		return uname;
	}
	
	public Date getDate() {
		
		return date;
	}
}
