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
public class FollowupD2 implements Serializable{
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
	int d2;
	@Column
	int cancer;
	@Column
	int cancsite;
	@Column
	int diabet;
	@Column
	int myoinf;
	@Column
	int conghrt;
	@Column
	int afibrill;
	@Column
	int hypert;
	@Column
	int angina;
	@Column
	int hypchol;
	@Column
	int vb12def;
	@Column
	int thydis;
	@Column
	int arth;
	@Column
	int artype;
	@Column
	String artypex;
	@Column
	int artupex;
	@Column
	int artloex;
	@Column
	int artspin;
	@Column
	int artunkn;
	@Column
	int urineinc;
	@Column
	int bowlic;
	@Column
	int sleepap;
	@Column
	int remdis;
	@Column
	int hyposom;
	@Column
	int sleepoth;
	@Column
	int sleeptx;
	@Column
	int angiocp;
	@Column
	int angiopci;
	@Column
	int pacemake;
	@Column
	int hvalve;
	@Column
	int antienc;
	@Column
	String antiencx;
	@Column
	int othcond;
	@Column
	String othcondx;
	
	public FollowupD2() {
		super();
	}

	public FollowupD2(int d2, int cancer, int cancsite, int diabet, int myoinf,
			int conghrt, int afibrill, int hypert, int angina, int hypchol,
			int vb12def, int thydis, int arth, int artype, String artypex,
			int artupex, int artloex, int artspin, int artunkn, int urineinc,
			int bowlic, int sleepap, int remdis, int hyposom, int sleepoth,
			int sleeptx, int angiocp, int angiopci, int pacemake, int hvalve,
			int antienc, String antiencx, int othcond, String othcondx) {
		super();
		this.d2 = d2;
		this.cancer = cancer;
		this.cancsite = cancsite;
		this.diabet = diabet;
		this.myoinf = myoinf;
		this.conghrt = conghrt;
		this.afibrill = afibrill;
		this.hypert = hypert;
		this.angina = angina;
		this.hypchol = hypchol;
		this.vb12def = vb12def;
		this.thydis = thydis;
		this.arth = arth;
		this.artype = artype;
		this.artypex = artypex;
		this.artupex = artupex;
		this.artloex = artloex;
		this.artspin = artspin;
		this.artunkn = artunkn;
		this.urineinc = urineinc;
		this.bowlic = bowlic;
		this.sleepap = sleepap;
		this.remdis = remdis;
		this.hyposom = hyposom;
		this.sleepoth = sleepoth;
		this.sleeptx = sleeptx;
		this.angiocp = angiocp;
		this.angiopci = angiopci;
		this.pacemake = pacemake;
		this.hvalve = hvalve;
		this.antienc = antienc;
		this.antiencx = antiencx;
		this.othcond = othcond;
		this.othcondx = othcondx;
	}

