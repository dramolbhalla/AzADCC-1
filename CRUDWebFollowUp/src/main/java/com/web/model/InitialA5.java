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
public class InitialA5 implements Serializable{
//	User user;
//	Subject subject;
//	Header header;
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	 int a5;
		@Column 
	 int tobac30;
		@Column 
	 int tobac100;
		@Column 
	 int smokyrs;
		@Column 
	 int packsper;
		@Column 
	 int quitsmok;
		@Column 
	 int alcoccas;
		@Column 
	 int alcfreq;
		@Column 
	 int cvhatt;
		@Column 
	 int hattmult;
		@Column 
	 int hattyear;
		@Column 
	 int cvafib;
		@Column 
	 int cvangio;
		@Column 
	 int cvbypass;
		@Column 
	 int cvpacdef;
		@Column 
	 int cvchf;
		@Column 
	 int cvangina;
		@Column 
	 int cvhalve;
		@Column 
	 int cvothr;
		@Column 
	 String cvothrx;
		@Column 
	 int cbstroke;
		@Column 
	 int strokmul;
		@Column 
	 int strokyr;
		@Column 
	 int cbtia;
		@Column 
	 int tiamult;
		@Column 
	 int tiayear;
		@Column 
	 int pd;
		@Column 
	 int pdyr;
		@Column 
	 int pdothr;
		@Column 
	 int pdothryr;
		@Column 
	 int seizures;
		@Column 
	 int tbi;
		@Column 
	 int tbibrief;
		@Column 
	 int tbiexten;
		@Column 
	 int tbiwolos;
		@Column 
	 int tbiyear;
		@Column 
	 int diabetes;
		@Column 
	 int diabtype;
		@Column 
	 int hyperten;
		@Column 
	 int hypercho;
		@Column 
	 int b12def;
		@Column 
	 int thyroid;
		@Column 
	 int arthrit;
		@Column 
	 int arthtype;
		@Column 
	 String arthtypx;
		@Column 
	 int arthupex;
		@Column 
	 int arthloex;
		@Column 
	 int arthspin;
		@Column 
	 int arthunk;
		@Column 
	 int incontu;
		@Column 
	 int incontf;
		@Column 
	 int apnea;
		@Column 
	 int rbd;
		@Column 
	 int insomn;
		@Column 
	 int orthsleep;
		@Column 
	 String othsleex;
		@Column 
	 int alcohol;
		@Column 
	 int abusothr;
		@Column 
	 String abusx;
		@Column 
	 int ptsd;
		@Column 
	 int bipolar;
		@Column 
	 int schiz;
		@Column 
	 int dep2yrs;
		@Column 
	 int depothr;
		@Column 
	 int anxiety;
		@Column 
	 int ocd;
		@Column 
	 int npsydev;
		@Column 
	 int psycdis;
		@Column 
	 String psycdisx;

	
	public InitialA5() {
		super();
	}
	
