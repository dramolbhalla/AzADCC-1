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
public class FollowupC2 implements Serializable{
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
	int c2;
	@Column
	int mocacomp;
	@Column
	int mocareas;
	@Column
	int mocaloc;
	@Column
	int mocalan;
	@Column
	String mocalanx;
	@Column
	int mocavis;
	@Column
	int mocahear;
	@Column
	int mocatots;
	@Column
	int mocatrai;
	@Column
	int mocacube;
	@Column
	int mocacloc;
	@Column
	int mocaclon;
	@Column
	int mocacloh;
	@Column
	int mocanami;
	@Column
	int mocaregi;
	@Column
	int mocadigi;
	@Column
	int mocalett;
	@Column
	int mocaser7;
	@Column
	int mocarepe;
	@Column
	int mocaflue;
	@Column
	int mocaabst;
	@Column
	int mocarecn;
	@Column
	int mocarecc;
	@Column
	int mocarecr;
	@Column
	int mocaordt;
	@Column
	int mocaormo;
	@Column
	int mocaoryr;
	@Column
	int mocaordy;
	@Column
	int mocaorpl;
	@Column
	int mocaorct;
	@Column
	int npsycloc;
	@Column
	int npsylan;
	@Column
	String npsylanx;
	@Column
	int craftvrs;
	@Column
	int crafturs;
	@Column
	int udsbentc;
	@Column
	int digforct;
	@Column
	int digforsl;
	@Column
	int digbacct;
	@Column
	int digbacls;
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
	int craftdvr;
	@Column
	int craftdre;
	@Column
	int craftdti;
	@Column
	int craftcue;
	@Column
	int udsbentd;
	@Column
	int udsbenrs;
	@Column
	int minttots;
	@Column
	int minttotw;
	@Column
	int mintscng;
	@Column
	int mintscnc;
	@Column
	int mintpcng;
	@Column
	int mintpcnc;
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
	
	public FollowupC2() {
		super();
	}

