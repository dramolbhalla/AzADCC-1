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
public class FollowupB5 implements Serializable{
	/*User user;
	Subject subject;
	Header header;*/
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	int b5;
	@Column
	int npiqinf;
	@Column
	String npiqinfx;
	@Column
	int del;
	@Column
	int delsev;
	@Column
	int hall;
	@Column
	int hallsev;
	@Column
	int agit;
	@Column
	int agitsev;
	@Column
	int depd;
	@Column
	int depdsev;
	@Column
	int anx;
	@Column
	int anxsev;
	@Column
	int elat;
	@Column
	int elatsev;
	@Column
	int apa;
	@Column
	int apasev;
	@Column
	int disn;
	@Column
	int disnsev;
	@Column
	int irr;
	@Column
	int irrsev;
	@Column
	int mot;
	@Column
	int motsev;
	@Column
	int nite;
	@Column
	int nitesev;
	@Column
	int app;
	@Column
	int appsev;
	
	public FollowupB5() {
		super();
	}

	public FollowupB5(int b5, int npiqinf, String npiqinfx, int del, int delsev,
			int hall, int hallsev, int agit, int agitsev, int depd,
			int depdsev, int anx, int anxsev, int elat, int elatsev, int apa,
			int apasev, int disn, int disnsev, int irr, int irrsev, int mot,
			int motsev, int nite, int nitesev, int app, int appsev) {
		super();
		this.b5 = b5;
		this.npiqinf = npiqinf;
		this.npiqinfx = npiqinfx;
		this.del = del;
		this.delsev = delsev;
		this.hall = hall;
		this.hallsev = hallsev;
		this.agit = agit;
		this.agitsev = agitsev;
		this.depd = depd;
		this.depdsev = depdsev;
		this.anx = anx;
		this.anxsev = anxsev;
		this.elat = elat;
		this.elatsev = elatsev;
		this.apa = apa;
		this.apasev = apasev;
		this.disn = disn;
		this.disnsev = disnsev;
		this.irr = irr;
		this.irrsev = irrsev;
		this.mot = mot;
		this.motsev = motsev;
		this.nite = nite;
		this.nitesev = nitesev;
		this.app = app;
		this.appsev = appsev;
	}

	/*public B5(User user, Subject subject, Header header, int b5, int npiqinf,
			String npiqinfx, int del, int delsev, int hall, int hallsev,
			int agit, int agitsev, int depd, int depdsev, int anx, int anxsev,
			int elat, int elatsev, int apa, int apasev, int disn, int disnsev,
			int irr, int irrsev, int mot, int motsev, int nite, int nitesev,
			int app, int appsev) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.b5 = b5;
		this.npiqinf = npiqinf;
		this.npiqinfx = npiqinfx;
		this.del = del;
		this.delsev = delsev;
		this.hall = hall;
		this.hallsev = hallsev;
		this.agit = agit;
		this.agitsev = agitsev;
		this.depd = depd;
		this.depdsev = depdsev;
		this.anx = anx;
		this.anxsev = anxsev;
		this.elat = elat;
		this.elatsev = elatsev;
		this.apa = apa;
		this.apasev = apasev;
		this.disn = disn;
		this.disnsev = disnsev;
		this.irr = irr;
		this.irrsev = irrsev;
		this.mot = mot;
		this.motsev = motsev;
		this.nite = nite;
		this.nitesev = nitesev;
		this.app = app;
		this.appsev = appsev;
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

	public int getB5() {
		return b5;
	}

	public void setB5(int b5) {
		this.b5 = b5;
	}

	public int getNpiqinf() {
		return npiqinf;
	}

	public void setNpiqinf(int npiqinf) {
		this.npiqinf = npiqinf;
	}

	public String getNpiqinfx() {
		return npiqinfx;
	}

	public void setNpiqinfx(String npiqinfx) {
		this.npiqinfx = npiqinfx;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	public int getDelsev() {
		return delsev;
	}

	public void setDelsev(int delsev) {
		this.delsev = delsev;
	}

	public int getHall() {
		return hall;
	}

	public void setHall(int hall) {
		this.hall = hall;
	}

	public int getHallsev() {
		return hallsev;
	}

	public void setHallsev(int hallsev) {
		this.hallsev = hallsev;
	}

	public int getAgit() {
		return agit;
	}

	public void setAgit(int agit) {
		this.agit = agit;
	}

	public int getAgitsev() {
		return agitsev;
	}

	public void setAgitsev(int agitsev) {
		this.agitsev = agitsev;
	}

	public int getDepd() {
		return depd;
	}

	public void setDepd(int depd) {
		this.depd = depd;
	}

	public int getDepdsev() {
		return depdsev;
	}

	public void setDepdsev(int depdsev) {
		this.depdsev = depdsev;
	}

	public int getAnx() {
		return anx;
	}

	public void setAnx(int anx) {
		this.anx = anx;
	}

	public int getAnxsev() {
		return anxsev;
	}

	public void setAnxsev(int anxsev) {
		this.anxsev = anxsev;
	}

	public int getElat() {
		return elat;
	}

	public void setElat(int elat) {
		this.elat = elat;
	}

	public int getElatsev() {
		return elatsev;
	}

	public void setElatsev(int elatsev) {
		this.elatsev = elatsev;
	}

	public int getApa() {
		return apa;
	}

	public void setApa(int apa) {
		this.apa = apa;
	}

	public int getApasev() {
		return apasev;
	}

	public void setApasev(int apasev) {
		this.apasev = apasev;
	}

	public int getDisn() {
		return disn;
	}

	public void setDisn(int disn) {
		this.disn = disn;
	}

	public int getDisnsev() {
		return disnsev;
	}

	public void setDisnsev(int disnsev) {
		this.disnsev = disnsev;
	}

	public int getIrr() {
		return irr;
	}

	public void setIrr(int irr) {
		this.irr = irr;
	}

	public int getIrrsev() {
		return irrsev;
	}

	public void setIrrsev(int irrsev) {
		this.irrsev = irrsev;
	}

	public int getMot() {
		return mot;
	}

	public void setMot(int mot) {
		this.mot = mot;
	}

	public int getMotsev() {
		return motsev;
	}

	public void setMotsev(int motsev) {
		this.motsev = motsev;
	}

	public int getNite() {
		return nite;
	}

	public void setNite(int nite) {
		this.nite = nite;
	}

	public int getNitesev() {
		return nitesev;
	}

	public void setNitesev(int nitesev) {
		this.nitesev = nitesev;
	}

	public int getApp() {
		return app;
	}

	public void setApp(int app) {
		this.app = app;
	}

	public int getAppsev() {
		return appsev;
	}

	public void setAppsev(int appsev) {
		this.appsev = appsev;
	}

}
