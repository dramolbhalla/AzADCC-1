package com.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import javax.persistence.ManyToOne;


@Entity
public class FollowupA1 implements Serializable {
	
	/**
	 * 
	 */
	    private static final long serialVersionUID = 1L;
		/*User user;
		Subject subject;
		Header header;*/
		@Id
		@Column
		@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
		int a1;
		@Column
		int birthmo;
		@Column
		int birthyr;
		@Column
		int maristat;
		@Column
		int sex;
		@Column
		int livsitua;
		@Column
		int independ;
		@Column
		int residenc;
		@Column
		String zip;
			
		public FollowupA1() {
			super();
		}

		public FollowupA1(int a1, int birthmo, int birthyr, int maristat, int sex,
				int livsitua, int independ, int residenc, String zip) {
			super();
			this.a1 = a1;
			this.birthmo = birthmo;
			this.birthyr = birthyr;
			this.maristat = maristat;
			this.sex = sex;
			this.livsitua = livsitua;
			this.independ = independ;
			this.residenc = residenc;
			this.zip = zip;
		}

		

		/*public Followup_A1(User user, Subject subject, Header header, int a1, int birthmo,
				int birthyr, int maristat, int sex, int livsitua, int independ,
				int residenc, String zip) {
			super();
			this.user = user;
			this.subject = subject;
			this.header = header;
			this.a1 = a1;
			this.birthmo = birthmo;
			this.birthyr = birthyr;
			this.maristat = maristat;
			this.sex = sex;
			this.livsitua = livsitua;
			this.independ = independ;
			this.residenc = residenc;
			this.zip = zip;
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
		
		public int getA1() {
			return a1;
		}

		public void setA1(int a1) {
			this.a1 = a1;
		}

		public int getBirthmo() {
			return birthmo;
		}

		public void setBirthmo(int birthmo) {
			this.birthmo = birthmo;
		}

		public int getBirthyr() {
			return birthyr;
		}

		public void setBirthyr(int birthyr) {
			this.birthyr = birthyr;
		}

		public int getMaristat() {
			return maristat;
		}

		public void setMaristat(int maristat) {
			this.maristat = maristat;
		}

		public int getSex() {
			return sex;
		}

		public void setSex(int sex) {
			this.sex = sex;
		}

		public int getLivsitua() {
			return livsitua;
		}

		public void setLivsitua(int livsitua) {
			this.livsitua = livsitua;
		}

		public int getIndepend() {
			return independ;
		}

		public void setIndepend(int independ) {
			this.independ = independ;
		}

		public int getResidenc() {
			return residenc;
		}

		public void setResidenc(int residenc) {
			this.residenc = residenc;
		}

		public String getZip() {
			return zip;
		}

		public void setZip(String zip) {
			this.zip = zip;
		}

}
