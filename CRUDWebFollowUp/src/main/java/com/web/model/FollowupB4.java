package com.web.model;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
//import persistance.entities.Subjects.Subject;
//import persistance.entities.Users.User;

@Entity
public class FollowupB4 implements Serializable{
	/*User user;
	Subject subject;
	Header header;*/
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	int b4;
	@Column
	float memory;
	@Column
	float orient;
	@Column
	float judgment;
	@Column
	float commun;
	@Column
	float homehobb;
	@Column
	float perscare;
	@Column
	float cdrsum;
	@Column
	float cdrglob;
	@Column
	float comport;
	@Column
	float cdrlang;
	
	public FollowupB4() {
		super();
	}

	public FollowupB4(int b4, float memory, float orient, float judgment, float commun,
			float homehobb, float perscare, float cdrsum, float cdrglob, float comport,
			float cdrlang) {
		super();
		this.b4 = b4;
		this.memory = memory;
		this.orient = orient;
		this.judgment = judgment;
		this.commun = commun;
		this.homehobb = homehobb;
		this.perscare = perscare;
		this.cdrsum = cdrsum;
		this.cdrglob = cdrglob;
		this.comport = comport;
		this.cdrlang = cdrlang;
	}

	/*public B4(User user, Subject subject, Header header, float b4, float memory,
			float orient, float judgment, float commun, float homehobb, float perscare,
			float cdrsum, float cdrglob, float comport, float cdrlang) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.b4 = b4;
		this.memory = memory;
		this.orient = orient;
		this.judgment = judgment;
		this.commun = commun;
		this.homehobb = homehobb;
		this.perscare = perscare;
		this.cdrsum = cdrsum;
		this.cdrglob = cdrglob;
		this.comport = comport;
		this.cdrlang = cdrlang;
	}

	@ManyToOne
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne
	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	@ManyToOne
	public Header getHeader() {
		return header;
	}

	public void setHeader(Header header) {
		this.header = header;
	}*/

	public float getB4() {
		return b4;
	}

	public void setB4(int b4) {
		this.b4 = b4;
	}

	public float getMemory() {
		return memory;
	}

	public void setMemory(float memory) {
		this.memory = memory;
	}

	public float getOrient() {
		return orient;
	}

	public void setOrient(float orient) {
		this.orient = orient;
	}

	public float getJudgment() {
		return judgment;
	}

	public void setJudgment(float judgment) {
		this.judgment = judgment;
	}

	public float getCommun() {
		return commun;
	}

	public void setCommun(float commun) {
		this.commun = commun;
	}

	public float getHomehobb() {
		return homehobb;
	}

	public void setHomehobb(float homehobb) {
		this.homehobb = homehobb;
	}

	public float getPerscare() {
		return perscare;
	}

	public void setPerscare(float perscare) {
		this.perscare = perscare;
	}

	public float getCdrsum() {
		return cdrsum;
	}

	public void setCdrsum(float cdrsum) {
		this.cdrsum = cdrsum;
	}

	public float getCdrglob() {
		return cdrglob;
	}

	public void setCdrglob(float cdrglob) {
		this.cdrglob = cdrglob;
	}

	public float getComport() {
		return comport;
	}

	public void setComport(float comport) {
		this.comport = comport;
	}

	public float getCdrlang() {
		return cdrlang;
	}

	public void setCdrlang(float cdrlang) {
		this.cdrlang = cdrlang;
	}
	
}

