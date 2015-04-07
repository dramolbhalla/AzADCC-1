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
public class FollowupC1 implements Serializable{
	/*User user;
	Subject subject;
	Header header;*/
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	int c1;
	@Column
	int mmsecomp;
	@Column
	int mmsereas;
	@Column
	int mmseloc;
	@Column
	int mmselan;
	@Column
	String mmselanx;
	@Column
	int mmsevis;
	@Column
	int mmsehear;
	@Column
	int mmseorda;
	@Column
	int mmseorlo;
	@Column
	int pentagon;
	@Column
	int mmse;
	@Column
	int npsycloc;
	@Column
	int npsylan;
	@Column
	String npsylanx;
	@Column
	int logimo;
	@Column
	int logiday;
	@Column
	int logiyr;
	@Column
	int logiprev;
	@Column
	int logimem;
	@Column
	int udsbentc;
	@Column
	int digif;
	@Column
	int digiflen;
	@Column
	int digib;
	@Column
	int digiblen;
	@Column
	int animals;
	@Column
	int veg;
	@Column
	int traila;
	@Column
	int trailarr;
	@Column
	int trailali;
	@Column
	int trailb;
	@Column
	int trailbrr;
	@Column
	int trailbli;
	@Column
	int memunits;
	@Column
	int memtime;
	@Column
	int udsbentd;
	@Column
	int udsbenrs;
	@Column
	int boston;
	@Column
	int udsverfc;
	@Column
	int udsverfn;
	@Column
	int udsvernf;
	@Column
	int udsverlc;
	@Column
	int udsverlr;
	@Column
	int udsverln;
	@Column
	int udsvertn;
	@Column
	int udsverte;
	@Column
	int udsverti;
	@Column
	int cogstat;
	
	public FollowupC1() {
		super();
	}

	public FollowupC1(int c1, int mmsecomp, int mmsereas, int mmseloc, int mmselan,
			String mmselanx, int mmsevis, int mmsehear, int mmseorda,
			int mmseorlo, int pentagon, int mmse, int npsycloc, int npsylan,
			String npsylanx, int logimo, int logiday, int logiyr, int logiprev,
			int logimem, int udsbentc, int digif, int digiflen, int digib,
			int digiblen, int animals, int veg, int traila, int trailarr,
			int trailali, int trailb, int trailbrr, int trailbli, int memunits,
			int memtime, int udsbentd, int udsbenrs, int boston, int udsverfc,
			int udsverfn, int udsvernf, int udsverlc, int udsverlr,
			int udsverln, int udsvertn, int udsverte, int udsverti, int cogstat) {
		super();
		this.c1 = c1;
		this.mmsecomp = mmsecomp;
		this.mmsereas = mmsereas;
		this.mmseloc = mmseloc;
		this.mmselan = mmselan;
		this.mmselanx = mmselanx;
		this.mmsevis = mmsevis;
		this.mmsehear = mmsehear;
		this.mmseorda = mmseorda;
		this.mmseorlo = mmseorlo;
		this.pentagon = pentagon;
		this.mmse = mmse;
		this.npsycloc = npsycloc;
		this.npsylan = npsylan;
		this.npsylanx = npsylanx;
		this.logimo = logimo;
		this.logiday = logiday;
		this.logiyr = logiyr;
		this.logiprev = logiprev;
		this.logimem = logimem;
		this.udsbentc = udsbentc;
		this.digif = digif;
		this.digiflen = digiflen;
		this.digib = digib;
		this.digiblen = digiblen;
		this.animals = animals;
		this.veg = veg;
		this.traila = traila;
		this.trailarr = trailarr;
		this.trailali = trailali;
		this.trailb = trailb;
		this.trailbrr = trailbrr;
		this.trailbli = trailbli;
		this.memunits = memunits;
		this.memtime = memtime;
		this.udsbentd = udsbentd;
		this.udsbenrs = udsbenrs;
		this.boston = boston;
		this.udsverfc = udsverfc;
		this.udsverfn = udsverfn;
		this.udsvernf = udsvernf;
		this.udsverlc = udsverlc;
		this.udsverlr = udsverlr;
		this.udsverln = udsverln;
		this.udsvertn = udsvertn;
		this.udsverte = udsverte;
		this.udsverti = udsverti;
		this.cogstat = cogstat;
	}

