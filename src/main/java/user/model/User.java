package user.model;

public class User {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String password;
	private String userName;
	
	public User(int id, String firstName, String lastName, String email, String phone, String password,String userName) {

		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.userName = userName;
	}

	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getPassword() {
		return password;
	}

	public String getUserName() {
		return userName;
	}
	
	
	
	
}