	/*public D2(User user, Subject subject, Header header, int d2, int cancer,
			int cancsite, int diabet, int myoinf, int conghrt, int afibrill,
			int hypert, int angina, int hypchol, int vb12def, int thydis,
			int arth, int artype, String artypex, int artupex, int artloex,
			int artspin, int artunkn, int urineinc, int bowlic, int sleepap,
			int remdis, int hyposom, int sleepoth, int sleeptx, int angiocp,
			int angiopci, int pacemake, int hvalve, int antienc,
			String antiencx, int othcond, String othcondx) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.d2 = d2;
		this.cancer = cancer;
		this.cancsite = cancsite;
		this.diabet = diabet;
		this.myoinf = myoinf;
		this.conghrt = conghrt;
		this.afibrill = afibrill;
		this.hypert = hypert;
		this.angina = angina;
		this.hypchol = hypchol;
		this.vb12def = vb12def;
		this.thydis = thydis;
		this.arth = arth;
		this.artype = artype;
		this.artypex = artypex;
		this.artupex = artupex;
		this.artloex = artloex;
		this.artspin = artspin;
		this.artunkn = artunkn;
		this.urineinc = urineinc;
		this.bowlic = bowlic;
		this.sleepap = sleepap;
		this.remdis = remdis;
		this.hyposom = hyposom;
		this.sleepoth = sleepoth;
		this.sleeptx = sleeptx;
		this.angiocp = angiocp;
		this.angiopci = angiopci;
		this.pacemake = pacemake;
		this.hvalve = hvalve;
		this.antienc = antienc;
		this.antiencx = antiencx;
		this.othcond = othcond;
		this.othcondx = othcondx;
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

	public int getD2() {
		return d2;
	}

	public void setD2(int d2) {
		this.d2 = d2;
	}

	public int getCancer() {
		return cancer;
	}

	public void setCancer(int cancer) {
		this.cancer = cancer;
	}

	public int getCancsite() {
		return cancsite;
	}

	public void setCancsite(int cancsite) {
		this.cancsite = cancsite;
	}

	public int getDiabet() {
		return diabet;
	}

	public void setDiabet(int diabet) {
		this.diabet = diabet;
	}

	public int getMyoinf() {
		return myoinf;
	}

	public void setMyoinf(int myoinf) {
		this.myoinf = myoinf;
	}

	public int getConghrt() {
		return conghrt;
	}

	public void setConghrt(int conghrt) {
		this.conghrt = conghrt;
	}

	public int getAfibrill() {
		return afibrill;
	}

	public void setAfibrill(int afibrill) {
		this.afibrill = afibrill;
	}

	public int getHypert() {
		return hypert;
	}

	public void setHypert(int hypert) {
		this.hypert = hypert;
	}

	public int getAngina() {
		return angina;
	}

	public void setAngina(int angina) {
		this.angina = angina;
	}

	public int getHypchol() {
		return hypchol;
	}

	public void setHypchol(int hypchol) {
		this.hypchol = hypchol;
	}

	public int getVb12def() {
		return vb12def;
	}

	public void setVb12def(int vb12def) {
		this.vb12def = vb12def;
	}

	public int getThydis() {
		return thydis;
	}

	public void setThydis(int thydis) {
		this.thydis = thydis;
	}

	public int getArth() {
		return arth;
	}

	public void setArth(int arth) {
		this.arth = arth;
	}

	public int getArtype() {
		return artype;
	}

	public void setArtype(int artype) {
		this.artype = artype;
	}

	public String getArtypex() {
		return artypex;
	}

	public void setArtypex(String artypex) {
		this.artypex = artypex;
	}

	public int getArtupex() {
		return artupex;
	}

	public void setArtupex(int artupex) {
		this.artupex = artupex;
	}

	public int getArtloex() {
		return artloex;
	}

	public void setArtloex(int artloex) {
		this.artloex = artloex;
	}

	public int getArtspin() {
		return artspin;
	}

	public void setArtspin(int artspin) {
		this.artspin = artspin;
	}

	public int getArtunkn() {
		return artunkn;
	}

	public void setArtunkn(int artunkn) {
		this.artunkn = artunkn;
	}

	public int getUrineinc() {
		return urineinc;
	}

	public void setUrineinc(int urineinc) {
		this.urineinc = urineinc;
	}

	public int getBowlic() {
		return bowlic;
	}

	public void setBowlic(int bowlic) {
		this.bowlic = bowlic;
	}

	public int getSleepap() {
		return sleepap;
	}

	public void setSleepap(int sleepap) {
		this.sleepap = sleepap;
	}

	public int getRemdis() {
		return remdis;
	}

	public void setRemdis(int remdis) {
		this.remdis = remdis;
	}

	public int getHyposom() {
		return hyposom;
	}

	public void setHyposom(int hyposom) {
		this.hyposom = hyposom;
	}

	public int getSleepoth() {
		return sleepoth;
	}

	public void setSleepoth(int sleepoth) {
		this.sleepoth = sleepoth;
	}

	public int getSleeptx() {
		return sleeptx;
	}

	public void setSleeptx(int sleeptx) {
		this.sleeptx = sleeptx;
	}

	public int getAngiocp() {
		return angiocp;
	}

	public void setAngiocp(int angiocp) {
		this.angiocp = angiocp;
	}

	public int getAngiopci() {
		return angiopci;
	}

	public void setAngiopci(int angiopci) {
		this.angiopci = angiopci;
	}

	public int getPacemake() {
		return pacemake;
	}

	public void setPacemake(int pacemake) {
		this.pacemake = pacemake;
	}

	public int getHvalve() {
		return hvalve;
	}

	public void setHvalve(int hvalve) {
		this.hvalve = hvalve;
	}

	public int getAntienc() {
		return antienc;
	}

	public void setAntienc(int antienc) {
		this.antienc = antienc;
	}

	public String getAntiencx() {
		return antiencx;
	}

	public void setAntiencx(String antiencx) {
		this.antiencx = antiencx;
	}

	public int getOthcond() {
		return othcond;
	}

	public void setOthcond(int othcond) {
		this.othcond = othcond;
	}

	public String getOthcondx() {
		return othcondx;
	}

	public void setOthcondx(String othcondx) {
		this.othcondx = othcondx;
	}
	
}
