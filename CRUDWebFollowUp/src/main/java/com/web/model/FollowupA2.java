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
public class FollowupA2 implements Serializable{

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
	int a2;
	@Column
	int inbirmo;
	@Column
	int inbiryr;
	@Column
	int insex;
	@Column
	int newinf;
	@Column
	int inhisp;
	@Column
	int inhispor;
	@Column
	String inhispox;
	@Column
	int inrace;
	@Column
	String inracex;
	@Column
	int inrasec;
	@Column
	String inrasecx;
	@Column
	int inrater;
	@Column
	String inraterx;
	@Column
	int ineduc;
	@Column
	int inrelto;
	@Column
	int inknown;
	@Column
	int inlivwth;
	@Column
	int invisits;
	@Column
	int incalls;
	@Column
	int inrely;
		
	public FollowupA2() {
		super();
	}

	public FollowupA2(int a2, int inbirmo, int inbiryr, int insex, int newinf,int inhisp,
			int inhispor, String inhispox, int inrace, String inracex,
			int inrasec, String inrasecx, int inrater, String inraterx,
			int ineduc, int inrelto, int inknown, int inlivwth, int invisits,
			int incalls, int inrely) {
		super();
		this.a2 = a2;
		this.inbirmo = inbirmo;
		this.inbiryr = inbiryr;
		this.insex = insex;
		this.newinf = newinf;
		this.inhisp = inhisp;
		this.inhispor = inhispor;
		this.inhispox = inhispox;
		this.inrace = inrace;
		this.inracex = inracex;
		this.inrasec = inrasec;
		this.inrasecx = inrasecx;
		this.inrater = inrater;
		this.inraterx = inraterx;
		this.ineduc = ineduc;
		this.inrelto = inrelto;
		this.inknown = inknown;
		this.inlivwth = inlivwth;
		this.invisits = invisits;
		this.incalls = incalls;
		this.inrely = inrely;
	}

	/*public FollowupA2(User user, Subject subject, Header header, int a2, int newinf,int inbirmo,
			int inbiryr, int insex, int inhisp, int inhispor, String inhispox,
			int inrace, String inracex, int inrasec, String inrasecx,
			int inrater, String inraterx, int ineduc, int inrelto, int inknown,
			int inlivwth, int invisits, int incalls, int inrely) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.a2 = a2;
		this.inbirmo = inbirmo;
		this.inbiryr = inbiryr;
		this.insex = insex;
		this.newinf = newinf;
		this.inhisp = inhisp;
		this.inhispor = inhispor;
		this.inhispox = inhispox;
		this.inrace = inrace;
		this.inracex = inracex;
		this.inrasec = inrasec;
		this.inrasecx = inrasecx;
		this.inrater = inrater;
		this.inraterx = inraterx;
		this.ineduc = ineduc;
		this.inrelto = inrelto;
		this.inknown = inknown;
		this.inlivwth = inlivwth;
		this.invisits = invisits;
		this.incalls = incalls;
		this.inrely = inrely;
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

	public int getA2() {
		return a2;
	}

	public void setA2(int a2) {
		this.a2 = a2;
	}

	public int getInbirmo() {
		return inbirmo;
	}

	public void setInbirmo(int inbirmo) {
		this.inbirmo = inbirmo;
	}

	public int getInbiryr() {
		return inbiryr;
	}

	public void setInbiryr(int inbiryr) {
		this.inbiryr = inbiryr;
	}

	public int getInsex() {
		return insex;
	}

	public void setInsex(int insex) {
		this.insex = insex;
	}

	public int getInhisp() {
		return inhisp;
	}

	public void setInhisp(int inhisp) {
		this.inhisp = inhisp;
	}

	public int getInhispor() {
		return inhispor;
	}

	public void setInhispor(int inhispor) {
		this.inhispor = inhispor;
	}

	public String getInhispox() {
		return inhispox;
	}

	public void setInhispox(String inhispox) {
		this.inhispox = inhispox;
	}

	public int getInrace() {
		return inrace;
	}

	public void setInrace(int inrace) {
		this.inrace = inrace;
	}

	public String getInracex() {
		return inracex;
	}

	public void setInracex(String inracex) {
		this.inracex = inracex;
	}

	public int getInrasec() {
		return inrasec;
	}

	public void setInrasec(int inrasec) {
		this.inrasec = inrasec;
	}

	public String getInrasecx() {
		return inrasecx;
	}

	public void setInrasecx(String inrasecx) {
		this.inrasecx = inrasecx;
	}

	public int getInrater() {
		return inrater;
	}

	public void setInrater(int inrater) {
		this.inrater = inrater;
	}

	public String getInraterx() {
		return inraterx;
	}

	public void setInraterx(String inraterx) {
		this.inraterx = inraterx;
	}

	public int getIneduc() {
		return ineduc;
	}

	public void setIneduc(int ineduc) {
		this.ineduc = ineduc;
	}

	public int getInrelto() {
		return inrelto;
	}

	public void setInrelto(int inrelto) {
		this.inrelto = inrelto;
	}

	public int getInknown() {
		return inknown;
	}

	public void setInknown(int inknown) {
		this.inknown = inknown;
	}

	public int getInlivwth() {
		return inlivwth;
	}

	public void setInlivwth(int inlivwth) {
		this.inlivwth = inlivwth;
	}

	public int getInvisits() {
		return invisits;
	}

	public void setInvisits(int invisits) {
		this.invisits = invisits;
	}

	public int getIncalls() {
		return incalls;
	}

	public void setIncalls(int incalls) {
		this.incalls = incalls;
	}

	public int getInrely() {
		return inrely;
	}

	public void setInrely(int inrely) {
		this.inrely = inrely;
	}
	public int getNewinf() {
		return newinf;
	}

	public void setNewinf(int newinf) {
		this.newinf = newinf;
	}

}
