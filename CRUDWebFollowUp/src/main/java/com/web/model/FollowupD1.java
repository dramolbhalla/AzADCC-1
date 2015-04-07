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
public class FollowupD1 implements Serializable{
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
	int d1;
	@Column
	int dxmethod;
	@Column
	int normcog;
	@Column
	int demented;
	@Column
	int amndem;
	@Column
	int pca;
	@Column
	int ppasyn;
	@Column
	int ppasynt;
	@Column
	int ftdsyn;
	@Column
	int lbdsyn;
	@Column
	int namndem;
	@Column
	int mciamem;
	@Column
	int mciaplus;
	@Column
	int mciaplan;
	@Column
	int mciapatt;
	@Column
	int mciapex;
	@Column
	int mciapvis;
	@Column
	int mcinon1;
	@Column
	int mcin1lan;
	@Column
	int mcin1att;
	@Column
	int mcin1ex;
	@Column
	int mcin1vis;
	@Column
	int mcinon2;
	@Column
	int mcin2lan;
	@Column
	int mcin2att;
	@Column
	int mcin2ex;
	@Column
	int mcin2vis;
	@Column
	int impnomci;
	@Column
	int amylpet;
	@Column
	int amylcsf;
	@Column
	int fdgad;
	@Column
	int hippatr;
	@Column
	int taupetad;
	@Column
	int csftau;
	@Column
	int fdgftld;
	@Column
	int tpetftld;
	@Column
	int mrftld;
	@Column
	int datscan;
	@Column
	int othbiom;
	@Column
	String othbiomx;
	@Column
	int imaglinf;
	@Column
	int imaglac;
	@Column
	int imagmach;
	@Column
	int imagmich;
	@Column
	int imagmwwh;
	@Column
	int imagewmh;
	@Column
	int admut;
	@Column
	int ftldmut;
	@Column
	int othmut;
	@Column
	String othmutx;
	@Column
	int alzdis;
	@Column
	int alzdisif;
	@Column
	int lbdis;
	@Column
	int lbdif;
	@Column
	int park;
	@Column
	int msa;
	@Column
	int msaif;
	@Column
	int psp;
	@Column
	int pspif;
	@Column
	int cort;
	@Column
	int cortif;
	@Column
	int ftldmo;
	@Column
	int ftldmoif;
	@Column
	int ftldnos;
	@Column
	int ftldnoif;
	@Column
	int ftldsubt;
	@Column
	String ftldsubx;
	@Column
	int cvd;
	@Column
	int cvdif;
	@Column
	int prevstk;
	@Column
	int strokdec;
	@Column
	int stkimag;
	@Column
	int infnetw;
	@Column
	int infwmh;
	@Column
	int esstrem;
	@Column
	int esstreif;
	@Column
	int downs;
	@Column
	int downsif;
	@Column
	int hunt;
	@Column
	int huntif;
	@Column
	int prion;
	@Column
	int prionif;
	@Column
	int brninj;
	@Column
	int brninjif;
	@Column
	int brnincte;
	@Column
	int hyceph;
	@Column
	int hycephif;
	@Column
	int epilep;
	@Column
	int epilepif;
	@Column
	int neop;
	@Column
	int neopif;
	@Column
	int neopstat;
	@Column
	int hiv;
	@Column
	int hivif;
	@Column
	int othcog;
	@Column
	int othcogif;
	@Column
	String othcogx;
	@Column
	int dep;
	@Column
	int depif;
	@Column
	int deptreat;
	@Column
	int bipoldx;
	@Column
	int bipoldif;
	@Column
	int schizop;
	@Column
	int schizoif;
	@Column
	int anxiet;
	@Column
	int anxietif;
	@Column
	int delir;
	@Column
	int delirif;
	@Column
	int ptsddx;
	@Column
	int ptsddxif;
	@Column
	int othpsy;
	@Column
	int othpsyif;
	@Column
	String othpsyx;
	@Column
	int alcdem;
	@Column
	int alcdemif;
	@Column
	int alcabuse;
	@Column
	int impsub;
	@Column
	int impsubif;
	@Column
	int dysill;
	@Column
	int dysillif;
	@Column
	int meds;
	@Column
	int medsif;
	
	public FollowupD1() {
		super();
	}

