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
public class InitialB8 implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	User user;
//	Subject subject;
//	Header header;
//	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber 
	 int b8;
		@Column 
	 int normexam;
		@Column 
	 int parksign;
		@Column 
	 int resttrl;
		@Column 
	 int resttrr;
		@Column 
	 int slowingl;
		@Column 
	 int slowingr;
		@Column 
	 int rigidl;
		@Column 
	 int rigidr;
		@Column 
	 int brady;
		@Column 
	 int parkgait;
		@Column 
	 int postinst;
		@Column 
	 int cvdsigns;
		@Column 
	 int cortdef;
		@Column 
	 int sivdfind;
		@Column 
	 int cvdmotl;
		@Column 
	 int cvdmotr;
		@Column 
	 int cortvisl;
		@Column 
	 int cortvisr;
		@Column 
	 int somatl;
		@Column 
	 int somatr;
		@Column 
	 int postcort;
		@Column 
	 int pspcbs;
		@Column 
	 int eyepsp;
		@Column 
	 int dyspsp;
		@Column 
	 int axialpsp;
		@Column 
	 int gaitpsp;
		@Column 
	 int apraxsp;
		@Column 
	 int apraxl;
		@Column 
	 int apraxr;
		@Column 
	 int cortsenl;
		@Column 
	 int cortsenr;
		@Column 
	 int ataxl;
		@Column 
	 int ataxr;
		@Column 
	 int alienlml;
		@Column 
	 int alienlmr;
		@Column 
	 int dystonl;
		@Column 
	 int dystonr;
		@Column 
	 int myocllt;
		@Column 
	 int myoclrt;
		@Column 
	 int alsfind;
		@Column 
	 int gaitnph;
		@Column 
	 int othneur;
		@Column 
	 String othneurx;
		

	public InitialB8() {
		super();
	}
	
	public InitialB8(int b8, int normexam, int parksign, int resttrl, int resttrr,
			int slowingl, int slowingr, int rigidl, int rigidr, int brady,
			int parkgait, int postinst, int cvdsigns, int cortdef,
			int sivdfind, int cvdmotl, int cvdmotr, int cortvisl, int cortvisr,
			int somatl, int somatr, int postcort, int pspcbs, int eyepsp,
			int dyspsp, int axialpsp, int gaitpsp, int apraxsp, int apraxl,
			int apraxr, int cortsenl, int cortsenr, int ataxl, int ataxr,
			int alienlml, int alienlmr, int dystonl, int dystonr, int myocllt,
			int myoclrt, int alsfind, int gaitnph, int othneur, String othneurx) {
		super();
		this.b8 = b8;
		this.normexam = normexam;
		this.parksign = parksign;
		this.resttrl = resttrl;
		this.resttrr = resttrr;
		this.slowingl = slowingl;
		this.slowingr = slowingr;
		this.rigidl = rigidl;
		this.rigidr = rigidr;
		this.brady = brady;
		this.parkgait = parkgait;
		this.postinst = postinst;
		this.cvdsigns = cvdsigns;
		this.cortdef = cortdef;
		this.sivdfind = sivdfind;
		this.cvdmotl = cvdmotl;
		this.cvdmotr = cvdmotr;
		this.cortvisl = cortvisl;
		this.cortvisr = cortvisr;
		this.somatl = somatl;
		this.somatr = somatr;
		this.postcort = postcort;
		this.pspcbs = pspcbs;
		this.eyepsp = eyepsp;
		this.dyspsp = dyspsp;
		this.axialpsp = axialpsp;
		this.gaitpsp = gaitpsp;
		this.apraxsp = apraxsp;
		this.apraxl = apraxl;
		this.apraxr = apraxr;
		this.cortsenl = cortsenl;
		this.cortsenr = cortsenr;
		this.ataxl = ataxl;
		this.ataxr = ataxr;
		this.alienlml = alienlml;
		this.alienlmr = alienlmr;
		this.dystonl = dystonl;
		this.dystonr = dystonr;
		this.myocllt = myocllt;
		this.myoclrt = myoclrt;
		this.alsfind = alsfind;
		this.gaitnph = gaitnph;
		this.othneur = othneur;
		this.othneurx = othneurx;
	}
	
