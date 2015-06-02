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
public class InitialB9 implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	User user;
//	Subject subject;
//	Header header;

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber 
 int b9;
	@Column 
 int decsub;
	@Column 
 int decin;
	@Column 
 int decclcog;
	@Column 
 int cogmem;
	@Column 
 int cogori;
	@Column 
 int cogjudg;
	@Column 
 int coglang;
	@Column 
 int cogvis;
	@Column 
 int cogattn;
	@Column 
 int cogfluc;
	@Column 
 int cogflago;
	@Column 
 int cogothr;
	@Column 
 String cogothrx;
	@Column 
 int cogfpred;
	@Column 
 String cogfprex;
	@Column 
 int cogmode;
	@Column 
 String cogmodex;
	@Column 
 int decage;
	@Column 
 int decclbe;
	@Column 
 int beapathy;
	@Column 
 int bedep;
	@Column 
 int bevhall;
	@Column 
 int bevwell;
	@Column 
 int bevhago;
	@Column 
 int beahall;
	@Column 
 int bedel;
	@Column 
 int bedisin;
	@Column 
 int beirrit;
	@Column 
 int beagit;
	@Column 
 int beperch;
	@Column 
 int berem;
	@Column 
 int beremago;
	@Column 
 int beanx;
	@Column 
 int beothr;
	@Column 
 String beothrx;
	@Column 
 int befpred;
	@Column 
 String befpredx;
	@Column 
 int bemode;
	@Column 
 String bemodex;
	@Column 
 int beage;
	@Column 
 int decclmot;
	@Column 
 int mogait;
	@Column 
 int mofalls;
	@Column 
 int motrem;
	@Column 
 int moslow;
	@Column 
 int mofrst;
	@Column 
 int momode;
	@Column 
 String momodex;
	@Column 
 int momopark;
	@Column 
 int parkage;
	@Column 
 int momoals;
	@Column 
 int alsage;
	@Column 
 int moage;
	@Column 
 int course;
	@Column 
 int frstchg;
	@Column 
 int lbdeval;
	@Column 
 int ftldeval;
	

	public InitialB9() {
		super();
	}
	
	public InitialB9(int b9, int decsub, int decin, int decclcog, int cogmem,
			int cogori, int cogjudg, int coglang, int cogvis, int cogattn,
			int cogfluc, int cogflago, int cogothr, String cogothrx,
			int cogfpred, String cogfprex, int cogmode, String cogmodex,
			int decage, int decclbe, int beapathy, int bedep, int bevhall,
			int bevwell, int bevhago, int beahall, int bedel, int bedisin,
			int beirrit, int beagit, int beperch, int berem, int beremago,
			int beanx, int beothr, String beothrx, int befpred,
			String befpredx, int bemode, String bemodex, int beage,
			int decclmot, int mogait, int mofalls, int motrem, int moslow,
			int mofrst, int momode, String momodex, int momopark, int parkage,
			int momoals, int alsage, int moage, int course, int frstchg,
			int lbdeval, int ftldeval) {
		super();
		this.b9 = b9;
		this.decsub = decsub;
		this.decin = decin;
		this.decclcog = decclcog;
		this.cogmem = cogmem;
		this.cogori = cogori;
		this.cogjudg = cogjudg;
		this.coglang = coglang;
		this.cogvis = cogvis;
		this.cogattn = cogattn;
		this.cogfluc = cogfluc;
		this.cogflago = cogflago;
		this.cogothr = cogothr;
		this.cogothrx = cogothrx;
		this.cogfpred = cogfpred;
		this.cogfprex = cogfprex;
		this.cogmode = cogmode;
		this.cogmodex = cogmodex;
		this.decage = decage;
		this.decclbe = decclbe;
		this.beapathy = beapathy;
		this.bedep = bedep;
		this.bevhall = bevhall;
		this.bevwell = bevwell;
		this.bevhago = bevhago;
		this.beahall = beahall;
		this.bedel = bedel;
		this.bedisin = bedisin;
		this.beirrit = beirrit;
		this.beagit = beagit;
		this.beperch = beperch;
		this.berem = berem;
		this.beremago = beremago;
		this.beanx = beanx;
		this.beothr = beothr;
		this.beothrx = beothrx;
		this.befpred = befpred;
		this.befpredx = befpredx;
		this.bemode = bemode;
		this.bemodex = bemodex;
		this.beage = beage;
		this.decclmot = decclmot;
		this.mogait = mogait;
		this.mofalls = mofalls;
		this.motrem = motrem;
		this.moslow = moslow;
		this.mofrst = mofrst;
		this.momode = momode;
		this.momodex = momodex;
		this.momopark = momopark;
		this.parkage = parkage;
		this.momoals = momoals;
		this.alsage = alsage;
		this.moage = moage;
		this.course = course;
		this.frstchg = frstchg;
		this.lbdeval = lbdeval;
		this.ftldeval = ftldeval;
	}
	