	public FollowupD1(int d1, int dxmethod, int normcog, int demented, int amndem,
			int pca, int ppasyn, int ppasynt, int ftdsyn, int lbdsyn,
			int namndem, int mciamem, int mciaplus, int mciaplan, int mciapatt,
			int mciapex, int mciapvis, int mcinon1, int mcin1lan, int mcin1att,
			int mcin1ex, int mcin1vis, int mcinon2, int mcin2lan, int mcin2att,
			int mcin2ex, int mcin2vis, int impnomci, int amylpet, int amylcsf,
			int fdgad, int hippatr, int taupetad, int csftau, int fdgftld,
			int tpetftld, int mrftld, int datscan, int othbiom,
			String othbiomx, int imaglinf, int imaglac, int imagmach,
			int imagmich, int imagmwwh, int imagewmh, int admut, int ftldmut,
			int othmut, String othmutx, int alzdis, int alzdisif, int lbdis,
			int lbdif, int park, int msa, int msaif, int psp, int pspif,
			int cort, int cortif, int ftldmo, int ftldmoif, int ftldnos,
			int ftldnoif, int ftldsubt, String ftldsubx, int cvd, int cvdif,
			int prevstk, int strokdec, int stkimag, int infnetw, int infwmh,
			int esstrem, int esstreif, int downs, int downsif, int hunt,
			int huntif, int prion, int prionif, int brninj, int brninjif,
			int brnincte, int hyceph, int hycephif, int epilep, int epilepif,
			int neop, int neopif, int neopstat, int hiv, int hivif, int othcog,
			int othcogif, String othcogx, int dep, int depif, int deptreat,
			int bipoldx, int bipoldif, int schizop, int schizoif, int anxiet,
			int anxietif, int delir, int delirif, int ptsddx, int ptsddxif,
			int othpsy, int othpsyif, String othpsyx, int alcdem, int alcdemif,
			int alcabuse, int impsub, int impsubif, int dysill, int dysillif,
			int meds, int medsif) {
		super();
		this.d1 = d1;
		this.dxmethod = dxmethod;
		this.normcog = normcog;
		this.demented = demented;
		this.amndem = amndem;
		this.pca = pca;
		this.ppasyn = ppasyn;
		this.ppasynt = ppasynt;
		this.ftdsyn = ftdsyn;
		this.lbdsyn = lbdsyn;
		this.namndem = namndem;
		this.mciamem = mciamem;
		this.mciaplus = mciaplus;
		this.mciaplan = mciaplan;
		this.mciapatt = mciapatt;
		this.mciapex = mciapex;
		this.mciapvis = mciapvis;
		this.mcinon1 = mcinon1;
		this.mcin1lan = mcin1lan;
		this.mcin1att = mcin1att;
		this.mcin1ex = mcin1ex;
		this.mcin1vis = mcin1vis;
		this.mcinon2 = mcinon2;
		this.mcin2lan = mcin2lan;
		this.mcin2att = mcin2att;
		this.mcin2ex = mcin2ex;
		this.mcin2vis = mcin2vis;
		this.impnomci = impnomci;
		this.amylpet = amylpet;
		this.amylcsf = amylcsf;
		this.fdgad = fdgad;
		this.hippatr = hippatr;
		this.taupetad = taupetad;
		this.csftau = csftau;
		this.fdgftld = fdgftld;
		this.tpetftld = tpetftld;
		this.mrftld = mrftld;
		this.datscan = datscan;
		this.othbiom = othbiom;
		this.othbiomx = othbiomx;
		this.imaglinf = imaglinf;
		this.imaglac = imaglac;
		this.imagmach = imagmach;
		this.imagmich = imagmich;
		this.imagmwwh = imagmwwh;
		this.imagewmh = imagewmh;
		this.admut = admut;
		this.ftldmut = ftldmut;
		this.othmut = othmut;
		this.othmutx = othmutx;
		this.alzdis = alzdis;
		this.alzdisif = alzdisif;
		this.lbdis = lbdis;
		this.lbdif = lbdif;
		this.park = park;
		this.msa = msa;
		this.msaif = msaif;
		this.psp = psp;
		this.pspif = pspif;
		this.cort = cort;
		this.cortif = cortif;
		this.ftldmo = ftldmo;
		this.ftldmoif = ftldmoif;
		this.ftldnos = ftldnos;
		this.ftldnoif = ftldnoif;
		this.ftldsubt = ftldsubt;
		this.ftldsubx = ftldsubx;
		this.cvd = cvd;
		this.cvdif = cvdif;
		this.prevstk = prevstk;
		this.strokdec = strokdec;
		this.stkimag = stkimag;
		this.infnetw = infnetw;
		this.infwmh = infwmh;
		this.esstrem = esstrem;
		this.esstreif = esstreif;
		this.downs = downs;
		this.downsif = downsif;
		this.hunt = hunt;
		this.huntif = huntif;
		this.prion = prion;
		this.prionif = prionif;
		this.brninj = brninj;
		this.brninjif = brninjif;
		this.brnincte = brnincte;
		this.hyceph = hyceph;
		this.hycephif = hycephif;
		this.epilep = epilep;
		this.epilepif = epilepif;
		this.neop = neop;
		this.neopif = neopif;
		this.neopstat = neopstat;
		this.hiv = hiv;
		this.hivif = hivif;
		this.othcog = othcog;
		this.othcogif = othcogif;
		this.othcogx = othcogx;
		this.dep = dep;
		this.depif = depif;
		this.deptreat = deptreat;
		this.bipoldx = bipoldx;
		this.bipoldif = bipoldif;
		this.schizop = schizop;
		this.schizoif = schizoif;
		this.anxiet = anxiet;
		this.anxietif = anxietif;
		this.delir = delir;
		this.delirif = delirif;
		this.ptsddx = ptsddx;
		this.ptsddxif = ptsddxif;
		this.othpsy = othpsy;
		this.othpsyif = othpsyif;
		this.othpsyx = othpsyx;
		this.alcdem = alcdem;
		this.alcdemif = alcdemif;
		this.alcabuse = alcabuse;
		this.impsub = impsub;
		this.impsubif = impsubif;
		this.dysill = dysill;
		this.dysillif = dysillif;
		this.meds = meds;
		this.medsif = medsif;
	}