	public InitialA5(int a5, int tobac30, int tobac100, int smokyrs, int packsper,
			int quitsmok, int alcoccas, int alcfreq, int cvhatt, int hattmult,
			int hattyear, int cvafib, int cvangio, int cvbypass, int cvpacdef,
			int cvchf, int cvangina, int cvhalve, int cvothr, String cvothrx,
			int cbstroke, int strokmul, int strokyr, int cbtia, int tiamult,
			int tiayear, int pd, int pdyr, int pdothr, int pdothryr,
			int seizures, int tbi, int tbibrief, int tbiexten, int tbiwolos,
			int tbiyear, int diabetes, int diabtype, int hyperten,
			int hypercho, int b12def, int thyroid, int arthrit, int arthtype,
			String arthtypx, int arthupex, int arthloex, int arthspin,
			int arthunk, int incontu, int incontf, int apnea, int rbd,
			int insomn, int orthsleep, String othsleex, int alcohol,
			int abusothr, String abusx, int ptsd, int bipolar, int schiz,
			int dep2yrs, int depothr, int anxiety, int ocd, int npsydev,
			int psycdis, String psycdisx) {
		super();
		this.a5 = a5;
		this.tobac30 = tobac30;
		this.tobac100 = tobac100;
		this.smokyrs = smokyrs;
		this.packsper = packsper;
		this.quitsmok = quitsmok;
		this.alcoccas = alcoccas;
		this.alcfreq = alcfreq;
		this.cvhatt = cvhatt;
		this.hattmult = hattmult;
		this.hattyear = hattyear;
		this.cvafib = cvafib;
		this.cvangio = cvangio;
		this.cvbypass = cvbypass;
		this.cvpacdef = cvpacdef;
		this.cvchf = cvchf;
		this.cvangina = cvangina;
		this.cvhalve = cvhalve;
		this.cvothr = cvothr;
		this.cvothrx = cvothrx;
		this.cbstroke = cbstroke;
		this.strokmul = strokmul;
		this.strokyr = strokyr;
		this.cbtia = cbtia;
		this.tiamult = tiamult;
		this.tiayear = tiayear;
		this.pd = pd;
		this.pdyr = pdyr;
		this.pdothr = pdothr;
		this.pdothryr = pdothryr;
		this.seizures = seizures;
		this.tbi = tbi;
		this.tbibrief = tbibrief;
		this.tbiexten = tbiexten;
		this.tbiwolos = tbiwolos;
		this.tbiyear = tbiyear;
		this.diabetes = diabetes;
		this.diabtype = diabtype;
		this.hyperten = hyperten;
		this.hypercho = hypercho;
		this.b12def = b12def;
		this.thyroid = thyroid;
		this.arthrit = arthrit;
		this.arthtype = arthtype;
		this.arthtypx = arthtypx;
		this.arthupex = arthupex;
		this.arthloex = arthloex;
		this.arthspin = arthspin;
		this.arthunk = arthunk;
		this.incontu = incontu;
		this.incontf = incontf;
		this.apnea = apnea;
		this.rbd = rbd;
		this.insomn = insomn;
		this.orthsleep = orthsleep;
		this.othsleex = othsleex;
		this.alcohol = alcohol;
		this.abusothr = abusothr;
		this.abusx = abusx;
		this.ptsd = ptsd;
		this.bipolar = bipolar;
		this.schiz = schiz;
		this.dep2yrs = dep2yrs;
		this.depothr = depothr;
		this.anxiety = anxiety;
		this.ocd = ocd;
		this.npsydev = npsydev;
		this.psycdis = psycdis;
		this.psycdisx = psycdisx;
	}
	
//	public InitialA5(User user, Subject subject, Header header, int a5, int tobac30,
//			int tobac100, int smokyrs, int packsper, int quitsmok,
//			int alcoccas, int alcfreq, int cvhatt, int hattmult, int hattyear,
//			int cvafib, int cvangio, int cvbypass, int cvpacdef, int cvchf,
//			int cvangina, int cvhalve, int cvothr, String cvothrx,
//			int cbstroke, int strokmul, int strokyr, int cbtia, int tiamult,
//			int tiayear, int pd, int pdyr, int pdothr, int pdothryr,
//			int seizures, int tbi, int tbibrief, int tbiexten, int tbiwolos,
//			int tbiyear, int diabetes, int diabtype, int hyperten,
//			int hypercho, int b12def, int thyroid, int arthrit, int arthtype,
//			String arthtypx, int arthupex, int arthloex, int arthspin,
//			int arthunk, int incontu, int incontf, int apnea, int rbd,
//			int insomn, int orthsleep, String othsleex, int alcohol,
//			int abusothr, String abusx, int ptsd, int bipolar, int schiz,
//			int dep2yrs, int depothr, int anxiety, int ocd, int npsydev,
//			int psycdis, String psycdisx) {
//		super();
//		this.user = user;
//		this.subject = subject;
//		this.header = header;
//		this.a5 = a5;
//		this.tobac30 = tobac30;
//		this.tobac100 = tobac100;
//		this.smokyrs = smokyrs;
//		this.packsper = packsper;
//		this.quitsmok = quitsmok;
//		this.alcoccas = alcoccas;
//		this.alcfreq = alcfreq;
//		this.cvhatt = cvhatt;
//		this.hattmult = hattmult;
//		this.hattyear = hattyear;
//		this.cvafib = cvafib;
//		this.cvangio = cvangio;
//		this.cvbypass = cvbypass;
//		this.cvpacdef = cvpacdef;
//		this.cvchf = cvchf;
//		this.cvangina = cvangina;
//		this.cvhalve = cvhalve;
//		this.cvothr = cvothr;
//		this.cvothrx = cvothrx;
//		this.cbstroke = cbstroke;
//		this.strokmul = strokmul;
//		this.strokyr = strokyr;
//		this.cbtia = cbtia;
//		this.tiamult = tiamult;
//		this.tiayear = tiayear;
//		this.pd = pd;
//		this.pdyr = pdyr;
//		this.pdothr = pdothr;
//		this.pdothryr = pdothryr;
//		this.seizures = seizures;
//		this.tbi = tbi;
//		this.tbibrief = tbibrief;
//		this.tbiexten = tbiexten;
//		this.tbiwolos = tbiwolos;
//		this.tbiyear = tbiyear;
//		this.diabetes = diabetes;
//		this.diabtype = diabtype;
//		this.hyperten = hyperten;
//		this.hypercho = hypercho;
//		this.b12def = b12def;
//		this.thyroid = thyroid;
//		this.arthrit = arthrit;
//		this.arthtype = arthtype;
//		this.arthtypx = arthtypx;
//		this.arthupex = arthupex;
//		this.arthloex = arthloex;
//		this.arthspin = arthspin;
//		this.arthunk = arthunk;
//		this.incontu = incontu;
//		this.incontf = incontf;
//		this.apnea = apnea;
//		this.rbd = rbd;
//		this.insomn = insomn;
//		this.orthsleep = orthsleep;
//		this.othsleex = othsleex;
//		this.alcohol = alcohol;
//		this.abusothr = abusothr;
//		this.abusx = abusx;
//		this.ptsd = ptsd;
//		this.bipolar = bipolar;
//		this.schiz = schiz;
//		this.dep2yrs = dep2yrs;
//		this.depothr = depothr;
//		this.anxiety = anxiety;
//		this.ocd = ocd;
//		this.npsydev = npsydev;
//		this.psycdis = psycdis;
//		this.psycdisx = psycdisx;
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
	public int getA5() {
		return a5;
	}
	public void setA5(int a5) {
		this.a5 = a5;
	}
	public int getTobac30() {
		return tobac30;
	}
	public void setTobac30(int tobac30) {
		this.tobac30 = tobac30;
	}
	public int getTobac100() {
		return tobac100;
	}
	public void setTobac100(int tobac100) {
		this.tobac100 = tobac100;
	}
	public int getSmokyrs() {
		return smokyrs;
	}
	public void setSmokyrs(int smokyrs) {
		this.smokyrs = smokyrs;
	}
	public int getPacksper() {
		return packsper;
	}
	public void setPacksper(int packsper) {
		this.packsper = packsper;
	}
	public int getQuitsmok() {
		return quitsmok;
	}
	public void setQuitsmok(int quitsmok) {
		this.quitsmok = quitsmok;
	}
	public int getAlcoccas() {
		return alcoccas;
	}
	public void setAlcoccas(int alcoccas) {
		this.alcoccas = alcoccas;
	}
	public int getAlcfreq() {
		return alcfreq;
	}
	public void setAlcfreq(int alcfreq) {
		this.alcfreq = alcfreq;
	}
	public int getCvhatt() {
		return cvhatt;
	}
	public void setCvhatt(int cvhatt) {
		this.cvhatt = cvhatt;
	}
	public int getHattmult() {
		return hattmult;
	}
	public void setHattmult(int hattmult) {
		this.hattmult = hattmult;
	}
	public int getHattyear() {
		return hattyear;
	}
	public void setHattyear(int hattyear) {
		this.hattyear = hattyear;
	}
	public int getCvafib() {
		return cvafib;
	}
	public void setCvafib(int cvafib) {
		this.cvafib = cvafib;
	}
	public int getCvangio() {
		return cvangio;
	}
	public void setCvangio(int cvangio) {
		this.cvangio = cvangio;
	}
	public int getCvbypass() {
		return cvbypass;
	}
	public void setCvbypass(int cvbypass) {
		this.cvbypass = cvbypass;
	}
	public int getCvpacdef() {
		return cvpacdef;
	}
	public void setCvpacdef(int cvpacdef) {
		this.cvpacdef = cvpacdef;
	}
	public int getCvchf() {
		return cvchf;
	}
	public void setCvchf(int cvchf) {
		this.cvchf = cvchf;
	}
	public int getCvangina() {
		return cvangina;
	}
	public void setCvangina(int cvangina) {
		this.cvangina = cvangina;
	}
	public int getCvhalve() {
		return cvhalve;
	}
	public void setCvhalve(int cvhalve) {
		this.cvhalve = cvhalve;
	}
	public int getCvothr() {
		return cvothr;
	}
	public void setCvothr(int cvothr) {
		this.cvothr = cvothr;
	}
	public String getCvothrx() {
		return cvothrx;
	}
	public void setCvothrx(String cvothrx) {
		this.cvothrx = cvothrx;
	}
	public int getCbstroke() {
		return cbstroke;
	}
	public void setCbstroke(int cbstroke) {
		this.cbstroke = cbstroke;
	}
	public int getStrokmul() {
		return strokmul;
	}
	public void setStrokmul(int strokmul) {
		this.strokmul = strokmul;
	}
	public int getStrokyr() {
		return strokyr;
	}
	public void setStrokyr(int strokyr) {
		this.strokyr = strokyr;
	}
	public int getCbtia() {
		return cbtia;
	}
	public void setCbtia(int cbtia) {
		this.cbtia = cbtia;
	}
	public int getTiamult() {
		return tiamult;
	}
	public void setTiamult(int tiamult) {
		this.tiamult = tiamult;
	}
	public int getTiayear() {
		return tiayear;
	}
	public void setTiayear(int tiayear) {
		this.tiayear = tiayear;
	}
	public int getPd() {
		return pd;
	}
	public void setPd(int pd) {
		this.pd = pd;
	}
	public int getPdyr() {
		return pdyr;
	}
	public void setPdyr(int pdyr) {
		this.pdyr = pdyr;
	}
	public int getPdothr() {
		return pdothr;
	}
	public void setPdothr(int pdothr) {
		this.pdothr = pdothr;
	}
	public int getPdothryr() {
		return pdothryr;
	}
	public void setPdothryr(int pdothryr) {
		this.pdothryr = pdothryr;
	}
	public int getSeizures() {
		return seizures;
	}
	public void setSeizures(int seizures) {
		this.seizures = seizures;
	}
	public int getTbi() {
		return tbi;
	}
	public void setTbi(int tbi) {
		this.tbi = tbi;
	}
	public int getTbibrief() {
		return tbibrief;
	}
	public void setTbibrief(int tbibrief) {
		this.tbibrief = tbibrief;
	}
	public int getTbiexten() {
		return tbiexten;
	}
	public void setTbiexten(int tbiexten) {
		this.tbiexten = tbiexten;
	}
	public int getTbiwolos() {
		return tbiwolos;
	}
	public void setTbiwolos(int tbiwolos) {
		this.tbiwolos = tbiwolos;
	}
	public int getTbiyear() {
		return tbiyear;
	}
	public void setTbiyear(int tbiyear) {
		this.tbiyear = tbiyear;
	}
	public int getDiabetes() {
		return diabetes;
	}
	public void setDiabetes(int diabetes) {
		this.diabetes = diabetes;
	}
	public int getDiabtype() {
		return diabtype;
	}
	public void setDiabtype(int diabtype) {
		this.diabtype = diabtype;
	}
	public int getHyperten() {
		return hyperten;
	}
	public void setHyperten(int hyperten) {
		this.hyperten = hyperten;
	}
	public int getHypercho() {
		return hypercho;
	}
	public void setHypercho(int hypercho) {
		this.hypercho = hypercho;
	}
	public int getB12def() {
		return b12def;
	}
	public void setB12def(int b12def) {
		this.b12def = b12def;
	}
	@Id
	@GeneratedValue
	public int getThyroid() {
		return thyroid;
	}
	public void setThyroid(int thyroid) {
		this.thyroid = thyroid;
	}
	public int getArthrit() {
		return arthrit;
	}
	public void setArthrit(int arthrit) {
		this.arthrit = arthrit;
	}
	public int getArthtype() {
		return arthtype;
	}
	public void setArthtype(int arthtype) {
		this.arthtype = arthtype;
	}
	public String getArthtypx() {
		return arthtypx;
	}
	public void setArthtypx(String arthtypx) {
		this.arthtypx = arthtypx;
	}
	public int getArthupex() {
		return arthupex;
	}
	public void setArthupex(int arthupex) {
		this.arthupex = arthupex;
	}
	public int getArthloex() {
		return arthloex;
	}
	public void setArthloex(int arthloex) {
		this.arthloex = arthloex;
	}
	public int getArthspin() {
		return arthspin;
	}
	public void setArthspin(int arthspin) {
		this.arthspin = arthspin;
	}
	public int getArthunk() {
		return arthunk;
	}
	public void setArthunk(int arthunk) {
		this.arthunk = arthunk;
	}
	public int getIncontu() {
		return incontu;
	}
	public void setIncontu(int incontu) {
		this.incontu = incontu;
	}
	public int getIncontf() {
		return incontf;
	}
	public void setIncontf(int incontf) {
		this.incontf = incontf;
	}
	public int getApnea() {
		return apnea;
	}
	public void setApnea(int apnea) {
		this.apnea = apnea;
	}
	public int getRbd() {
		return rbd;
	}
	public void setRbd(int rbd) {
		this.rbd = rbd;
	}
	public int getInsomn() {
		return insomn;
	}
	public void setInsomn(int insomn) {
		this.insomn = insomn;
	}
	public int getOrthsleep() {
		return orthsleep;
	}
	public void setOrthsleep(int orthsleep) {
		this.orthsleep = orthsleep;
	}
	public String getOthsleex() {
		return othsleex;
	}
	public void setOthsleex(String othsleex) {
		this.othsleex = othsleex;
	}
	public int getAlcohol() {
		return alcohol;
	}
	public void setAlcohol(int alcohol) {
		this.alcohol = alcohol;
	}
	public int getAbusothr() {
		return abusothr;
	}
	public void setAbusothr(int abusothr) {
		this.abusothr = abusothr;
	}
	public String getAbusx() {
		return abusx;
	}
	public void setAbusx(String abusx) {
		this.abusx = abusx;
	}
	public int getPtsd() {
		return ptsd;
	}
	public void setPtsd(int ptsd) {
		this.ptsd = ptsd;
	}
	public int getBipolar() {
		return bipolar;
	}
	public void setBipolar(int bipolar) {
		this.bipolar = bipolar;
	}
	public int getSchiz() {
		return schiz;
	}
	public void setSchiz(int schiz) {
		this.schiz = schiz;
	}
	public int getDep2yrs() {
		return dep2yrs;
	}
	public void setDep2yrs(int dep2yrs) {
		this.dep2yrs = dep2yrs;
	}
	public int getDepothr() {
		return depothr;
	}
	public void setDepothr(int depothr) {
		this.depothr = depothr;
	}
	public int getAnxiety() {
		return anxiety;
	}
	public void setAnxiety(int anxiety) {
		this.anxiety = anxiety;
	}
	public int getOcd() {
		return ocd;
	}
	public void setOcd(int ocd) {
		this.ocd = ocd;
	}
	public int getNpsydev() {
		return npsydev;
	}
	public void setNpsydev(int npsydev) {
		this.npsydev = npsydev;
	}
	public int getPsycdis() {
		return psycdis;
	}
	public void setPsycdis(int psycdis) {
		this.psycdis = psycdis;
	}
	public String getPsycdisx() {
		return psycdisx;
	}
	public void setPsycdisx(String psycdisx) {
		this.psycdisx = psycdisx;
	}
}