//	public InitialB9(User user, Subject subject, Header header, int b9, int decsub,
//			int decin, int decclcog, int cogmem, int cogori, int cogjudg,
//			int coglang, int cogvis, int cogattn, int cogfluc, int cogflago,
//			int cogothr, String cogothrx, int cogfpred, String cogfprex,
//			int cogmode, String cogmodex, int decage, int decclbe,
//			int beapathy, int bedep, int bevhall, int bevwell, int bevhago,
//			int beahall, int bedel, int bedisin, int beirrit, int beagit,
//			int beperch, int berem, int beremago, int beanx, int beothr,
//			String beothrx, int befpred, String befpredx, int bemode,
//			String bemodex, int beage, int decclmot, int mogait, int mofalls,
//			int motrem, int moslow, int mofrst, int momode, String momodex,
//			int momopark, int parkage, int momoals, int alsage, int moage,
//			int course, int frstchg, int lbdeval, int ftldeval) {
//		super();
//		this.user = user;
//		this.subject = subject;
//		this.header = header;
//		this.b9 = b9;
//		this.decsub = decsub;
//		this.decin = decin;
//		this.decclcog = decclcog;
//		this.cogmem = cogmem;
//		this.cogori = cogori;
//		this.cogjudg = cogjudg;
//		this.coglang = coglang;
//		this.cogvis = cogvis;
//		this.cogattn = cogattn;
//		this.cogfluc = cogfluc;
//		this.cogflago = cogflago;
//		this.cogothr = cogothr;
//		this.cogothrx = cogothrx;
//		this.cogfpred = cogfpred;
//		this.cogfprex = cogfprex;
//		this.cogmode = cogmode;
//		this.cogmodex = cogmodex;
//		this.decage = decage;
//		this.decclbe = decclbe;
//		this.beapathy = beapathy;
//		this.bedep = bedep;
//		this.bevhall = bevhall;
//		this.bevwell = bevwell;
//		this.bevhago = bevhago;
//		this.beahall = beahall;
//		this.bedel = bedel;
//		this.bedisin = bedisin;
//		this.beirrit = beirrit;
//		this.beagit = beagit;
//		this.beperch = beperch;
//		this.berem = berem;
//		this.beremago = beremago;
//		this.beanx = beanx;
//		this.beothr = beothr;
//		this.beothrx = beothrx;
//		this.befpred = befpred;
//		this.befpredx = befpredx;
//		this.bemode = bemode;
//		this.bemodex = bemodex;
//		this.beage = beage;
//		this.decclmot = decclmot;
//		this.mogait = mogait;
//		this.mofalls = mofalls;
//		this.motrem = motrem;
//		this.moslow = moslow;
//		this.mofrst = mofrst;
//		this.momode = momode;
//		this.momodex = momodex;
//		this.momopark = momopark;
//		this.parkage = parkage;
//		this.momoals = momoals;
//		this.alsage = alsage;
//		this.moage = moage;
//		this.course = course;
//		this.frstchg = frstchg;
//		this.lbdeval = lbdeval;
//		this.ftldeval = ftldeval;
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
	public int getB9() {
		return b9;
	}
	public void setB9(int b9) {
		this.b9 = b9;
	}
	public int getDecsub() {
		return decsub;
	}
	public void setDecsub(int decsub) {
		this.decsub = decsub;
	}
	public int getDecin() {
		return decin;
	}
	public void setDecin(int decin) {
		this.decin = decin;
	}
	public int getDecclcog() {
		return decclcog;
	}
	public void setDecclcog(int decclcog) {
		this.decclcog = decclcog;
	}
	public int getCogmem() {
		return cogmem;
	}
	public void setCogmem(int cogmem) {
		this.cogmem = cogmem;
	}
	public int getCogori() {
		return cogori;
	}
	public void setCogori(int cogori) {
		this.cogori = cogori;
	}
	public int getCogjudg() {
		return cogjudg;
	}
	public void setCogjudg(int cogjudg) {
		this.cogjudg = cogjudg;
	}
	public int getCoglang() {
		return coglang;
	}
	public void setCoglang(int coglang) {
		this.coglang = coglang;
	}
	public int getCogvis() {
		return cogvis;
	}
	public void setCogvis(int cogvis) {
		this.cogvis = cogvis;
	}
	public int getCogattn() {
		return cogattn;
	}
	public void setCogattn(int cogattn) {
		this.cogattn = cogattn;
	}
	public int getCogfluc() {
		return cogfluc;
	}
	public void setCogfluc(int cogfluc) {
		this.cogfluc = cogfluc;
	}
	public int getCogflago() {
		return cogflago;
	}
	public void setCogflago(int cogflago) {
		this.cogflago = cogflago;
	}
	public int getCogothr() {
		return cogothr;
	}
	public void setCogothr(int cogothr) {
		this.cogothr = cogothr;
	}
	public String getCogothrx() {
		return cogothrx;
	}
	public void setCogothrx(String cogothrx) {
		this.cogothrx = cogothrx;
	}
	public int getCogfpred() {
		return cogfpred;
	}
	public void setCogfpred(int cogfpred) {
		this.cogfpred = cogfpred;
	}
	public String getCogfprex() {
		return cogfprex;
	}
	public void setCogfprex(String cogfprex) {
		this.cogfprex = cogfprex;
	}
	public int getCogmode() {
		return cogmode;
	}
	public void setCogmode(int cogmode) {
		this.cogmode = cogmode;
	}
	public String getCogmodex() {
		return cogmodex;
	}
	public void setCogmodex(String cogmodex) {
		this.cogmodex = cogmodex;
	}
	public int getDecage() {
		return decage;
	}
	public void setDecage(int decage) {
		this.decage = decage;
	}
	public int getDecclbe() {
		return decclbe;
	}
	public void setDecclbe(int decclbe) {
		this.decclbe = decclbe;
	}
	public int getBeapathy() {
		return beapathy;
	}
	public void setBeapathy(int beapathy) {
		this.beapathy = beapathy;
	}
	public int getBedep() {
		return bedep;
	}
	public void setBedep(int bedep) {
		this.bedep = bedep;
	}
	public int getBevhall() {
		return bevhall;
	}
	public void setBevhall(int bevhall) {
		this.bevhall = bevhall;
	}
	public int getBevwell() {
		return bevwell;
	}
	public void setBevwell(int bevwell) {
		this.bevwell = bevwell;
	}
	public int getBevhago() {
		return bevhago;
	}
	public void setBevhago(int bevhago) {
		this.bevhago = bevhago;
	}
	public int getBeahall() {
		return beahall;
	}
	public void setBeahall(int beahall) {
		this.beahall = beahall;
	}
	public int getBedel() {
		return bedel;
	}
	public void setBedel(int bedel) {
		this.bedel = bedel;
	}
	public int getBedisin() {
		return bedisin;
	}
	public void setBedisin(int bedisin) {
		this.bedisin = bedisin;
	}
	public int getBeirrit() {
		return beirrit;
	}
	public void setBeirrit(int beirrit) {
		this.beirrit = beirrit;
	}
	public int getBeagit() {
		return beagit;
	}
	public void setBeagit(int beagit) {
		this.beagit = beagit;
	}
	public int getBeperch() {
		return beperch;
	}
	public void setBeperch(int beperch) {
		this.beperch = beperch;
	}
	public int getBerem() {
		return berem;
	}
	public void setBerem(int berem) {
		this.berem = berem;
	}
	public int getBeremago() {
		return beremago;
	}
	public void setBeremago(int beremago) {
		this.beremago = beremago;
	}
	public int getBeanx() {
		return beanx;
	}
	public void setBeanx(int beanx) {
		this.beanx = beanx;
	}
	public int getBeothr() {
		return beothr;
	}
	public void setBeothr(int beothr) {
		this.beothr = beothr;
	}
	public String getBeothrx() {
		return beothrx;
	}
	public void setBeothrx(String beothrx) {
		this.beothrx = beothrx;
	}
	public int getBefpred() {
		return befpred;
	}
	public void setBefpred(int befpred) {
		this.befpred = befpred;
	}
	public String getBefpredx() {
		return befpredx;
	}
	public void setBefpredx(String befpredx) {
		this.befpredx = befpredx;
	}
	public int getBemode() {
		return bemode;
	}
	public void setBemode(int bemode) {
		this.bemode = bemode;
	}
	public String getBemodex() {
		return bemodex;
	}
	public void setBemodex(String bemodex) {
		this.bemodex = bemodex;
	}
	public int getBeage() {
		return beage;
	}
	public void setBeage(int beage) {
		this.beage = beage;
	}
	public int getDecclmot() {
		return decclmot;
	}
	public void setDecclmot(int decclmot) {
		this.decclmot = decclmot;
	}
	public int getMogait() {
		return mogait;
	}
	public void setMogait(int mogait) {
		this.mogait = mogait;
	}
	public int getMofalls() {
		return mofalls;
	}
	public void setMofalls(int mofalls) {
		this.mofalls = mofalls;
	}
	public int getMotrem() {
		return motrem;
	}
	public void setMotrem(int motrem) {
		this.motrem = motrem;
	}
	public int getMoslow() {
		return moslow;
	}
	public void setMoslow(int moslow) {
		this.moslow = moslow;
	}
	public int getMofrst() {
		return mofrst;
	}
	public void setMofrst(int mofrst) {
		this.mofrst = mofrst;
	}
	public int getMomode() {
		return momode;
	}
	public void setMomode(int momode) {
		this.momode = momode;
	}
	public String getMomodex() {
		return momodex;
	}
	public void setMomodex(String momodex) {
		this.momodex = momodex;
	}
	public int getMomopark() {
		return momopark;
	}
	public void setMomopark(int momopark) {
		this.momopark = momopark;
	}
	public int getParkage() {
		return parkage;
	}
	public void setParkage(int parkage) {
		this.parkage = parkage;
	}
	public int getMomoals() {
		return momoals;
	}
	public void setMomoals(int momoals) {
		this.momoals = momoals;
	}
	public int getAlsage() {
		return alsage;
	}
	public void setAlsage(int alsage) {
		this.alsage = alsage;
	}
	public int getMoage() {
		return moage;
	}
	public void setMoage(int moage) {
		this.moage = moage;
	}
	public int getCourse() {
		return course;
	}
	public void setCourse(int course) {
		this.course = course;
	}
	public int getFrstchg() {
		return frstchg;
	}
	public void setFrstchg(int frstchg) {
		this.frstchg = frstchg;
	}
	public int getLbdeval() {
		return lbdeval;
	}
	public void setLbdeval(int lbdeval) {
		this.lbdeval = lbdeval;
	}
	public int getFtldeval() {
		return ftldeval;
	}
	public void setFtldeval(int ftldeval) {
		this.ftldeval = ftldeval;
	}
}