	/*public C1(User user, Subject subject, Header header, int c1, int mmsecomp,
			int mmsereas, int mmseloc, int mmselan, String mmselanx,
			int mmsevis, int mmsehear, int mmseorda, int mmseorlo,
			int pentagon, int mmse, int npsycloc, int npsylan, String npsylanx,
			int logimo, int logiday, int logiyr, int logiprev, int logimem,
			int udsbentc, int digif, int digiflen, int digib, int digiblen,
			int animals, int veg, int traila, int trailarr, int trailali,
			int trailb, int trailbrr, int trailbli, int memunits, int memtime,
			int udsbentd, int udsbenrs, int boston, int udsverfc, int udsverfn,
			int udsvernf, int udsverlc, int udsverlr, int udsverln,
			int udsvertn, int udsverte, int udsverti, int cogstat) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.c1 = c1;
		this.mmsecomp = mmsecomp;
		this.mmsereas = mmsereas;
		this.mmseloc = mmseloc;
		this.mmselan = mmselan;
		this.mmselanx = mmselanx;
		this.mmsevis = mmsevis;
		this.mmsehear = mmsehear;
		this.mmseorda = mmseorda;
		this.mmseorlo = mmseorlo;
		this.pentagon = pentagon;
		this.mmse = mmse;
		this.npsycloc = npsycloc;
		this.npsylan = npsylan;
		this.npsylanx = npsylanx;
		this.logimo = logimo;
		this.logiday = logiday;
		this.logiyr = logiyr;
		this.logiprev = logiprev;
		this.logimem = logimem;
		this.udsbentc = udsbentc;
		this.digif = digif;
		this.digiflen = digiflen;
		this.digib = digib;
		this.digiblen = digiblen;
		this.animals = animals;
		this.veg = veg;
		this.traila = traila;
		this.trailarr = trailarr;
		this.trailali = trailali;
		this.trailb = trailb;
		this.trailbrr = trailbrr;
		this.trailbli = trailbli;
		this.memunits = memunits;
		this.memtime = memtime;
		this.udsbentd = udsbentd;
		this.udsbenrs = udsbenrs;
		this.boston = boston;
		this.udsverfc = udsverfc;
		this.udsverfn = udsverfn;
		this.udsvernf = udsvernf;
		this.udsverlc = udsverlc;
		this.udsverlr = udsverlr;
		this.udsverln = udsverln;
		this.udsvertn = udsvertn;
		this.udsverte = udsverte;
		this.udsverti = udsverti;
		this.cogstat = cogstat;
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
	public int getC1() {
		return c1;
	}

	public void setC1(int c1) {
		this.c1 = c1;
	}

	public int getMmsecomp() {
		return mmsecomp;
	}

	public void setMmsecomp(int mmsecomp) {
		this.mmsecomp = mmsecomp;
	}

	public int getMmsereas() {
		return mmsereas;
	}

	public void setMmsereas(int mmsereas) {
		this.mmsereas = mmsereas;
	}

	public int getMmseloc() {
		return mmseloc;
	}

	public void setMmseloc(int mmseloc) {
		this.mmseloc = mmseloc;
	}

	public int getMmselan() {
		return mmselan;
	}

	public void setMmselan(int mmselan) {
		this.mmselan = mmselan;
	}

	public String getMmselanx() {
		return mmselanx;
	}

	public void setMmselanx(String mmselanx) {
		this.mmselanx = mmselanx;
	}

	public int getMmsevis() {
		return mmsevis;
	}

	public void setMmsevis(int mmsevis) {
		this.mmsevis = mmsevis;
	}

	public int getMmsehear() {
		return mmsehear;
	}

	public void setMmsehear(int mmsehear) {
		this.mmsehear = mmsehear;
	}

	public int getMmseorda() {
		return mmseorda;
	}

	public void setMmseorda(int mmseorda) {
		this.mmseorda = mmseorda;
	}

	public int getMmseorlo() {
		return mmseorlo;
	}

	public void setMmseorlo(int mmseorlo) {
		this.mmseorlo = mmseorlo;
	}

	public int getPentagon() {
		return pentagon;
	}

	public void setPentagon(int pentagon) {
		this.pentagon = pentagon;
	}

	public int getMmse() {
		return mmse;
	}

	public void setMmse(int mmse) {
		this.mmse = mmse;
	}

	public int getNpsycloc() {
		return npsycloc;
	}

	public void setNpsycloc(int npsycloc) {
		this.npsycloc = npsycloc;
	}

	public int getNpsylan() {
		return npsylan;
	}

	public void setNpsylan(int npsylan) {
		this.npsylan = npsylan;
	}

	public String getNpsylanx() {
		return npsylanx;
	}

	public void setNpsylanx(String npsylanx) {
		this.npsylanx = npsylanx;
	}

	public int getLogimo() {
		return logimo;
	}

	public void setLogimo(int logimo) {
		this.logimo = logimo;
	}

	@Id
	@GeneratedValue
	public int getLogiday() {
		return logiday;
	}

	public void setLogiday(int logiday) {
		this.logiday = logiday;
	}

	public int getLogiyr() {
		return logiyr;
	}

	public void setLogiyr(int logiyr) {
		this.logiyr = logiyr;
	}

	public int getLogiprev() {
		return logiprev;
	}

	public void setLogiprev(int logiprev) {
		this.logiprev = logiprev;
	}

	public int getLogimem() {
		return logimem;
	}

	public void setLogimem(int logimem) {
		this.logimem = logimem;
	}

	public int getUdsbentc() {
		return udsbentc;
	}

	public void setUdsbentc(int udsbentc) {
		this.udsbentc = udsbentc;
	}

	public int getDigif() {
		return digif;
	}

	public void setDigif(int digif) {
		this.digif = digif;
	}

	public int getDigiflen() {
		return digiflen;
	}

	public void setDigiflen(int digiflen) {
		this.digiflen = digiflen;
	}

	public int getDigib() {
		return digib;
	}

	public void setDigib(int digib) {
		this.digib = digib;
	}

	public int getDigiblen() {
		return digiblen;
	}

	public void setDigiblen(int digiblen) {
		this.digiblen = digiblen;
	}

	public int getAnimals() {
		return animals;
	}

	public void setAnimals(int animals) {
		this.animals = animals;
	}

	public int getVeg() {
		return veg;
	}

	public void setVeg(int veg) {
		this.veg = veg;
	}

	public int getTraila() {
		return traila;
	}

	public void setTraila(int traila) {
		this.traila = traila;
	}

	public int getTrailarr() {
		return trailarr;
	}

	public void setTrailarr(int trailarr) {
		this.trailarr = trailarr;
	}

	public int getTrailali() {
		return trailali;
	}

	public void setTrailali(int trailali) {
		this.trailali = trailali;
	}

	public int getTrailb() {
		return trailb;
	}

	public void setTrailb(int trailb) {
		this.trailb = trailb;
	}

	public int getTrailbrr() {
		return trailbrr;
	}

	public void setTrailbrr(int trailbrr) {
		this.trailbrr = trailbrr;
	}

	public int getTrailbli() {
		return trailbli;
	}

	public void setTrailbli(int trailbli) {
		this.trailbli = trailbli;
	}

	public int getMemunits() {
		return memunits;
	}

	public void setMemunits(int memunits) {
		this.memunits = memunits;
	}

	public int getMemtime() {
		return memtime;
	}

	public void setMemtime(int memtime) {
		this.memtime = memtime;
	}

	public int getUdsbentd() {
		return udsbentd;
	}

	public void setUdsbentd(int udsbentd) {
		this.udsbentd = udsbentd;
	}

	public int getUdsbenrs() {
		return udsbenrs;
	}

	public void setUdsbenrs(int udsbenrs) {
		this.udsbenrs = udsbenrs;
	}

	public int getBoston() {
		return boston;
	}

	public void setBoston(int boston) {
		this.boston = boston;
	}

	public int getUdsverfc() {
		return udsverfc;
	}

	public void setUdsverfc(int udsverfc) {
		this.udsverfc = udsverfc;
	}

	public int getUdsverfn() {
		return udsverfn;
	}

	public void setUdsverfn(int udsverfn) {
		this.udsverfn = udsverfn;
	}

	public int getUdsvernf() {
		return udsvernf;
	}

	public void setUdsvernf(int udsvernf) {
		this.udsvernf = udsvernf;
	}

	public int getUdsverlc() {
		return udsverlc;
	}

	public void setUdsverlc(int udsverlc) {
		this.udsverlc = udsverlc;
	}

	public int getUdsverlr() {
		return udsverlr;
	}

	public void setUdsverlr(int udsverlr) {
		this.udsverlr = udsverlr;
	}

	public int getUdsverln() {
		return udsverln;
	}

	public void setUdsverln(int udsverln) {
		this.udsverln = udsverln;
	}

	public int getUdsvertn() {
		return udsvertn;
	}

	public void setUdsvertn(int udsvertn) {
		this.udsvertn = udsvertn;
	}

	public int getUdsverte() {
		return udsverte;
	}

	public void setUdsverte(int udsverte) {
		this.udsverte = udsverte;
	}

	public int getUdsverti() {
		return udsverti;
	}

	public void setUdsverti(int udsverti) {
		this.udsverti = udsverti;
	}

	public int getCogstat() {
		return cogstat;
	}

	public void setCogstat(int cogstat) {
		this.cogstat = cogstat;
	}
	
}
