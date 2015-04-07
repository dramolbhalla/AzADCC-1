package com.web.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/*import persistance.entities.Subjects.Subject;
import persistance.entities.Users.User;*/

@Entity
public class FollowupB1 implements Serializable{
	/**
	 * @author Amol Bhalla
	 */

/*		User user;
		Subject subject;
		Header header;*/
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
		int b1;
	    @Column
		float height;
	    @Column
		int weight;
	    @Column
		int bpsys;
	    @Column
		int bpdias;
	    @Column
		int hrate;
	    @Column
		int vision;
	    @Column
		int viscorr;
	    @Column
		int viswcorr;
	    @Column
		int hearing;
	    @Column
		int hearaid;
	    @Column
		int hearwaid;
		
		public FollowupB1() {
			super();
		}

		public FollowupB1(int b1, float height, int weight, int bpsys, int bpdias, int hrate,
				int vision, int viscorr, int viswcorr, int hearing, int hearaid,
				int hearwaid) {
			super();
			this.b1 = b1;
			this.height = height;
			this.weight = weight;
			this.bpsys = bpsys;
			this.bpdias = bpdias;
			this.hrate = hrate;
			this.vision = vision;
			this.viscorr = viscorr;
			this.viswcorr = viswcorr;
			this.hearing = hearing;
			this.hearaid = hearaid;
			this.hearwaid = hearwaid;
		}

		/*public B1(User user, Subject subject, Header header, int b1, int height,
				int weight, int bpsys, int bpdias, int hrate, int vision,
				int viscorr, int viswcorr, int hearing, int hearaid, int hearwaid) {
			super();
			this.user = user;
			this.subject = subject;
			this.header = header;
			this.b1 = b1;
			this.height = height;
			this.weight = weight;
			this.bpsys = bpsys;
			this.bpdias = bpdias;
			this.hrate = hrate;
			this.vision = vision;
			this.viscorr = viscorr;
			this.viswcorr = viswcorr;
			this.hearing = hearing;
			this.hearaid = hearaid;
			this.hearwaid = hearwaid;
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
		}
*/
		public int getB1() {
			return b1;
		}

		public void setB1(int b1) {
			this.b1 = b1;
		}

		public float getHeight() {
			return height;
		}

		public void setHeight(int height) {
			this.height = height;
		}

		public int getWeight() {
			return weight;
		}

		public void setWeight(int weight) {
			this.weight = weight;
		}

		public int getBpsys() {
			return bpsys;
		}

		public void setBpsys(int bpsys) {
			this.bpsys = bpsys;
		}

		public int getBpdias() {
			return bpdias;
		}

		public void setBpdias(int bpdias) {
			this.bpdias = bpdias;
		}

		public int getHrate() {
			return hrate;
		}

		public void setHrate(int hrate) {
			this.hrate = hrate;
		}

		public int getVision() {
			return vision;
		}

		public void setVision(int vision) {
			this.vision = vision;
		}

		public int getViscorr() {
			return viscorr;
		}

		public void setViscorr(int viscorr) {
			this.viscorr = viscorr;
		}

		public int getViswcorr() {
			return viswcorr;
		}

		public void setViswcorr(int viswcorr) {
			this.viswcorr = viswcorr;
		}

		public int getHearing() {
			return hearing;
		}

		public void setHearing(int hearing) {
			this.hearing = hearing;
		}

		@Id
		@GeneratedValue
		public int getHearaid() {
			return hearaid;
		}

		public void setHearaid(int hearaid) {
			this.hearaid = hearaid;
		}

		public int getHearwaid() {
			return hearwaid;
		}

		public void setHearwaid(int hearwaid) {
			this.hearwaid = hearwaid;
		}	

	}