	/*public D1(User user, Subject subject, Header header, int d1, int dxmethod,
			int normcog, int demented, int amndem, int pca, int ppasyn,
			int ppasynt, int ftdsyn, int lbdsyn, int namndem, int mciamem,
			int mciaplus, int mciaplan, int mciapatt, int mciapex,
			int mciapvis, int mcinon1, int mcin1lan, int mcin1att, int mcin1ex,
			int mcin1vis, int mcinon2, int mcin2lan, int mcin2att, int mcin2ex,
			int mcin2vis, int impnomci, int amylpet, int amylcsf, int fdgad,
			int hippatr, int taupetad, int csftau, int fdgftld, int tpetftld,
			int mrftld, int datscan, int othbiom, String othbiomx,
			int imaglinf, int imaglac, int imagmach, int imagmich,
			int imagmwwh, int imagewmh, int admut, int ftldmut, int othmut,
			String othmutx, int alzdis, int alzdisif, int lbdis, int lbdif,
			int park, int msa, int msaif, int psp, int pspif, int cort,
			int cortif, int ftldmo, int ftldmoif, int ftldnos, int ftldnoif,
			int ftldsubt, String ftldsubx, int cvd, int cvdif, int prevstk,
			int strokdec, int stkimag, int infnetw, int infwmh, int esstrem,
			int esstreif, int downs, int downsif, int hunt, int huntif,
			int prion, int prionif, int brninj, int brninjif, int brnincte,
			int hyceph, int hycephif, int epilep, int epilepif, int neop,
			int neopif, int neopstat, int hiv, int hivif, int othcog,
			int othcogif, String othcogx, int dep, int depif, int deptreat,
			int bipoldx, int bipoldif, int schizop, int schizoif, int anxiet,
			int anxietif, int delir, int delirif, int ptsddx, int ptsddxif,
			int othpsy, int othpsyif, String othpsyx, int alcdem, int alcdemif,
			int alcabuse, int impsub, int impsubif, int dysill, int dysillif,
			int meds, int medsif) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.d1 = d1;
		this.dxmethod = dxmethod;
		this.normcog = normcog;
		this.demented = demented;
		this.amndem = amndem;
		this.pca = pca;
		this.ppasyn = ppasyn;
		this.ppasynt = ppasynt;
		this.ftdsyn = ftdsyn;
		this.lbdsyn = lbdsyn;
		this.namndem = namndem;
		this.mciamem = mciamem;
		this.mciaplus = mciaplus;
		this.mciaplan = mciaplan;
		this.mciapatt = mciapatt;
		this.mciapex = mciapex;
		this.mciapvis = mciapvis;
		this.mcinon1 = mcinon1;
		this.mcin1lan = mcin1lan;
		this.mcin1att = mcin1att;
		this.mcin1ex = mcin1ex;
		this.mcin1vis = mcin1vis;
		this.mcinon2 = mcinon2;
		this.mcin2lan = mcin2lan;
		this.mcin2att = mcin2att;
		this.mcin2ex = mcin2ex;
		this.mcin2vis = mcin2vis;
		this.impnomci = impnomci;
		this.amylpet = amylpet;
		this.amylcsf = amylcsf;
		this.fdgad = fdgad;
		this.hippatr = hippatr;
		this.taupetad = taupetad;
		this.csftau = csftau;
		this.fdgftld = fdgftld;
		this.tpetftld = tpetftld;
		this.mrftld = mrftld;
		this.datscan = datscan;
		this.othbiom = othbiom;
		this.othbiomx = othbiomx;
		this.imaglinf = imaglinf;
		this.imaglac = imaglac;
		this.imagmach = imagmach;
		this.imagmich = imagmich;
		this.imagmwwh = imagmwwh;
		this.imagewmh = imagewmh;
		this.admut = admut;
		this.ftldmut = ftldmut;
		this.othmut = othmut;
		this.othmutx = othmutx;
		this.alzdis = alzdis;
		this.alzdisif = alzdisif;
		this.lbdis = lbdis;
		this.lbdif = lbdif;
		this.park = park;
		this.msa = msa;
		this.msaif = msaif;
		this.psp = psp;
		this.pspif = pspif;
		this.cort = cort;
		this.cortif = cortif;
		this.ftldmo = ftldmo;
		this.ftldmoif = ftldmoif;
		this.ftldnos = ftldnos;
		this.ftldnoif = ftldnoif;
		this.ftldsubt = ftldsubt;
		this.ftldsubx = ftldsubx;
		this.cvd = cvd;
		this.cvdif = cvdif;
		this.prevstk = prevstk;
		this.strokdec = strokdec;
		this.stkimag = stkimag;
		this.infnetw = infnetw;
		this.infwmh = infwmh;
		this.esstrem = esstrem;
		this.esstreif = esstreif;
		this.downs = downs;
		this.downsif = downsif;
		this.hunt = hunt;
		this.huntif = huntif;
		this.prion = prion;
		this.prionif = prionif;
		this.brninj = brninj;
		this.brninjif = brninjif;
		this.brnincte = brnincte;
		this.hyceph = hyceph;
		this.hycephif = hycephif;
		this.epilep = epilep;
		this.epilepif = epilepif;
		this.neop = neop;
		this.neopif = neopif;
		this.neopstat = neopstat;
		this.hiv = hiv;
		this.hivif = hivif;
		this.othcog = othcog;
		this.othcogif = othcogif;
		this.othcogx = othcogx;
		this.dep = dep;
		this.depif = depif;
		this.deptreat = deptreat;
		this.bipoldx = bipoldx;
		this.bipoldif = bipoldif;
		this.schizop = schizop;
		this.schizoif = schizoif;
		this.anxiet = anxiet;
		this.anxietif = anxietif;
		this.delir = delir;
		this.delirif = delirif;
		this.ptsddx = ptsddx;
		this.ptsddxif = ptsddxif;
		this.othpsy = othpsy;
		this.othpsyif = othpsyif;
		this.othpsyx = othpsyx;
		this.alcdem = alcdem;
		this.alcdemif = alcdemif;
		this.alcabuse = alcabuse;
		this.impsub = impsub;
		this.impsubif = impsubif;
		this.dysill = dysill;
		this.dysillif = dysillif;
		this.meds = meds;
		this.medsif = medsif;
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

	public int getD1() {
		return d1;
	}

	public void setD1(int d1) {
		this.d1 = d1;
	}

	public int getDxmethod() {
		return dxmethod;
	}

	public void setDxmethod(int dxmethod) {
		this.dxmethod = dxmethod;
	}

	public int getNormcog() {
		return normcog;
	}

	public void setNormcog(int normcog) {
		this.normcog = normcog;
	}

	public int getDemented() {
		return demented;
	}

	public void setDemented(int demented) {
		this.demented = demented;
	}

	public int getAmndem() {
		return amndem;
	}

	public void setAmndem(int amndem) {
		this.amndem = amndem;
	}

	public int getPca() {
		return pca;
	}

	public void setPca(int pca) {
		this.pca = pca;
	}

	public int getPpasyn() {
		return ppasyn;
	}

	public void setPpasyn(int ppasyn) {
		this.ppasyn = ppasyn;
	}

	public int getPpasynt() {
		return ppasynt;
	}

	public void setPpasynt(int ppasynt) {
		this.ppasynt = ppasynt;
	}

	public int getFtdsyn() {
		return ftdsyn;
	}

	public void setFtdsyn(int ftdsyn) {
		this.ftdsyn = ftdsyn;
	}

	public int getLbdsyn() {
		return lbdsyn;
	}

	public void setLbdsyn(int lbdsyn) {
		this.lbdsyn = lbdsyn;
	}

	public int getNamndem() {
		return namndem;
	}

	public void setNamndem(int namndem) {
		this.namndem = namndem;
	}

	public int getMciamem() {
		return mciamem;
	}

	public void setMciamem(int mciamem) {
		this.mciamem = mciamem;
	}

	public int getMciaplus() {
		return mciaplus;
	}

	public void setMciaplus(int mciaplus) {
		this.mciaplus = mciaplus;
	}

	public int getMciaplan() {
		return mciaplan;
	}

	public void setMciaplan(int mciaplan) {
		this.mciaplan = mciaplan;
	}

	public int getMciapatt() {
		return mciapatt;
	}

	public void setMciapatt(int mciapatt) {
		this.mciapatt = mciapatt;
	}

	public int getMciapex() {
		return mciapex;
	}

	public void setMciapex(int mciapex) {
		this.mciapex = mciapex;
	}

	public int getMciapvis() {
		return mciapvis;
	}

	public void setMciapvis(int mciapvis) {
		this.mciapvis = mciapvis;
	}

	public int getMcinon1() {
		return mcinon1;
	}

	public void setMcinon1(int mcinon1) {
		this.mcinon1 = mcinon1;
	}

	public int getMcin1lan() {
		return mcin1lan;
	}

	public void setMcin1lan(int mcin1lan) {
		this.mcin1lan = mcin1lan;
	}

	public int getMcin1att() {
		return mcin1att;
	}

	public void setMcin1att(int mcin1att) {
		this.mcin1att = mcin1att;
	}

	public int getMcin1ex() {
		return mcin1ex;
	}

	public void setMcin1ex(int mcin1ex) {
		this.mcin1ex = mcin1ex;
	}

	public int getMcin1vis() {
		return mcin1vis;
	}

	public void setMcin1vis(int mcin1vis) {
		this.mcin1vis = mcin1vis;
	}

	public int getMcinon2() {
		return mcinon2;
	}

	public void setMcinon2(int mcinon2) {
		this.mcinon2 = mcinon2;
	}

	public int getMcin2lan() {
		return mcin2lan;
	}

	public void setMcin2lan(int mcin2lan) {
		this.mcin2lan = mcin2lan;
	}

	public int getMcin2att() {
		return mcin2att;
	}

	public void setMcin2att(int mcin2att) {
		this.mcin2att = mcin2att;
	}

	public int getMcin2ex() {
		return mcin2ex;
	}

	public void setMcin2ex(int mcin2ex) {
		this.mcin2ex = mcin2ex;
	}

	public int getMcin2vis() {
		return mcin2vis;
	}

	public void setMcin2vis(int mcin2vis) {
		this.mcin2vis = mcin2vis;
	}

	public int getImpnomci() {
		return impnomci;
	}

	public void setImpnomci(int impnomci) {
		this.impnomci = impnomci;
	}

	public int getAmylpet() {
		return amylpet;
	}

	public void setAmylpet(int amylpet) {
		this.amylpet = amylpet;
	}

	public int getAmylcsf() {
		return amylcsf;
	}

	public void setAmylcsf(int amylcsf) {
		this.amylcsf = amylcsf;
	}

	public int getFdgad() {
		return fdgad;
	}

	public void setFdgad(int fdgad) {
		this.fdgad = fdgad;
	}

	public int getHippatr() {
		return hippatr;
	}

	public void setHippatr(int hippatr) {
		this.hippatr = hippatr;
	}

	public int getTaupetad() {
		return taupetad;
	}

	public void setTaupetad(int taupetad) {
		this.taupetad = taupetad;
	}

	public int getCsftau() {
		return csftau;
	}

	public void setCsftau(int csftau) {
		this.csftau = csftau;
	}

	public int getFdgftld() {
		return fdgftld;
	}

	public void setFdgftld(int fdgftld) {
		this.fdgftld = fdgftld;
	}

	public int getTpetftld() {
		return tpetftld;
	}

	public void setTpetftld(int tpetftld) {
		this.tpetftld = tpetftld;
	}

	public int getMrftld() {
		return mrftld;
	}

	public void setMrftld(int mrftld) {
		this.mrftld = mrftld;
	}

	public int getDatscan() {
		return datscan;
	}

	public void setDatscan(int datscan) {
		this.datscan = datscan;
	}

	public int getOthbiom() {
		return othbiom;
	}

	public void setOthbiom(int othbiom) {
		this.othbiom = othbiom;
	}

	public String getOthbiomx() {
		return othbiomx;
	}

	public void setOthbiomx(String othbiomx) {
		this.othbiomx = othbiomx;
	}

	public int getImaglinf() {
		return imaglinf;
	}

	public void setImaglinf(int imaglinf) {
		this.imaglinf = imaglinf;
	}

	public int getImaglac() {
		return imaglac;
	}

	public void setImaglac(int imaglac) {
		this.imaglac = imaglac;
	}

	public int getImagmach() {
		return imagmach;
	}

	public void setImagmach(int imagmach) {
		this.imagmach = imagmach;
	}

	public int getImagmich() {
		return imagmich;
	}

	public void setImagmich(int imagmich) {
		this.imagmich = imagmich;
	}

	public int getImagmwwh() {
		return imagmwwh;
	}

	public void setImagmwwh(int imagmwwh) {
		this.imagmwwh = imagmwwh;
	}

	public int getImagewmh() {
		return imagewmh;
	}

	public void setImagewmh(int imagewmh) {
		this.imagewmh = imagewmh;
	}

	public int getAdmut() {
		return admut;
	}

	public void setAdmut(int admut) {
		this.admut = admut;
	}

	public int getFtldmut() {
		return ftldmut;
	}

	public void setFtldmut(int ftldmut) {
		this.ftldmut = ftldmut;
	}

	public int getOthmut() {
		return othmut;
	}

	public void setOthmut(int othmut) {
		this.othmut = othmut;
	}

	public String getOthmutx() {
		return othmutx;
	}

	public void setOthmutx(String othmutx) {
		this.othmutx = othmutx;
	}

	public int getAlzdis() {
		return alzdis;
	}

	public void setAlzdis(int alzdis) {
		this.alzdis = alzdis;
	}

	public int getAlzdisif() {
		return alzdisif;
	}

	public void setAlzdisif(int alzdisif) {
		this.alzdisif = alzdisif;
	}

	public int getLbdis() {
		return lbdis;
	}

	public void setLbdis(int lbdis) {
		this.lbdis = lbdis;
	}

	public int getLbdif() {
		return lbdif;
	}

	public void setLbdif(int lbdif) {
		this.lbdif = lbdif;
	}

	public int getPark() {
		return park;
	}

	public void setPark(int park) {
		this.park = park;
	}

	public int getMsa() {
		return msa;
	}

	public void setMsa(int msa) {
		this.msa = msa;
	}

	public int getMsaif() {
		return msaif;
	}

	public void setMsaif(int msaif) {
		this.msaif = msaif;
	}

	public int getPsp() {
		return psp;
	}

	public void setPsp(int psp) {
		this.psp = psp;
	}

	public int getPspif() {
		return pspif;
	}

	public void setPspif(int pspif) {
		this.pspif = pspif;
	}

	public int getCort() {
		return cort;
	}

	public void setCort(int cort) {
		this.cort = cort;
	}

	public int getCortif() {
		return cortif;
	}

	public void setCortif(int cortif) {
		this.cortif = cortif;
	}

	public int getFtldmo() {
		return ftldmo;
	}

	public void setFtldmo(int ftldmo) {
		this.ftldmo = ftldmo;
	}

	public int getFtldmoif() {
		return ftldmoif;
	}

	public void setFtldmoif(int ftldmoif) {
		this.ftldmoif = ftldmoif;
	}

	public int getFtldnos() {
		return ftldnos;
	}

	public void setFtldnos(int ftldnos) {
		this.ftldnos = ftldnos;
	}

	public int getFtldnoif() {
		return ftldnoif;
	}

	public void setFtldnoif(int ftldnoif) {
		this.ftldnoif = ftldnoif;
	}

	public int getFtldsubt() {
		return ftldsubt;
	}

	public void setFtldsubt(int ftldsubt) {
		this.ftldsubt = ftldsubt;
	}

	public String getFtldsubx() {
		return ftldsubx;
	}

	public void setFtldsubx(String ftldsubx) {
		this.ftldsubx = ftldsubx;
	}

	public int getCvd() {
		return cvd;
	}

	public void setCvd(int cvd) {
		this.cvd = cvd;
	}

	public int getCvdif() {
		return cvdif;
	}

	public void setCvdif(int cvdif) {
		this.cvdif = cvdif;
	}

	public int getPrevstk() {
		return prevstk;
	}

	public void setPrevstk(int prevstk) {
		this.prevstk = prevstk;
	}

	public int getStrokdec() {
		return strokdec;
	}

	public void setStrokdec(int strokdec) {
		this.strokdec = strokdec;
	}

	public int getStkimag() {
		return stkimag;
	}

	public void setStkimag(int stkimag) {
		this.stkimag = stkimag;
	}

	public int getInfnetw() {
		return infnetw;
	}

	public void setInfnetw(int infnetw) {
		this.infnetw = infnetw;
	}

	public int getInfwmh() {
		return infwmh;
	}

	public void setInfwmh(int infwmh) {
		this.infwmh = infwmh;
	}

	public int getEsstrem() {
		return esstrem;
	}

	public void setEsstrem(int esstrem) {
		this.esstrem = esstrem;
	}

	public int getEsstreif() {
		return esstreif;
	}

	public void setEsstreif(int esstreif) {
		this.esstreif = esstreif;
	}

	public int getDowns() {
		return downs;
	}

	public void setDowns(int downs) {
		this.downs = downs;
	}

	public int getDownsif() {
		return downsif;
	}

	public void setDownsif(int downsif) {
		this.downsif = downsif;
	}

	public int getHunt() {
		return hunt;
	}

	public void setHunt(int hunt) {
		this.hunt = hunt;
	}

	public int getHuntif() {
		return huntif;
	}

	public void setHuntif(int huntif) {
		this.huntif = huntif;
	}

	public int getPrion() {
		return prion;
	}

	public void setPrion(int prion) {
		this.prion = prion;
	}

	public int getPrionif() {
		return prionif;
	}

	public void setPrionif(int prionif) {
		this.prionif = prionif;
	}

	public int getBrninj() {
		return brninj;
	}

	public void setBrninj(int brninj) {
		this.brninj = brninj;
	}

	public int getBrninjif() {
		return brninjif;
	}

	public void setBrninjif(int brninjif) {
		this.brninjif = brninjif;
	}

	public int getBrnincte() {
		return brnincte;
	}

	public void setBrnincte(int brnincte) {
		this.brnincte = brnincte;
	}

	public int getHyceph() {
		return hyceph;
	}

	public void setHyceph(int hyceph) {
		this.hyceph = hyceph;
	}

	public int getHycephif() {
		return hycephif;
	}

	public void setHycephif(int hycephif) {
		this.hycephif = hycephif;
	}

	public int getEpilep() {
		return epilep;
	}

	public void setEpilep(int epilep) {
		this.epilep = epilep;
	}

	public int getEpilepif() {
		return epilepif;
	}

	public void setEpilepif(int epilepif) {
		this.epilepif = epilepif;
	}

	public int getNeop() {
		return neop;
	}

	public void setNeop(int neop) {
		this.neop = neop;
	}

	public int getNeopif() {
		return neopif;
	}

	public void setNeopif(int neopif) {
		this.neopif = neopif;
	}

	public int getNeopstat() {
		return neopstat;
	}

	public void setNeopstat(int neopstat) {
		this.neopstat = neopstat;
	}

	public int getHiv() {
		return hiv;
	}

	public void setHiv(int hiv) {
		this.hiv = hiv;
	}

	public int getHivif() {
		return hivif;
	}

	public void setHivif(int hivif) {
		this.hivif = hivif;
	}

	public int getOthcog() {
		return othcog;
	}

	public void setOthcog(int othcog) {
		this.othcog = othcog;
	}

	public int getOthcogif() {
		return othcogif;
	}

	public void setOthcogif(int othcogif) {
		this.othcogif = othcogif;
	}

	public String getOthcogx() {
		return othcogx;
	}

	public void setOthcogx(String othcogx) {
		this.othcogx = othcogx;
	}

	public int getDep() {
		return dep;
	}

	public void setDep(int dep) {
		this.dep = dep;
	}

	public int getDepif() {
		return depif;
	}

	public void setDepif(int depif) {
		this.depif = depif;
	}

	public int getDeptreat() {
		return deptreat;
	}

	public void setDeptreat(int deptreat) {
		this.deptreat = deptreat;
	}

	public int getBipoldx() {
		return bipoldx;
	}

	public void setBipoldx(int bipoldx) {
		this.bipoldx = bipoldx;
	}

	public int getBipoldif() {
		return bipoldif;
	}

	public void setBipoldif(int bipoldif) {
		this.bipoldif = bipoldif;
	}

	public int getSchizop() {
		return schizop;
	}

	public void setSchizop(int schizop) {
		this.schizop = schizop;
	}

	public int getSchizoif() {
		return schizoif;
	}

	public void setSchizoif(int schizoif) {
		this.schizoif = schizoif;
	}

	public int getAnxiet() {
		return anxiet;
	}

	public void setAnxiet(int anxiet) {
		this.anxiet = anxiet;
	}

	public int getAnxietif() {
		return anxietif;
	}

	public void setAnxietif(int anxietif) {
		this.anxietif = anxietif;
	}

	public int getDelir() {
		return delir;
	}

	public void setDelir(int delir) {
		this.delir = delir;
	}

	public int getDelirif() {
		return delirif;
	}

	public void setDelirif(int delirif) {
		this.delirif = delirif;
	}

	public int getPtsddx() {
		return ptsddx;
	}

	public void setPtsddx(int ptsddx) {
		this.ptsddx = ptsddx;
	}

	public int getPtsddxif() {
		return ptsddxif;
	}

	public void setPtsddxif(int ptsddxif) {
		this.ptsddxif = ptsddxif;
	}

	public int getOthpsy() {
		return othpsy;
	}

	public void setOthpsy(int othpsy) {
		this.othpsy = othpsy;
	}

	public int getOthpsyif() {
		return othpsyif;
	}

	public void setOthpsyif(int othpsyif) {
		this.othpsyif = othpsyif;
	}

	public String getOthpsyx() {
		return othpsyx;
	}

	public void setOthpsyx(String othpsyx) {
		this.othpsyx = othpsyx;
	}

	public int getAlcdem() {
		return alcdem;
	}

	public void setAlcdem(int alcdem) {
		this.alcdem = alcdem;
	}

	public int getAlcdemif() {
		return alcdemif;
	}

	public void setAlcdemif(int alcdemif) {
		this.alcdemif = alcdemif;
	}

	public int getAlcabuse() {
		return alcabuse;
	}

	public void setAlcabuse(int alcabuse) {
		this.alcabuse = alcabuse;
	}

	public int getImpsub() {
		return impsub;
	}

	public void setImpsub(int impsub) {
		this.impsub = impsub;
	}

	public int getImpsubif() {
		return impsubif;
	}

	public void setImpsubif(int impsubif) {
		this.impsubif = impsubif;
	}

	public int getDysill() {
		return dysill;
	}

	public void setDysill(int dysill) {
		this.dysill = dysill;
	}

	public int getDysillif() {
		return dysillif;
	}

	public void setDysillif(int dysillif) {
		this.dysillif = dysillif;
	}

	public int getMeds() {
		return meds;
	}

	public void setMeds(int meds) {
		this.meds = meds;
	}

	public int getMedsif() {
		return medsif;
	}

	public void setMedsif(int medsif) {
		this.medsif = medsif;
	}
	
}