	public FollowupC2(int c2, int mocacomp, int mocareas, int mocaloc, int mocalan,
			String mocalanx, int mocavis, int mocahear, int mocatots,
			int mocatrai, int mocacube, int mocacloc, int mocaclon,
			int mocacloh, int mocanami, int mocaregi, int mocadigi,
			int mocalett, int mocaser7, int mocarepe, int mocaflue,
			int mocaabst, int mocarecn, int mocarecc, int mocarecr,
			int mocaordt, int mocaormo, int mocaoryr, int mocaordy,
			int mocaorpl, int mocaorct, int npsycloc, int npsylan,
			String npsylanx, int craftvrs, int crafturs, int udsbentc,
			int digforct, int digforsl, int digbacct, int digbacls,
			int animals, int veg, int traila, int trailarr, int trailali,
			int trailb, int trailbrr, int trailbli, int craftdvr, int craftdre,
			int craftdti, int craftcue, int udsbentd, int udsbenrs,
			int minttots, int minttotw, int mintscng, int mintscnc,
			int mintpcng, int mintpcnc, int udsverfc, int udsverfn,
			int udsvernf, int udsverlc, int udsverlr, int udsverln,
			int udsvertn, int udsverte, int udsverti, int cogstat) {
		super();
		this.c2 = c2;
		this.mocacomp = mocacomp;
		this.mocareas = mocareas;
		this.mocaloc = mocaloc;
		this.mocalan = mocalan;
		this.mocalanx = mocalanx;
		this.mocavis = mocavis;
		this.mocahear = mocahear;
		this.mocatots = mocatots;
		this.mocatrai = mocatrai;
		this.mocacube = mocacube;
		this.mocacloc = mocacloc;
		this.mocaclon = mocaclon;
		this.mocacloh = mocacloh;
		this.mocanami = mocanami;
		this.mocaregi = mocaregi;
		this.mocadigi = mocadigi;
		this.mocalett = mocalett;
		this.mocaser7 = mocaser7;
		this.mocarepe = mocarepe;
		this.mocaflue = mocaflue;
		this.mocaabst = mocaabst;
		this.mocarecn = mocarecn;
		this.mocarecc = mocarecc;
		this.mocarecr = mocarecr;
		this.mocaordt = mocaordt;
		this.mocaormo = mocaormo;
		this.mocaoryr = mocaoryr;
		this.mocaordy = mocaordy;
		this.mocaorpl = mocaorpl;
		this.mocaorct = mocaorct;
		this.npsycloc = npsycloc;
		this.npsylan = npsylan;
		this.npsylanx = npsylanx;
		this.craftvrs = craftvrs;
		this.crafturs = crafturs;
		this.udsbentc = udsbentc;
		this.digforct = digforct;
		this.digforsl = digforsl;
		this.digbacct = digbacct;
		this.digbacls = digbacls;
		this.animals = animals;
		this.veg = veg;
		this.traila = traila;
		this.trailarr = trailarr;
		this.trailali = trailali;
		this.trailb = trailb;
		this.trailbrr = trailbrr;
		this.trailbli = trailbli;
		this.craftdvr = craftdvr;
		this.craftdre = craftdre;
		this.craftdti = craftdti;
		this.craftcue = craftcue;
		this.udsbentd = udsbentd;
		this.udsbenrs = udsbenrs;
		this.minttots = minttots;
		this.minttotw = minttotw;
		this.mintscng = mintscng;
		this.mintscnc = mintscnc;
		this.mintpcng = mintpcng;
		this.mintpcnc = mintpcnc;
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

	/*public C2(User user, Subject subject, Header header, int c2, int mocacomp,
			int mocareas, int mocaloc, int mocalan, String mocalanx,
			int mocavis, int mocahear, int mocatots, int mocatrai,
			int mocacube, int mocacloc, int mocaclon, int mocacloh,
			int mocanami, int mocaregi, int mocadigi, int mocalett,
			int mocaser7, int mocarepe, int mocaflue, int mocaabst,
			int mocarecn, int mocarecc, int mocarecr, int mocaordt,
			int mocaormo, int mocaoryr, int mocaordy, int mocaorpl,
			int mocaorct, int npsycloc, int npsylan, String npsylanx,
			int craftvrs, int crafturs, int udsbentc, int digforct,
			int digforsl, int digbacct, int digbacls, int animals, int veg,
			int traila, int trailarr, int trailali, int trailb, int trailbrr,
			int trailbli, int craftdvr, int craftdre, int craftdti,
			int craftcue, int udsbentd, int udsbenrs, int minttots,
			int minttotw, int mintscng, int mintscnc, int mintpcng,
			int mintpcnc, int udsverfc, int udsverfn, int udsvernf,
			int udsverlc, int udsverlr, int udsverln, int udsvertn,
			int udsverte, int udsverti, int cogstat) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.c2 = c2;
		this.mocacomp = mocacomp;
		this.mocareas = mocareas;
		this.mocaloc = mocaloc;
		this.mocalan = mocalan;
		this.mocalanx = mocalanx;
		this.mocavis = mocavis;
		this.mocahear = mocahear;
		this.mocatots = mocatots;
		this.mocatrai = mocatrai;
		this.mocacube = mocacube;
		this.mocacloc = mocacloc;
		this.mocaclon = mocaclon;
		this.mocacloh = mocacloh;
		this.mocanami = mocanami;
		this.mocaregi = mocaregi;
		this.mocadigi = mocadigi;
		this.mocalett = mocalett;
		this.mocaser7 = mocaser7;
		this.mocarepe = mocarepe;
		this.mocaflue = mocaflue;
		this.mocaabst = mocaabst;
		this.mocarecn = mocarecn;
		this.mocarecc = mocarecc;
		this.mocarecr = mocarecr;
		this.mocaordt = mocaordt;
		this.mocaormo = mocaormo;
		this.mocaoryr = mocaoryr;
		this.mocaordy = mocaordy;
		this.mocaorpl = mocaorpl;
		this.mocaorct = mocaorct;
		this.npsycloc = npsycloc;
		this.npsylan = npsylan;
		this.npsylanx = npsylanx;
		this.craftvrs = craftvrs;
		this.crafturs = crafturs;
		this.udsbentc = udsbentc;
		this.digforct = digforct;
		this.digforsl = digforsl;
		this.digbacct = digbacct;
		this.digbacls = digbacls;
		this.animals = animals;
		this.veg = veg;
		this.traila = traila;
		this.trailarr = trailarr;
		this.trailali = trailali;
		this.trailb = trailb;
		this.trailbrr = trailbrr;
		this.trailbli = trailbli;
		this.craftdvr = craftdvr;
		this.craftdre = craftdre;
		this.craftdti = craftdti;
		this.craftcue = craftcue;
		this.udsbentd = udsbentd;
		this.udsbenrs = udsbenrs;
		this.minttots = minttots;
		this.minttotw = minttotw;
		this.mintscng = mintscng;
		this.mintscnc = mintscnc;
		this.mintpcng = mintpcng;
		this.mintpcnc = mintpcnc;
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
	}*/
	public int getC2() {
		return c2;
	}
	public void setC2(int c2) {
		this.c2 = c2;
	}
	public int getMocacomp() {
		return mocacomp;
	}
	public void setMocacomp(int mocacomp) {
		this.mocacomp = mocacomp;
	}
	public int getMocareas() {
		return mocareas;
	}
	public void setMocareas(int mocareas) {
		this.mocareas = mocareas;
	}
	public int getMocaloc() {
		return mocaloc;
	}
	public void setMocaloc(int mocaloc) {
		this.mocaloc = mocaloc;
	}
	public int getMocalan() {
		return mocalan;
	}
	public void setMocalan(int mocalan) {
		this.mocalan = mocalan;
	}
	public String getMocalanx() {
		return mocalanx;
	}
	public void setMocalanx(String mocalanx) {
		this.mocalanx = mocalanx;
	}
	public int getMocavis() {
		return mocavis;
	}
	public void setMocavis(int mocavis) {
		this.mocavis = mocavis;
	}
	public int getMocahear() {
		return mocahear;
	}
	public void setMocahear(int mocahear) {
		this.mocahear = mocahear;
	}
	public int getMocatots() {
		return mocatots;
	}
	public void setMocatots(int mocatots) {
		this.mocatots = mocatots;
	}
	public int getMocatrai() {
		return mocatrai;
	}
	public void setMocatrai(int mocatrai) {
		this.mocatrai = mocatrai;
	}
	public int getMocacube() {
		return mocacube;
	}
	public void setMocacube(int mocacube) {
		this.mocacube = mocacube;
	}
	public int getMocacloc() {
		return mocacloc;
	}
	public void setMocacloc(int mocacloc) {
		this.mocacloc = mocacloc;
	}
	public int getMocaclon() {
		return mocaclon;
	}
	public void setMocaclon(int mocaclon) {
		this.mocaclon = mocaclon;
	}
	public int getMocacloh() {
		return mocacloh;
	}
	public void setMocacloh(int mocacloh) {
		this.mocacloh = mocacloh;
	}
	public int getMocanami() {
		return mocanami;
	}
	public void setMocanami(int mocanami) {
		this.mocanami = mocanami;
	}
	public int getMocaregi() {
		return mocaregi;
	}
	public void setMocaregi(int mocaregi) {
		this.mocaregi = mocaregi;
	}
	public int getMocadigi() {
		return mocadigi;
	}
	public void setMocadigi(int mocadigi) {
		this.mocadigi = mocadigi;
	}
	public int getMocalett() {
		return mocalett;
	}
	public void setMocalett(int mocalett) {
		this.mocalett = mocalett;
	}
	public int getMocaser7() {
		return mocaser7;
	}
	public void setMocaser7(int mocaser7) {
		this.mocaser7 = mocaser7;
	}
	public int getMocarepe() {
		return mocarepe;
	}
	public void setMocarepe(int mocarepe) {
		this.mocarepe = mocarepe;
	}
	public int getMocaflue() {
		return mocaflue;
	}
	public void setMocaflue(int mocaflue) {
		this.mocaflue = mocaflue;
	}
	public int getMocaabst() {
		return mocaabst;
	}
	public void setMocaabst(int mocaabst) {
		this.mocaabst = mocaabst;
	}
	public int getMocarecn() {
		return mocarecn;
	}
	public void setMocarecn(int mocarecn) {
		this.mocarecn = mocarecn;
	}
	public int getMocarecc() {
		return mocarecc;
	}
	public void setMocarecc(int mocarecc) {
		this.mocarecc = mocarecc;
	}
	public int getMocarecr() {
		return mocarecr;
	}
	public void setMocarecr(int mocarecr) {
		this.mocarecr = mocarecr;
	}
	public int getMocaordt() {
		return mocaordt;
	}
	public void setMocaordt(int mocaordt) {
		this.mocaordt = mocaordt;
	}
	public int getMocaormo() {
		return mocaormo;
	}
	public void setMocaormo(int mocaormo) {
		this.mocaormo = mocaormo;
	}
	public int getMocaoryr() {
		return mocaoryr;
	}
	public void setMocaoryr(int mocaoryr) {
		this.mocaoryr = mocaoryr;
	}
	public int getMocaordy() {
		return mocaordy;
	}
	public void setMocaordy(int mocaordy) {
		this.mocaordy = mocaordy;
	}
	public int getMocaorpl() {
		return mocaorpl;
	}
	public void setMocaorpl(int mocaorpl) {
		this.mocaorpl = mocaorpl;
	}
	public int getMocaorct() {
		return mocaorct;
	}
	public void setMocaorct(int mocaorct) {
		this.mocaorct = mocaorct;
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
	public int getCraftvrs() {
		return craftvrs;
	}
	public void setCraftvrs(int craftvrs) {
		this.craftvrs = craftvrs;
	}
	public int getCrafturs() {
		return crafturs;
	}
	public void setCrafturs(int crafturs) {
		this.crafturs = crafturs;
	}
	public int getUdsbentc() {
		return udsbentc;
	}
	public void setUdsbentc(int udsbentc) {
		this.udsbentc = udsbentc;
	}
	public int getDigforct() {
		return digforct;
	}
	public void setDigforct(int digforct) {
		this.digforct = digforct;
	}
	public int getDigforsl() {
		return digforsl;
	}
	public void setDigforsl(int digforsl) {
		this.digforsl = digforsl;
	}
	public int getDigbacct() {
		return digbacct;
	}
	public void setDigbacct(int digbacct) {
		this.digbacct = digbacct;
	}
	public int getDigbacls() {
		return digbacls;
	}
	public void setDigbacls(int digbacls) {
		this.digbacls = digbacls;
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
	public int getCraftdvr() {
		return craftdvr;
	}
	public void setCraftdvr(int craftdvr) {
		this.craftdvr = craftdvr;
	}
	public int getCraftdre() {
		return craftdre;
	}
	public void setCraftdre(int craftdre) {
		this.craftdre = craftdre;
	}
	public int getCraftdti() {
		return craftdti;
	}
	public void setCraftdti(int craftdti) {
		this.craftdti = craftdti;
	}
	public int getCraftcue() {
		return craftcue;
	}
	public void setCraftcue(int craftcue) {
		this.craftcue = craftcue;
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
	public int getMinttots() {
		return minttots;
	}
	public void setMinttots(int minttots) {
		this.minttots = minttots;
	}
	public int getMinttotw() {
		return minttotw;
	}
	public void setMinttotw(int minttotw) {
		this.minttotw = minttotw;
	}
	public int getMintscng() {
		return mintscng;
	}
	public void setMintscng(int mintscng) {
		this.mintscng = mintscng;
	}
	public int getMintscnc() {
		return mintscnc;
	}
	public void setMintscnc(int mintscnc) {
		this.mintscnc = mintscnc;
	}
	public int getMintpcng() {
		return mintpcng;
	}
	public void setMintpcng(int mintpcng) {
		this.mintpcng = mintpcng;
	}
	public int getMintpcnc() {
		return mintpcnc;
	}
	public void setMintpcnc(int mintpcnc) {
		this.mintpcnc = mintpcnc;
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
