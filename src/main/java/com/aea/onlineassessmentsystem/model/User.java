package com.aea.onlineassessmentsystem.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
public class User {
	@Id
	private String emailId;
	private String firstName;
	private String lastName;
	private String password;
	private String userType;
	
	@OneToMany(mappedBy="user")
	private List<Test> tests;
	
	
	
	public User() {
		super();
	}

	public User(String emailId, String firstName, String lastName, String password, String userType) {
		super();
		this.emailId = emailId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.userType = userType;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmailId() {
		return emailId;
	}

	public String getPassword() {
		return password;
	}

	public String getUserType() {
		return userType;
	}

}
