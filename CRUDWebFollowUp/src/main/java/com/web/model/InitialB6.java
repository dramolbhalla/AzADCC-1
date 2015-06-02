/**
 * @author Amol Bhalla
 */

package com.web.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.web.common.Header;
import com.web.common.User;
import com.web.common.Subject;

@Entity
public class InitialB6 implements Serializable{
//	User user;
//	Subject subject;
//	Header header;
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	 int b6;
		@Column 
	 int nogds;
		@Column 
	 int satis;
		@Column 
	 int dropact;
		@Column 
	 int empty;
		@Column 
	 int bored;
		@Column 
	 int spirits;
		@Column 
	 int afraid;
		@Column 
	 int happy;
		@Column 
	 int helpless;
		@Column 
	 int stayhome;
		@Column 
	 int memprob;
		@Column 
	 int wondrful;
		@Column 
	 int wrthless;
		@Column 
	 int energy;
		@Column 
	 int hopeless;
		@Column 
	 int better;
		@Column 
	 int gds;

	
	public InitialB6() {
		super();
	}
	
	public InitialB6(int b6, int nogds, int satis, int dropact, int empty, int bored,
			int spirits, int afraid, int happy, int helpless, int stayhome,
			int memprob, int wondrful, int wrthless, int energy, int hopeless,
			int better, int gds) {
		super();
		this.b6 = b6;
		this.nogds = nogds;
		this.satis = satis;
		this.dropact = dropact;
		this.empty = empty;
		this.bored = bored;
		this.spirits = spirits;
		this.afraid = afraid;
		this.happy = happy;
		this.helpless = helpless;
		this.stayhome = stayhome;
		this.memprob = memprob;
		this.wondrful = wondrful;
		this.wrthless = wrthless;
		this.energy = energy;
		this.hopeless = hopeless;
		this.better = better;
		this.gds = gds;
	}
	
//	public InitialB6(User user, Subject subject, Header header, int b6, int nogds,
//			int satis, int dropact, int empty, int bored, int spirits,
//			int afraid, int happy, int helpless, int stayhome, int memprob,
//			int wondrful, int wrthless, int energy, int hopeless, int better,
//			int gds) {
//		super();
//		this.user = user;
//		this.subject = subject;
//		this.header = header;
//		this.b6 = b6;
//		this.nogds = nogds;
//		this.satis = satis;
//		this.dropact = dropact;
//		this.empty = empty;
//		this.bored = bored;
//		this.spirits = spirits;
//		this.afraid = afraid;
//		this.happy = happy;
//		this.helpless = helpless;
//		this.stayhome = stayhome;
//		this.memprob = memprob;
//		this.wondrful = wondrful;
//		this.wrthless = wrthless;
//		this.energy = energy;
//		this.hopeless = hopeless;
//		this.better = better;
//		this.gds = gds;
//	}
//	
//	@ManyToOne
//	public User getUser() {
//		return user;
//	}
//	public void setUser(User user) {
//		this.user = user;
//	}
//	@ManyToOne
//	public Subject getSubject() {
//		return subject;
//	}
//	public void setSubject(Subject subject) {
//		this.subject = subject;
//	}
//	@ManyToOne
//	public Header getHeader() {
//		return header;
//	}
//	public void setHeader(Header header) {
//		this.header = header;
//	}
	public int getB6() {
		return b6;
	}
	public void setB6(int b6) {
		this.b6 = b6;
	}
	public int getNogds() {
		return nogds;
	}
	public void setNogds(int nogds) {
		this.nogds = nogds;
	}
	public int getSatis() {
		return satis;
	}
	public void setSatis(int satis) {
		this.satis = satis;
	}
	public int getDropact() {
		return dropact;
	}
	public void setDropact(int dropact) {
		this.dropact = dropact;
	}
	public int getEmpty() {
		return empty;
	}
	public void setEmpty(int empty) {
		this.empty = empty;
	}
	public int getBored() {
		return bored;
	}
	public void setBored(int bored) {
		this.bored = bored;
	}
	public int getSpirits() {
		return spirits;
	}
	public void setSpirits(int spirits) {
		this.spirits = spirits;
	}
	public int getAfraid() {
		return afraid;
	}
	public void setAfraid(int afraid) {
		this.afraid = afraid;
	}
	public int getHappy() {
		return happy;
	}
	public void setHappy(int happy) {
		this.happy = happy;
	}
	public int getHelpless() {
		return helpless;
	}
	public void setHelpless(int helpless) {
		this.helpless = helpless;
	}
	public int getStayhome() {
		return stayhome;
	}
	public void setStayhome(int stayhome) {
		this.stayhome = stayhome;
	}
	public int getMemprob() {
		return memprob;
	}
	public void setMemprob(int memprob) {
		this.memprob = memprob;
	}
	public int getWondrful() {
		return wondrful;
	}
	public void setWondrful(int wondrful) {
		this.wondrful = wondrful;
	}
	public int getWrthless() {
		return wrthless;
	}
	public void setWrthless(int wrthless) {
		this.wrthless = wrthless;
	}
	public int getEnergy() {
		return energy;
	}
	public void setEnergy(int energy) {
		this.energy = energy;
	}
	public int getHopeless() {
		return hopeless;
	}
	public void setHopeless(int hopeless) {
		this.hopeless = hopeless;
	}
	public int getBetter() {
		return better;
	}
	public void setBetter(int better) {
		this.better = better;
	}
	public int getGds() {
		return gds;
	}
	public void setGds(int gds) {
		this.gds = gds;
	}
}
