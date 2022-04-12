package com.klef.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="recruitment_table")
public class Recruitment 
{
	@Id
	@Column(name="recid")
	private int recid;
	@Column(name="companyid")
	private String companyid;
	@Column(name="jobtitle")
	private String jobtitle;
	@Column(name="category")
	private String category;
	@Column(name="duration")
	private String duration;
	@Column(name="stiphend")
	private double stiphend;
	@Column(name="jobseekerid")
	private int jobseekerid;
	@Column(name="requirements")
	private String requirements;
	@Column(name="description")
	private String description ;
	@Column(name="status")
	private String status;
	@Column(name="rtpercent")
	private double rtpercent;
	@Column(name="ripercent")
	private double ripercent;
	@Column(name="rdpercent")
	private double rdpercent;
	
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
	
	public String getRequirements() {
		return requirements;
	}
	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getRecid() {
		return recid;
	}
	public void setRecid(int recid) {
		this.recid = recid;
	}
	public String getCompanyid() {
		return companyid;
	}
	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public double getStiphend() {
		return stiphend;
	}
	public void setStiphend(double stiphend) {
		this.stiphend = stiphend;
	}
	public int getJobseekerid() {
		return jobseekerid;
	}
	public void setJobseekerid(int jobseekerid) {
		this.jobseekerid = jobseekerid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
