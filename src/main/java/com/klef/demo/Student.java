package com.klef.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student 
{
	//id,name,gender,organization,email,password,profilePicPath
	//id,name,designation,profilePicPath
	@Id
	@Column(name="std_id")
	private int id;
	@Column(name="std_name")
	private String name;
	@Column(name="std_gender")
	private String gender;
	@Column(name="std_organization")
	private String organization;
	@Column(name="std_email")
	private String email;
	@Column(name="std_password")
	private String password;
	
	@Column(name="rtpercent")
	private double rtpercent;
	@Column(name="ripercent")
	private double ripercent;
	@Column(name="rdpercent")
	private double rdpercent; 
	@Column(name="description")
	private String description;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column(name="skill1")
	private String skill1;
	@Column(name="skill2")
	private String skill2;
	@Column(name="skill3")
	private String skill3; 
	
	@Column(name="branch")
	private String branch;
	
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	@Column(name="resume")
	@Lob
	private byte[] resume;
	public String getSkill1() {
		return skill1;
	}
	public void setSkill1(String skill1) {
		this.skill1 = skill1;
	}
	public String getSkill2() {
		return skill2;
	}
	public void setSkill2(String skill2) {
		this.skill2 = skill2;
	}
	public String getSkill3() {
		return skill3;
	}
	public void setSkill3(String skill3) {
		this.skill3 = skill3;
	}
	
	
	public double getRtpercent() {
		return rtpercent;
	}
	public void setRtpercent(double rtpercent) {
		this.rtpercent = rtpercent;
	}
	public double getRipercent() {
		return ripercent;
	}
	public void setRipercent(double ripercent) {
		this.ripercent = ripercent;
	}
	public double getRdpercent() {
		return rdpercent;
	}
	public void setRdpercent(double rdpercent) {
		this.rdpercent = rdpercent;
	}
	
	public byte[] getResume() {
		return resume;
	}
	public void setResume(byte[] resume) {
		this.resume = resume;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Object getFileType() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
