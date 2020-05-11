package com.aea.onlineassessmentsystem.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Test {
	
	@Id
	@GeneratedValue
	private int id;
	private String testDate;
	private String assessment;
	private int testMarks;
	@ManyToOne(fetch=FetchType.LAZY)
	@JsonIgnore
	private User user;
	private int totalMarks;
	private String result;
	
	public Test() {
		super();
	}

	public Test(String testDate, String assessment, int testMarks, User user, int totalMarks, String result) {
		super();
		this.testDate = testDate;
		this.assessment = assessment;
		this.testMarks = testMarks;
		this.user = user;
		this.totalMarks = totalMarks;
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public String getTestDate() {
		return testDate;
	}

	public String getAssessment() {
		return assessment;
	}

	public int getTestMarks() {
		return testMarks;
	}

	public User getUser() {
		return user;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public String getResult() {
		return result;
	}
	

}
