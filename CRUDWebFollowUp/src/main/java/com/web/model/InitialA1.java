/**
 * @author Amol Bhalla
 */

package com.web.model;

import java.io.Serializable;

import javax.persistence.*;

import com.web.common.Header;
import com.web.common.User;
import com.web.common.Subject;

@Entity
@Table(name = "InitialA1")
public class InitialA1 implements Serializable{
	
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
	 private int a1;
		@Column 
	 private int reason;
		@Column 
	 private int refersc;
		@Column 
	 private int learned;
		@Column 
	 private int prestat;
		@Column 
	 private int prespart;
		@Column 
	 private int sourcenw;
		@Column 
	 private int birthmo;
		@Column 
	 private int birthyr;
		@Column 
	 private int sex;
		@Column 
	 private int hispanic;
		@Column 
	 private int hispor;
		@Column 
	 private String hisporx;
		@Column 
	 private int race;
		@Column 
	 private String racex;
		@Column 
	 private int racesec;
		@Column 
	 private String racesecx;
		@Column 
	 private int raceter;
		@Column 
	 private String raceterx;
		@Column 
	 private int primlang;
		@Column 
	 private String primlanx;
		@Column 
	 private int educ;
		@Column 
	 private int maristat;
		@Column 
	 private int livsitua;
		@Column 
	 private int independ;
		@Column 
	 private int residenc;
		@Column 
	 private String zip;
		@Column 
	 private int handed;

	
	public InitialA1() {
		super();
	}

	public InitialA1(int a1, int reason, int refersc, int learned, int prestat,
			int prespart, int sourcenw, int birthmo, int birthyr, int sex,
			int hispanic, int hispor, String hisporx, int race, String racex,
			int racesec, String racesecx, int raceter, String raceterx,
			int primlang, String primlanx, int educ, int maristat,
			int livsitua, int independ, int residenc, String zip, int handed) {
		super();
		this.a1 = a1;
		this.reason = reason;
		this.refersc = refersc;
		this.learned = learned;
		this.prestat = prestat;
		this.prespart = prespart;
		this.sourcenw = sourcenw;
		this.birthmo = birthmo;
		this.birthyr = birthyr;
		this.sex = sex;
		this.hispanic = hispanic;
		this.hispor = hispor;
		this.hisporx = hisporx;
		this.race = race;
		this.racex = racex;
		this.racesec = racesec;
		this.racesecx = racesecx;
		this.raceter = raceter;
		this.raceterx = raceterx;
		this.primlang = primlang;
		this.primlanx = primlanx;
		this.educ = educ;
		this.maristat = maristat;
		this.livsitua = livsitua;
		this.independ = independ;
		this.residenc = residenc;
		this.zip = zip;
		this.handed = handed;
	}

//	public InitialA1(User user, Subject subject, Header header, int a1, int reason,
//			int refersc, int learned, int prestat, int prespart, int sourcenw,
//			int birthmo, int birthyr, int sex, int hispanic, int hispor,
//			String hisporx, int race, String racex, int racesec,
//			String racesecx, int raceter, String raceterx, int primlang,
//			String primlanx, int educ, int maristat, int livsitua,
//			int independ, int residenc, String zip, int handed) {
//		super();
//		this.user = user;
//		this.subject = subject;
//		this.header = header;
//		this.a1 = a1;
//		this.reason = reason;
//		this.refersc = refersc;
//		this.learned = learned;
//		this.prestat = prestat;
//		this.prespart = prespart;
//		this.sourcenw = sourcenw;
//		this.birthmo = birthmo;
//		this.birthyr = birthyr;
//		this.sex = sex;
//		this.hispanic = hispanic;
//		this.hispor = hispor;
//		this.hisporx = hisporx;
//		this.race = race;
//		this.racex = racex;
//		this.racesec = racesec;
//		this.racesecx = racesecx;
//		this.raceter = raceter;
//		this.raceterx = raceterx;
//		this.primlang = primlang;
//		this.primlanx = primlanx;
//		this.educ = educ;
//		this.maristat = maristat;
//		this.livsitua = livsitua;
//		this.independ = independ;
//		this.residenc = residenc;
//		this.zip = zip;
//		this.handed = handed;
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
	public int getA1() {
		return a1;
	}
	public void setA1(int a1) {
		this.a1 = a1;
	}
	public int getReason() {
		return reason;
	}
	public void setReason(int reason) {
		this.reason = reason;
	}
	public int getRefersc() {
		return refersc;
	}
	public void setRefersc(int refersc) {
		this.refersc = refersc;
	}
	public int getLearned() {
		return learned;
	}
	public void setLearned(int learned) {
		this.learned = learned;
	}
	public int getPrestat() {
		return prestat;
	}
	public void setPrestat(int prestat) {
		this.prestat = prestat;
	}
	public int getPrespart() {
		return prespart;
	}
	public void setPrespart(int prespart) {
		this.prespart = prespart;
	}
	public int getSourcenw() {
		return sourcenw;
	}
	public void setSourcenw(int sourcenw) {
		this.sourcenw = sourcenw;
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
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getHispanic() {
		return hispanic;
	}
	public void setHispanic(int hispanic) {
		this.hispanic = hispanic;
	}
	public int getHispor() {
		return hispor;
	}
	public void setHispor(int hispor) {
		this.hispor = hispor;
	}
	public String getHisporx() {
		return hisporx;
	}
	public void setHisporx(String hisporx) {
		this.hisporx = hisporx;
	}
	public int getRace() {
		return race;
	}
	public void setRace(int race) {
		this.race = race;
	}
	public String getRacex() {
		return racex;
	}
	public void setRacex(String racex) {
		this.racex = racex;
	}
	public int getRacesec() {
		return racesec;
	}
	public void setRacesec(int racesec) {
		this.racesec = racesec;
	}
	public String getRacesecx() {
		return racesecx;
	}
	public void setRacesecx(String racesecx) {
		this.racesecx = racesecx;
	}
	public int getRaceter() {
		return raceter;
	}
	public void setRaceter(int raceter) {
		this.raceter = raceter;
	}
	public String getRaceterx() {
		return raceterx;
	}
	public void setRaceterx(String raceterx) {
		this.raceterx = raceterx;
	}
	public int getPrimlang() {
		return primlang;
	}
	public void setPrimlang(int primlang) {
		this.primlang = primlang;
	}
	public String getPrimlanx() {
		return primlanx;
	}
	public void setPrimlanx(String primlanx) {
		this.primlanx = primlanx;
	}
	public int getEduc() {
		return educ;
	}
	public void setEduc(int educ) {
		this.educ = educ;
	}
	public int getMaristat() {
		return maristat;
	}
	public void setMaristat(int maristat) {
		this.maristat = maristat;
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
	@Id
	@GeneratedValue
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
	public int getHanded() {
		return handed;
	}
	public void setHanded(int handed) {
		this.handed = handed;
	}
}