//	public InitialB8(User user, Subject subject, Header header, int b8, int normexam,
//			int parksign, int resttrl, int resttrr, int slowingl, int slowingr,
//			int rigidl, int rigidr, int brady, int parkgait, int postinst,
//			int cvdsigns, int cortdef, int sivdfind, int cvdmotl, int cvdmotr,
//			int cortvisl, int cortvisr, int somatl, int somatr, int postcort,
//			int pspcbs, int eyepsp, int dyspsp, int axialpsp, int gaitpsp,
//			int apraxsp, int apraxl, int apraxr, int cortsenl, int cortsenr,
//			int ataxl, int ataxr, int alienlml, int alienlmr, int dystonl,
//			int dystonr, int myocllt, int myoclrt, int alsfind, int gaitnph,
//			int othneur, String othneurx) {
//		super();
//		this.user = user;
//		this.subject = subject;
//		this.header = header;
//		this.b8 = b8;
//		this.normexam = normexam;
//		this.parksign = parksign;
//		this.resttrl = resttrl;
//		this.resttrr = resttrr;
//		this.slowingl = slowingl;
//		this.slowingr = slowingr;
//		this.rigidl = rigidl;
//		this.rigidr = rigidr;
//		this.brady = brady;
//		this.parkgait = parkgait;
//		this.postinst = postinst;
//		this.cvdsigns = cvdsigns;
//		this.cortdef = cortdef;
//		this.sivdfind = sivdfind;
//		this.cvdmotl = cvdmotl;
//		this.cvdmotr = cvdmotr;
//		this.cortvisl = cortvisl;
//		this.cortvisr = cortvisr;
//		this.somatl = somatl;
//		this.somatr = somatr;
//		this.postcort = postcort;
//		this.pspcbs = pspcbs;
//		this.eyepsp = eyepsp;
//		this.dyspsp = dyspsp;
//		this.axialpsp = axialpsp;
//		this.gaitpsp = gaitpsp;
//		this.apraxsp = apraxsp;
//		this.apraxl = apraxl;
//		this.apraxr = apraxr;
//		this.cortsenl = cortsenl;
//		this.cortsenr = cortsenr;
//		this.ataxl = ataxl;
//		this.ataxr = ataxr;
//		this.alienlml = alienlml;
//		this.alienlmr = alienlmr;
//		this.dystonl = dystonl;
//		this.dystonr = dystonr;
//		this.myocllt = myocllt;
//		this.myoclrt = myoclrt;
//		this.alsfind = alsfind;
//		this.gaitnph = gaitnph;
//		this.othneur = othneur;
//		this.othneurx = othneurx;
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
	public int getB8() {
		return b8;
	}
	public void setB8(int b8) {
		this.b8 = b8;
	}
	public int getNormexam() {
		return normexam;
	}
	public void setNormexam(int normexam) {
		this.normexam = normexam;
	}
	public int getParksign() {
		return parksign;
	}
	public void setParksign(int parksign) {
		this.parksign = parksign;
	}
	public int getResttrl() {
		return resttrl;
	}
	public void setResttrl(int resttrl) {
		this.resttrl = resttrl;
	}
	public int getResttrr() {
		return resttrr;
	}
	public void setResttrr(int resttrr) {
		this.resttrr = resttrr;
	}
	public int getSlowingl() {
		return slowingl;
	}
	public void setSlowingl(int slowingl) {
		this.slowingl = slowingl;
	}
	public int getSlowingr() {
		return slowingr;
	}
	public void setSlowingr(int slowingr) {
		this.slowingr = slowingr;
	}
	@Id
	@GeneratedValue
	public int getRigidl() {
		return rigidl;
	}
	public void setRigidl(int rigidl) {
		this.rigidl = rigidl;
	}
	public int getRigidr() {
		return rigidr;
	}
	public void setRigidr(int rigidr) {
		this.rigidr = rigidr;
	}
	public int getBrady() {
		return brady;
	}
	public void setBrady(int brady) {
		this.brady = brady;
	}
	public int getParkgait() {
		return parkgait;
	}
	public void setParkgait(int parkgait) {
		this.parkgait = parkgait;
	}
	public int getPostinst() {
		return postinst;
	}
	public void setPostinst(int postinst) {
		this.postinst = postinst;
	}
	public int getCvdsigns() {
		return cvdsigns;
	}
	public void setCvdsigns(int cvdsigns) {
		this.cvdsigns = cvdsigns;
	}
	public int getCortdef() {
		return cortdef;
	}
	public void setCortdef(int cortdef) {
		this.cortdef = cortdef;
	}
	public int getSivdfind() {
		return sivdfind;
	}
	public void setSivdfind(int sivdfind) {
		this.sivdfind = sivdfind;
	}
	public int getCvdmotl() {
		return cvdmotl;
	}
	public void setCvdmotl(int cvdmotl) {
		this.cvdmotl = cvdmotl;
	}
	public int getCvdmotr() {
		return cvdmotr;
	}
	public void setCvdmotr(int cvdmotr) {
		this.cvdmotr = cvdmotr;
	}
	public int getCortvisl() {
		return cortvisl;
	}
	public void setCortvisl(int cortvisl) {
		this.cortvisl = cortvisl;
	}
	public int getCortvisr() {
		return cortvisr;
	}
	public void setCortvisr(int cortvisr) {
		this.cortvisr = cortvisr;
	}
	public int getSomatl() {
		return somatl;
	}
	public void setSomatl(int somatl) {
		this.somatl = somatl;
	}
	public int getSomatr() {
		return somatr;
	}
	public void setSomatr(int somatr) {
		this.somatr = somatr;
	}
	public int getPostcort() {
		return postcort;
	}
	public void setPostcort(int postcort) {
		this.postcort = postcort;
	}
	public int getPspcbs() {
		return pspcbs;
	}
	public void setPspcbs(int pspcbs) {
		this.pspcbs = pspcbs;
	}
	public int getEyepsp() {
		return eyepsp;
	}
	public void setEyepsp(int eyepsp) {
		this.eyepsp = eyepsp;
	}
	public int getDyspsp() {
		return dyspsp;
	}
	public void setDyspsp(int dyspsp) {
		this.dyspsp = dyspsp;
	}
	public int getAxialpsp() {
		return axialpsp;
	}
	public void setAxialpsp(int axialpsp) {
		this.axialpsp = axialpsp;
	}
	public int getGaitpsp() {
		return gaitpsp;
	}
	public void setGaitpsp(int gaitpsp) {
		this.gaitpsp = gaitpsp;
	}
	public int getApraxsp() {
		return apraxsp;
	}
	public void setApraxsp(int apraxsp) {
		this.apraxsp = apraxsp;
	}
	public int getApraxl() {
		return apraxl;
	}
	public void setApraxl(int apraxl) {
		this.apraxl = apraxl;
	}
	public int getApraxr() {
		return apraxr;
	}
	public void setApraxr(int apraxr) {
		this.apraxr = apraxr;
	}
	public int getCortsenl() {
		return cortsenl;
	}
	public void setCortsenl(int cortsenl) {
		this.cortsenl = cortsenl;
	}
	public int getCortsenr() {
		return cortsenr;
	}
	public void setCortsenr(int cortsenr) {
		this.cortsenr = cortsenr;
	}
	public int getAtaxl() {
		return ataxl;
	}
	public void setAtaxl(int ataxl) {
		this.ataxl = ataxl;
	}
	public int getAtaxr() {
		return ataxr;
	}
	public void setAtaxr(int ataxr) {
		this.ataxr = ataxr;
	}
	public int getAlienlml() {
		return alienlml;
	}
	public void setAlienlml(int alienlml) {
		this.alienlml = alienlml;
	}
	public int getAlienlmr() {
		return alienlmr;
	}
	public void setAlienlmr(int alienlmr) {
		this.alienlmr = alienlmr;
	}
	public int getDystonl() {
		return dystonl;
	}
	public void setDystonl(int dystonl) {
		this.dystonl = dystonl;
	}
	public int getDystonr() {
		return dystonr;
	}
	public void setDystonr(int dystonr) {
		this.dystonr = dystonr;
	}
	public int getMyocllt() {
		return myocllt;
	}
	public void setMyocllt(int myocllt) {
		this.myocllt = myocllt;
	}
	public int getMyoclrt() {
		return myoclrt;
	}
	public void setMyoclrt(int myoclrt) {
		this.myoclrt = myoclrt;
	}
	public int getAlsfind() {
		return alsfind;
	}
	public void setAlsfind(int alsfind) {
		this.alsfind = alsfind;
	}
	public int getGaitnph() {
		return gaitnph;
	}
	public void setGaitnph(int gaitnph) {
		this.gaitnph = gaitnph;
	}
	public int getOthneur() {
		return othneur;
	}
	public void setOthneur(int othneur) {
		this.othneur = othneur;
	}
	public String getOthneurx() {
		return othneurx;
	}
	public void setOthneurx(String othneurx) {
		this.othneurx = othneurx;
	}
}
