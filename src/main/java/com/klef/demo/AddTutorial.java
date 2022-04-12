package com.klef.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tutorial_table")
public class AddTutorial 
{
	@Id
	@Column(name="tutid")
	private int tutid;
	@Column(name="conceptname")
	private String conceptname;
	@Column(name="videolink")
	private String videolink;
	@Column(name="quetionslink")
	private String quetionslink;
	@Column(name="description")
	private String description;
	
	
	public int getTutid() {
		return tutid;
	}
	public void setTutid(int tutid) {
		this.tutid = tutid;
	}
	public String getConceptname() {
		return conceptname;
	}
	public void setConceptname(String conceptname) {
		this.conceptname = conceptname;
	}
	public String getVideolink() {
		return videolink;
	}
	public void setVideolink(String videolink) {
		this.videolink = videolink;
	}
	public String getQuetionslink() {
		return quetionslink;
	}
	public void setQuetionslink(String quetionslink) {
		this.quetionslink = quetionslink;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
