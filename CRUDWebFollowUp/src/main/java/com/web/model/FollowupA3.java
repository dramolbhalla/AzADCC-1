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
//import persistance.entities.Subjects.Subject;
//import persistance.entities.Users.User;

@Entity
public class FollowupA3 implements Serializable{
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
	int a3;
	@Column
	int nwinfmut;
	@Column
	int fadmut;
	@Column
	String fadmutx;
	@Column
	int fadmuso;
	@Column
	String fadmusox;
	@Column
	int fftdmut;
	@Column
	String fftdmutx;
	@Column
	int fftdmuso;
	@Column
	String fftdmusx;
	@Column
	int fothmut;
	@Column
	String fothmutx;
	@Column
	int fothmuso;
	@Column
	String fothmusx;
	@Column
	int nwinfpar;
	@Column
	int mommob;
	@Column
	int momyob;
	@Column
	int momdage;
	@Column
	int momneur;
	@Column
	int momprdx;
	@Column
	int mommoe;
	@Column
	int momageo;
	@Column
	int dadmob;
	@Column
	int dadyob;
	@Column
	int daddage;
	@Column
	int dadneur;
	@Column
	int dadprdx;
	@Column
	int dadmoe;
	@Column
	int dadageo;
	@Column
	int sibs;
	@Column
	int nwinfsib;
	@Column
	int sib1mob;
	@Column
	int sib1yob;
	@Column
	int sib1agd;
	@Column
	int sib1neu;
	@Column
	int sib1pdx;
	@Column
	int sib1moe;
	@Column
	int sib1ago;
	@Column
	int sib2mob;
	@Column
	int sib2yob;
	@Column
	int sib2agd;
	@Column
	int sib2neu;
	@Column
	int sib2pdx;
	@Column
	int sib2moe;
	@Column
	int sib2ago;
	@Column
	int sib3mob;
	@Column
	int sib3yob;
	@Column
	int sib3agd;
	@Column
	int sib3neu;
	@Column
	int sib3pdx;
	@Column
	int sib3moe;
	@Column
	int sib3ago;
	@Column
	int sib4mob;
	@Column
	int sib4yob;
	@Column
	int sib4agd;
	@Column
	int sib4neu;
	@Column
	int sib4pdx;
	@Column
	int sib4moe;
	@Column
	int sib4ago;
	@Column
	int sib5mob;
	@Column
	int sib5yob;
	@Column
	int sib5agd;
	@Column
	int sib5neu;
	@Column
	int sib5pdx;
	@Column
	int sib5moe;
	@Column
	int sib5ago;
	@Column
	int sib6mob;
	@Column
	int sib6yob;
	@Column
	int sib6agd;
	@Column
	int sib6neu;
	@Column
	int sib6pdx;
	@Column
	int sib6moe;
	@Column
	int sib6ago;
	@Column
	int sib7mob;
	@Column
	int sib7yob;
	@Column
	int sib7agd;
	@Column
	int sib7neu;
	@Column
	int sib7pdx;
	@Column
	int sib7moe;
	@Column
	int sib7ago;
	@Column
	int sib8mob;
	@Column
	int sib8yob;
	@Column
	int sib8agd;
	@Column
	int sib8neu;
	@Column
	int sib8pdx;
	@Column
	int sib8moe;
	@Column
	int sib8ago;
	@Column
	int sib9mob;
	@Column
	int sib9yob;
	@Column
	int sib9agd;
	@Column
	int sib9neu;
	@Column
	int sib9pdx;
	@Column
	int sib9moe;
	@Column
	int sib9ago;
	@Column
	int sib10mob;
	@Column
	int sib10yob;
	@Column
	int sib10agd;
	@Column
	int sib10neu;
	@Column
	int sib10pdx;
	@Column
	int sib10moe;
	@Column
	int sib10ago;
	@Column
	int sib11mob;
	@Column
	int sib11yob;
	@Column
	int sib11agd;
	@Column
	int sib11neu;
	@Column
	int sib11pdx;
	@Column
	int sib11moe;
	@Column
	int sib11ago;
	@Column
	int sib12mob;
	@Column
	int sib12yob;
	@Column
	int sib12agd;
	@Column
	int sib12neu;
	@Column
	int sib12pdx;
	@Column
	int sib12moe;
	@Column
	int sib12ago;
	@Column
	int sib13mob;
	@Column
	int sib13yob;
	@Column
	int sib13agd;
	@Column
	int sib13neu;
	@Column
	int sib13pdx;
	@Column
	int sib13moe;
	@Column
	int sib13ago;
	@Column
	int sib14mob;
	@Column
	int sib14yob;
	@Column
	int sib14agd;
	@Column
	int sib14neu;
	@Column
	int sib14pdx;
	@Column
	int sib14moe;
	@Column
	int sib14ago;
	@Column
	int sib15mob;
	@Column
	int sib15yob;
	@Column
	int sib15agd;
	@Column
	int sib15neu;
	@Column
	int sib15pdx;
	@Column
	int sib15moe;
	@Column
	int sib15ago;
	@Column
	int sib16mob;
	@Column
	int sib16yob;
	@Column
	int sib16agd;
	@Column
	int sib16neu;
	@Column
	int sib16pdx;
	@Column
	int sib16moe;
	@Column
	int sib16ago;
	@Column
	int sib17mob;
	@Column
	int sib17yob;
	@Column
	int sib17agd;
	@Column
	int sib17neu;
	@Column
	int sib17pdx;
	@Column
	int sib17moe;
	@Column
	int sib17ago;
	@Column
	int sib18mob;
	@Column
	int sib18yob;
	@Column
	int sib18agd;
	@Column
	int sib18neu;
	@Column
	int sib18pdx;
	@Column
	int sib18moe;
	@Column
	int sib18ago;
	@Column
	int sib19mob;
	@Column
	int sib19yob;
	@Column
	int sib19agd;
	@Column
	int sib19neu;
	@Column
	int sib19pdx;
	@Column
	int sib19moe;
	@Column
	int sib19ago;
	@Column
	int sib20mob;
	@Column
	int sib20yob;
	@Column
	int sib20agd;
	@Column
	int sib20neu;
	@Column
	int sib20pdx;
	@Column
	int sib20moe;
	@Column
	int sib20ago;
	@Column
	int kids;
	@Column
	int nwinfkid;
	@Column
	int kid1mob;
	@Column
	int kid1yob;
	@Column
	int kid1agd;
	@Column
	int kid1neu;
	@Column
	int kid1pdx;
	@Column
	int kid1moe;
	@Column
	int kid1ago;
	@Column
	int kid2mob;
	@Column
	int kid2yob;
	@Column
	int kid2agd;
	@Column
	int kid2neu;
	@Column
	int kid2pdx;
	@Column
	int kid2moe;
	@Column
	int kid2ago;
	@Column
	int kid3mob;
	@Column
	int kid3yob;
	@Column
	int kid3agd;
	@Column
	int kid3neu;
	@Column
	int kid3pdx;
	@Column
	int kid3moe;
	@Column
	int kid3ago;
	@Column
	int kid4mob;
	@Column
	int kid4yob;
	@Column
	int kid4agd;
	@Column
	int kid4neu;
	@Column
	int kid4pdx;
	@Column
	int kid4moe;
	@Column
	int kid4ago;
	@Column
	int kid5mob;
	@Column
	int kid5yob;
	@Column
	int kid5agd;
	@Column
	int kid5neu;
	@Column
	int kid5pdx;
	@Column
	int kid5moe;
	@Column
	int kid5ago;
	@Column
	int kid6mob;
	@Column
	int kid6yob;
	@Column
	int kid6agd;
	@Column
	int kid6neu;
	@Column
	int kid6pdx;
	@Column
	int kid6moe;
	@Column
	int kid6ago;
	@Column
	int kid7mob;
	@Column
	int kid7yob;
	@Column
	int kid7agd;
	@Column
	int kid7neu;
	@Column
	int kid7pdx;
	@Column
	int kid7moe;
	@Column
	int kid7ago;
	@Column
	int kid8mob;
	@Column
	int kid8yob;
	@Column
	int kid8agd;
	@Column
	int kid8neu;
	@Column
	int kid8pdx;
	@Column
	int kid8moe;
	@Column
	int kid8ago;
	@Column
	int kid9mob;
	@Column
	int kid9yob;
	@Column
	int kid9agd;
	@Column
	int kid9neu;
	@Column
	int kid9pdx;
	@Column
	int kid9moe;
	@Column
	int kid9ago;
	@Column
	int kid10mob;
	@Column
	int kid10yob;
	@Column
	int kid10agd;
	@Column
	int kid10neu;
	@Column
	int kid10pdx;
	@Column
	int kid10moe;
	@Column
	int kid10ago;
	@Column
	int kid11mob;
	@Column
	int kid11yob;
	@Column
	int kid11agd;
	@Column
	int kid11neu;
	@Column
	int kid11pdx;
	@Column
	int kid11moe;
	@Column
	int kid11ago;
	@Column
	int kid12mob;
	@Column
	int kid12yob;
	@Column
	int kid12agd;
	@Column
	int kid12neu;
	@Column
	int kid12pdx;
	@Column
	int kid12moe;
	@Column
	int kid12ago;
	@Column
	int kid13mob;
	@Column
	int kid13yob;
	@Column
	int kid13agd;
	@Column
	int kid13neu;
	@Column
	int kid13pdx;
	@Column
	int kid13moe;
	@Column
	int kid13ago;
	@Column
	int kid14mob;
	@Column
	int kid14yob;
	@Column
	int kid14agd;
	@Column
	int kid14neu;
	@Column
	int kid14pdx;
	@Column
	int kid14moe;
	@Column
	int kid14ago;
	@Column
	int kid15mob;
	@Column
	int kid15yob;
	@Column
	int kid15agd;
	@Column
	int kid15neu;
	@Column
	int kid15pdx;
	@Column
	int kid15moe;
	@Column
	int kid15ago;
	
	public FollowupA3() {
		super();
	}

	/*public FollowupA3(int a3, int nwinfmut, int fadmut, String fadmutx, int fadmuso,
			String fadmusox, int fftdmut, String fftdmutx, int fftdmuso,
			String fftdmusx, int fothmut, String fothmutx, int fothmuso,
			String fothmusx, int mommob, int momyob, int momdage, int momneur,
			int momprdx, int mommoe, int momageo, int dadmob, int dadyob,
			int daddage, int dadneur, int dadprdx, int dadmoe, int dadageo,
			int sibs, int nwinfsib, int sib1mob, int sib1yob, int sib1agd,
			int sib1neu, int sib1pdx, int sib1moe, int sib1ago, int sib2mob,
			int sib2yob, int sib2agd, int sib2neu, int sib2pdx, int sib2moe,
			int sib2ago, int sib3mob, int sib3yob, int sib3agd, int sib3neu,
			int sib3pdx, int sib3moe, int sib3ago, int sib4mob, int sib4yob,
			int sib4agd, int sib4neu, int sib4pdx, int sib4moe, int sib4ago,
			int sib5mob, int sib5yob, int sib5agd, int sib5neu, int sib5pdx,
			int sib5moe, int sib5ago, int sib6mob, int sib6yob, int sib6agd,
			int sib6neu, int sib6pdx, int sib6moe, int sib6ago, int sib7mob,
			int sib7yob, int sib7agd, int sib7neu, int sib7pdx, int sib7moe,
			int sib7ago, int sib8mob, int sib8yob, int sib8agd, int sib8neu,
			int sib8pdx, int sib8moe, int sib8ago, int sib9mob, int sib9yob,
			int sib9agd, int sib9neu, int sib9pdx, int sib9moe, int sib9ago,
			int sib10mob, int sib10yob, int sib10agd, int sib10neu,
			int sib10pdx, int sib10moe, int sib10ago, int sib11mob,
			int sib11yob, int sib11agd, int sib11neu, int sib11pdx,
			int sib11moe, int sib11ago, int sib12mob, int sib12yob,
			int sib12agd, int sib12neu, int sib12pdx, int sib12moe,
			int sib12ago, int sib13mob, int sib13yob, int sib13agd,
			int sib13neu, int sib13pdx, int sib13moe, int sib13ago,
			int sib14mob, int sib14yob, int sib14agd, int sib14neu,
			int sib14pdx, int sib14moe, int sib14ago, int sib15mob,
			int sib15yob, int sib15agd, int sib15neu, int sib15pdx,
			int sib15moe, int sib15ago, int sib16mob, int sib16yob,
			int sib16agd, int sib16neu, int sib16pdx, int sib16moe,
			int sib16ago, int sib17mob, int sib17yob, int sib17agd,
			int sib17neu, int sib17pdx, int sib17moe, int sib17ago,
			int sib18mob, int sib18yob, int sib18agd, int sib18neu,
			int sib18pdx, int sib18moe, int sib18ago, int sib19mob,
			int sib19yob, int sib19agd, int sib19neu, int sib19pdx,
			int sib19moe, int sib19ago, int sib20mob, int sib20yob,
			int sib20agd, int sib20neu, int sib20pdx, int sib20moe,
			int sib20ago, int kids, int nwinfkid, int kid1mob, int kid1yob,
			int kid1agd, int kid1neu, int kid1pdx, int kid1moe, int kid1ago,
			int kid2mob, int kid2yob, int kid2agd, int kid2neu, int kid2pdx,
			int kid2moe, int kid2ago, int kid3mob, int kid3yob, int kid3agd,
			int kid3neu, int kid3pdx, int kid3moe, int kid3ago, int kid4mob,
			int kid4yob, int kid4agd, int kid4neu, int kid4pdx, int kid4moe,
			int kid4ago, int kid5mob, int kid5yob, int kid5agd, int kid5neu,
			int kid5pdx, int kid5moe, int kid5ago, int kid6mob, int kid6yob,
			int kid6agd, int kid6neu, int kid6pdx, int kid6moe, int kid6ago,
			int kid7mob, int kid7yob, int kid7agd, int kid7neu, int kid7pdx,
			int kid7moe, int kid7ago, int kid8mob, int kid8yob, int kid8agd,
			int kid8neu, int kid8pdx, int kid8moe, int kid8ago, int kid9mob,
			int kid9yob, int kid9agd, int kid9neu, int kid9pdx, int kid9moe,
			int kid9ago, int kid10mob, int kid10yob, int kid10agd,
			int kid10neu, int kid10pdx, int kid10moe, int kid10ago,
			int kid11mob, int kid11yob, int kid11agd, int kid11neu,
			int kid11pdx, int kid11moe, int kid11ago, int kid12mob,
			int kid12yob, int kid12agd, int kid12neu, int kid12pdx,
			int kid12moe, int kid12ago, int kid13mob, int kid13yob,
			int kid13agd, int kid13neu, int kid13pdx, int kid13moe,
			int kid13ago, int kid14mob, int kid14yob, int kid14agd,
			int kid14neu, int kid14pdx, int kid14moe, int kid14ago,
			int kid15mob, int kid15yob, int kid15agd, int kid15neu,
			int kid15pdx, int kid15moe, int kid15ago) {
		super();
		this.a3 = a3;
		this.nwinfmut = nwinfmut;
		this.fadmut = fadmut;
		this.fadmutx = fadmutx;
		this.fadmuso = fadmuso;
		this.fadmusox = fadmusox;
		this.fftdmut = fftdmut;
		this.fftdmutx = fftdmutx;
		this.fftdmuso = fftdmuso;
		this.fftdmusx = fftdmusx;
		this.fothmut = fothmut;
		this.fothmutx = fothmutx;
		this.fothmuso = fothmuso;
		this.fothmusx = fothmusx;
		this.mommob = mommob;
		this.momyob = momyob;
		this.momdage = momdage;
		this.momneur = momneur;
		this.momprdx = momprdx;
		this.mommoe = mommoe;
		this.momageo = momageo;
		this.dadmob = dadmob;
		this.dadyob = dadyob;
		this.daddage = daddage;
		this.dadneur = dadneur;
		this.dadprdx = dadprdx;
		this.dadmoe = dadmoe;
		this.dadageo = dadageo;
		this.sibs = sibs;
		this.nwinfsib = nwinfsib;
		this.sib1mob = sib1mob;
		this.sib1yob = sib1yob;
		this.sib1agd = sib1agd;
		this.sib1neu = sib1neu;
		this.sib1pdx = sib1pdx;
		this.sib1moe = sib1moe;
		this.sib1ago = sib1ago;
		this.sib2mob = sib2mob;
		this.sib2yob = sib2yob;
		this.sib2agd = sib2agd;
		this.sib2neu = sib2neu;
		this.sib2pdx = sib2pdx;
		this.sib2moe = sib2moe;
		this.sib2ago = sib2ago;
		this.sib3mob = sib3mob;
		this.sib3yob = sib3yob;
		this.sib3agd = sib3agd;
		this.sib3neu = sib3neu;
		this.sib3pdx = sib3pdx;
		this.sib3moe = sib3moe;
		this.sib3ago = sib3ago;
		this.sib4mob = sib4mob;
		this.sib4yob = sib4yob;
		this.sib4agd = sib4agd;
		this.sib4neu = sib4neu;
		this.sib4pdx = sib4pdx;
		this.sib4moe = sib4moe;
		this.sib4ago = sib4ago;
		this.sib5mob = sib5mob;
		this.sib5yob = sib5yob;
		this.sib5agd = sib5agd;
		this.sib5neu = sib5neu;
		this.sib5pdx = sib5pdx;
		this.sib5moe = sib5moe;
		this.sib5ago = sib5ago;
		this.sib6mob = sib6mob;
		this.sib6yob = sib6yob;
		this.sib6agd = sib6agd;
		this.sib6neu = sib6neu;
		this.sib6pdx = sib6pdx;
		this.sib6moe = sib6moe;
		this.sib6ago = sib6ago;
		this.sib7mob = sib7mob;
		this.sib7yob = sib7yob;
		this.sib7agd = sib7agd;
		this.sib7neu = sib7neu;
		this.sib7pdx = sib7pdx;
		this.sib7moe = sib7moe;
		this.sib7ago = sib7ago;
		this.sib8mob = sib8mob;
		this.sib8yob = sib8yob;
		this.sib8agd = sib8agd;
		this.sib8neu = sib8neu;
		this.sib8pdx = sib8pdx;
		this.sib8moe = sib8moe;
		this.sib8ago = sib8ago;
		this.sib9mob = sib9mob;
		this.sib9yob = sib9yob;
		this.sib9agd = sib9agd;
		this.sib9neu = sib9neu;
		this.sib9pdx = sib9pdx;
		this.sib9moe = sib9moe;
		this.sib9ago = sib9ago;
		this.sib10mob = sib10mob;
		this.sib10yob = sib10yob;
		this.sib10agd = sib10agd;
		this.sib10neu = sib10neu;
		this.sib10pdx = sib10pdx;
		this.sib10moe = sib10moe;
		this.sib10ago = sib10ago;
		this.sib11mob = sib11mob;
		this.sib11yob = sib11yob;
		this.sib11agd = sib11agd;
		this.sib11neu = sib11neu;
		this.sib11pdx = sib11pdx;
		this.sib11moe = sib11moe;
		this.sib11ago = sib11ago;
		this.sib12mob = sib12mob;
		this.sib12yob = sib12yob;
		this.sib12agd = sib12agd;
		this.sib12neu = sib12neu;
		this.sib12pdx = sib12pdx;
		this.sib12moe = sib12moe;
		this.sib12ago = sib12ago;
		this.sib13mob = sib13mob;
		this.sib13yob = sib13yob;
		this.sib13agd = sib13agd;
		this.sib13neu = sib13neu;
		this.sib13pdx = sib13pdx;
		this.sib13moe = sib13moe;
		this.sib13ago = sib13ago;
		this.sib14mob = sib14mob;
		this.sib14yob = sib14yob;
		this.sib14agd = sib14agd;
		this.sib14neu = sib14neu;
		this.sib14pdx = sib14pdx;
		this.sib14moe = sib14moe;
		this.sib14ago = sib14ago;
		this.sib15mob = sib15mob;
		this.sib15yob = sib15yob;
		this.sib15agd = sib15agd;
		this.sib15neu = sib15neu;
		this.sib15pdx = sib15pdx;
		this.sib15moe = sib15moe;
		this.sib15ago = sib15ago;
		this.sib16mob = sib16mob;
		this.sib16yob = sib16yob;
		this.sib16agd = sib16agd;
		this.sib16neu = sib16neu;
		this.sib16pdx = sib16pdx;
		this.sib16moe = sib16moe;
		this.sib16ago = sib16ago;
		this.sib17mob = sib17mob;
		this.sib17yob = sib17yob;
		this.sib17agd = sib17agd;
		this.sib17neu = sib17neu;
		this.sib17pdx = sib17pdx;
		this.sib17moe = sib17moe;
		this.sib17ago = sib17ago;
		this.sib18mob = sib18mob;
		this.sib18yob = sib18yob;
		this.sib18agd = sib18agd;
		this.sib18neu = sib18neu;
		this.sib18pdx = sib18pdx;
		this.sib18moe = sib18moe;
		this.sib18ago = sib18ago;
		this.sib19mob = sib19mob;
		this.sib19yob = sib19yob;
		this.sib19agd = sib19agd;
		this.sib19neu = sib19neu;
		this.sib19pdx = sib19pdx;
		this.sib19moe = sib19moe;
		this.sib19ago = sib19ago;
		this.sib20mob = sib20mob;
		this.sib20yob = sib20yob;
		this.sib20agd = sib20agd;
		this.sib20neu = sib20neu;
		this.sib20pdx = sib20pdx;
		this.sib20moe = sib20moe;
		this.sib20ago = sib20ago;
		this.kids = kids;
		this.nwinfkid = nwinfkid;
		this.kid1mob = kid1mob;
		this.kid1yob = kid1yob;
		this.kid1agd = kid1agd;
		this.kid1neu = kid1neu;
		this.kid1pdx = kid1pdx;
		this.kid1moe = kid1moe;
		this.kid1ago = kid1ago;
		this.kid2mob = kid2mob;
		this.kid2yob = kid2yob;
		this.kid2agd = kid2agd;
		this.kid2neu = kid2neu;
		this.kid2pdx = kid2pdx;
		this.kid2moe = kid2moe;
		this.kid2ago = kid2ago;
		this.kid3mob = kid3mob;
		this.kid3yob = kid3yob;
		this.kid3agd = kid3agd;
		this.kid3neu = kid3neu;
		this.kid3pdx = kid3pdx;
		this.kid3moe = kid3moe;
		this.kid3ago = kid3ago;
		this.kid4mob = kid4mob;
		this.kid4yob = kid4yob;
		this.kid4agd = kid4agd;
		this.kid4neu = kid4neu;
		this.kid4pdx = kid4pdx;
		this.kid4moe = kid4moe;
		this.kid4ago = kid4ago;
		this.kid5mob = kid5mob;
		this.kid5yob = kid5yob;
		this.kid5agd = kid5agd;
		this.kid5neu = kid5neu;
		this.kid5pdx = kid5pdx;
		this.kid5moe = kid5moe;
		this.kid5ago = kid5ago;
		this.kid6mob = kid6mob;
		this.kid6yob = kid6yob;
		this.kid6agd = kid6agd;
		this.kid6neu = kid6neu;
		this.kid6pdx = kid6pdx;
		this.kid6moe = kid6moe;
		this.kid6ago = kid6ago;
		this.kid7mob = kid7mob;
		this.kid7yob = kid7yob;
		this.kid7agd = kid7agd;
		this.kid7neu = kid7neu;
		this.kid7pdx = kid7pdx;
		this.kid7moe = kid7moe;
		this.kid7ago = kid7ago;
		this.kid8mob = kid8mob;
		this.kid8yob = kid8yob;
		this.kid8agd = kid8agd;
		this.kid8neu = kid8neu;
		this.kid8pdx = kid8pdx;
		this.kid8moe = kid8moe;
		this.kid8ago = kid8ago;
		this.kid9mob = kid9mob;
		this.kid9yob = kid9yob;
		this.kid9agd = kid9agd;
		this.kid9neu = kid9neu;
		this.kid9pdx = kid9pdx;
		this.kid9moe = kid9moe;
		this.kid9ago = kid9ago;
		this.kid10mob = kid10mob;
		this.kid10yob = kid10yob;
		this.kid10agd = kid10agd;
		this.kid10neu = kid10neu;
		this.kid10pdx = kid10pdx;
		this.kid10moe = kid10moe;
		this.kid10ago = kid10ago;
		this.kid11mob = kid11mob;
		this.kid11yob = kid11yob;
		this.kid11agd = kid11agd;
		this.kid11neu = kid11neu;
		this.kid11pdx = kid11pdx;
		this.kid11moe = kid11moe;
		this.kid11ago = kid11ago;
		this.kid12mob = kid12mob;
		this.kid12yob = kid12yob;
		this.kid12agd = kid12agd;
		this.kid12neu = kid12neu;
		this.kid12pdx = kid12pdx;
		this.kid12moe = kid12moe;
		this.kid12ago = kid12ago;
		this.kid13mob = kid13mob;
		this.kid13yob = kid13yob;
		this.kid13agd = kid13agd;
		this.kid13neu = kid13neu;
		this.kid13pdx = kid13pdx;
		this.kid13moe = kid13moe;
		this.kid13ago = kid13ago;
		this.kid14mob = kid14mob;
		this.kid14yob = kid14yob;
		this.kid14agd = kid14agd;
		this.kid14neu = kid14neu;
		this.kid14pdx = kid14pdx;
		this.kid14moe = kid14moe;
		this.kid14ago = kid14ago;
		this.kid15mob = kid15mob;
		this.kid15yob = kid15yob;
		this.kid15agd = kid15agd;
		this.kid15neu = kid15neu;
		this.kid15pdx = kid15pdx;
		this.kid15moe = kid15moe;
		this.kid15ago = kid15ago;
	}

	/*public FollowupA3(User user, Subject subject, Header header, int a3, int nwinfmut,
			int fadmut, String fadmutx, int fadmuso, String fadmusox,
			int fftdmut, String fftdmutx, int fftdmuso, String fftdmusx,
			int fothmut, String fothmutx, int fothmuso, String fothmusx,
			int mommob, int momyob, int momdage, int momneur, int momprdx,
			int mommoe, int momageo, int dadmob, int dadyob, int daddage,
			int dadneur, int dadprdx, int dadmoe, int dadageo, int sibs,
			int nwinfsib, int sib1mob, int sib1yob, int sib1agd, int sib1neu,
			int sib1pdx, int sib1moe, int sib1ago, int sib2mob, int sib2yob,
			int sib2agd, int sib2neu, int sib2pdx, int sib2moe, int sib2ago,
			int sib3mob, int sib3yob, int sib3agd, int sib3neu, int sib3pdx,
			int sib3moe, int sib3ago, int sib4mob, int sib4yob, int sib4agd,
			int sib4neu, int sib4pdx, int sib4moe, int sib4ago, int sib5mob,
			int sib5yob, int sib5agd, int sib5neu, int sib5pdx, int sib5moe,
			int sib5ago, int sib6mob, int sib6yob, int sib6agd, int sib6neu,
			int sib6pdx, int sib6moe, int sib6ago, int sib7mob, int sib7yob,
			int sib7agd, int sib7neu, int sib7pdx, int sib7moe, int sib7ago,
			int sib8mob, int sib8yob, int sib8agd, int sib8neu, int sib8pdx,
			int sib8moe, int sib8ago, int sib9mob, int sib9yob, int sib9agd,
			int sib9neu, int sib9pdx, int sib9moe, int sib9ago, int sib10mob,
			int sib10yob, int sib10agd, int sib10neu, int sib10pdx,
			int sib10moe, int sib10ago, int sib11mob, int sib11yob,
			int sib11agd, int sib11neu, int sib11pdx, int sib11moe,
			int sib11ago, int sib12mob, int sib12yob, int sib12agd,
			int sib12neu, int sib12pdx, int sib12moe, int sib12ago,
			int sib13mob, int sib13yob, int sib13agd, int sib13neu,
			int sib13pdx, int sib13moe, int sib13ago, int sib14mob,
			int sib14yob, int sib14agd, int sib14neu, int sib14pdx,
			int sib14moe, int sib14ago, int sib15mob, int sib15yob,
			int sib15agd, int sib15neu, int sib15pdx, int sib15moe,
			int sib15ago, int sib16mob, int sib16yob, int sib16agd,
			int sib16neu, int sib16pdx, int sib16moe, int sib16ago,
			int sib17mob, int sib17yob, int sib17agd, int sib17neu,
			int sib17pdx, int sib17moe, int sib17ago, int sib18mob,
			int sib18yob, int sib18agd, int sib18neu, int sib18pdx,
			int sib18moe, int sib18ago, int sib19mob, int sib19yob,
			int sib19agd, int sib19neu, int sib19pdx, int sib19moe,
			int sib19ago, int sib20mob, int sib20yob, int sib20agd,
			int sib20neu, int sib20pdx, int sib20moe, int sib20ago, int kids,
			int nwinfkid, int kid1mob, int kid1yob, int kid1agd, int kid1neu,
			int kid1pdx, int kid1moe, int kid1ago, int kid2mob, int kid2yob,
			int kid2agd, int kid2neu, int kid2pdx, int kid2moe, int kid2ago,
			int kid3mob, int kid3yob, int kid3agd, int kid3neu, int kid3pdx,
			int kid3moe, int kid3ago, int kid4mob, int kid4yob, int kid4agd,
			int kid4neu, int kid4pdx, int kid4moe, int kid4ago, int kid5mob,
			int kid5yob, int kid5agd, int kid5neu, int kid5pdx, int kid5moe,
			int kid5ago, int kid6mob, int kid6yob, int kid6agd, int kid6neu,
			int kid6pdx, int kid6moe, int kid6ago, int kid7mob, int kid7yob,
			int kid7agd, int kid7neu, int kid7pdx, int kid7moe, int kid7ago,
			int kid8mob, int kid8yob, int kid8agd, int kid8neu, int kid8pdx,
			int kid8moe, int kid8ago, int kid9mob, int kid9yob, int kid9agd,
			int kid9neu, int kid9pdx, int kid9moe, int kid9ago, int kid10mob,
			int kid10yob, int kid10agd, int kid10neu, int kid10pdx,
			int kid10moe, int kid10ago, int kid11mob, int kid11yob,
			int kid11agd, int kid11neu, int kid11pdx, int kid11moe,
			int kid11ago, int kid12mob, int kid12yob, int kid12agd,
			int kid12neu, int kid12pdx, int kid12moe, int kid12ago,
			int kid13mob, int kid13yob, int kid13agd, int kid13neu,
			int kid13pdx, int kid13moe, int kid13ago, int kid14mob,
			int kid14yob, int kid14agd, int kid14neu, int kid14pdx,
			int kid14moe, int kid14ago, int kid15mob, int kid15yob,
			int kid15agd, int kid15neu, int kid15pdx, int kid15moe, int kid15ago) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.a3 = a3;
		this.nwinfmut = nwinfmut;
		this.fadmut = fadmut;
		this.fadmutx = fadmutx;
		this.fadmuso = fadmuso;
		this.fadmusox = fadmusox;
		this.fftdmut = fftdmut;
		this.fftdmutx = fftdmutx;
		this.fftdmuso = fftdmuso;
		this.fftdmusx = fftdmusx;
		this.fothmut = fothmut;
		this.fothmutx = fothmutx;
		this.fothmuso = fothmuso;
		this.fothmusx = fothmusx;
		this.mommob = mommob;
		this.momyob = momyob;
		this.momdage = momdage;
		this.momneur = momneur;
		this.momprdx = momprdx;
		this.mommoe = mommoe;
		this.momageo = momageo;
		this.dadmob = dadmob;
		this.dadyob = dadyob;
		this.daddage = daddage;
		this.dadneur = dadneur;
		this.dadprdx = dadprdx;
		this.dadmoe = dadmoe;
		this.dadageo = dadageo;
		this.sibs = sibs;
		this.nwinfsib = nwinfsib;
		this.sib1mob = sib1mob;
		this.sib1yob = sib1yob;
		this.sib1agd = sib1agd;
		this.sib1neu = sib1neu;
		this.sib1pdx = sib1pdx;
		this.sib1moe = sib1moe;
		this.sib1ago = sib1ago;
		this.sib2mob = sib2mob;
		this.sib2yob = sib2yob;
		this.sib2agd = sib2agd;
		this.sib2neu = sib2neu;
		this.sib2pdx = sib2pdx;
		this.sib2moe = sib2moe;
		this.sib2ago = sib2ago;
		this.sib3mob = sib3mob;
		this.sib3yob = sib3yob;
		this.sib3agd = sib3agd;
		this.sib3neu = sib3neu;
		this.sib3pdx = sib3pdx;
		this.sib3moe = sib3moe;
		this.sib3ago = sib3ago;
		this.sib4mob = sib4mob;
		this.sib4yob = sib4yob;
		this.sib4agd = sib4agd;
		this.sib4neu = sib4neu;
		this.sib4pdx = sib4pdx;
		this.sib4moe = sib4moe;
		this.sib4ago = sib4ago;
		this.sib5mob = sib5mob;
		this.sib5yob = sib5yob;
		this.sib5agd = sib5agd;
		this.sib5neu = sib5neu;
		this.sib5pdx = sib5pdx;
		this.sib5moe = sib5moe;
		this.sib5ago = sib5ago;
		this.sib6mob = sib6mob;
		this.sib6yob = sib6yob;
		this.sib6agd = sib6agd;
		this.sib6neu = sib6neu;
		this.sib6pdx = sib6pdx;
		this.sib6moe = sib6moe;
		this.sib6ago = sib6ago;
		this.sib7mob = sib7mob;
		this.sib7yob = sib7yob;
		this.sib7agd = sib7agd;
		this.sib7neu = sib7neu;
		this.sib7pdx = sib7pdx;
		this.sib7moe = sib7moe;
		this.sib7ago = sib7ago;
		this.sib8mob = sib8mob;
		this.sib8yob = sib8yob;
		this.sib8agd = sib8agd;
		this.sib8neu = sib8neu;
		this.sib8pdx = sib8pdx;
		this.sib8moe = sib8moe;
		this.sib8ago = sib8ago;
		this.sib9mob = sib9mob;
		this.sib9yob = sib9yob;
		this.sib9agd = sib9agd;
		this.sib9neu = sib9neu;
		this.sib9pdx = sib9pdx;
		this.sib9moe = sib9moe;
		this.sib9ago = sib9ago;
		this.sib10mob = sib10mob;
		this.sib10yob = sib10yob;
		this.sib10agd = sib10agd;
		this.sib10neu = sib10neu;
		this.sib10pdx = sib10pdx;
		this.sib10moe = sib10moe;
		this.sib10ago = sib10ago;
		this.sib11mob = sib11mob;
		this.sib11yob = sib11yob;
		this.sib11agd = sib11agd;
		this.sib11neu = sib11neu;
		this.sib11pdx = sib11pdx;
		this.sib11moe = sib11moe;
		this.sib11ago = sib11ago;
		this.sib12mob = sib12mob;
		this.sib12yob = sib12yob;
		this.sib12agd = sib12agd;
		this.sib12neu = sib12neu;
		this.sib12pdx = sib12pdx;
		this.sib12moe = sib12moe;
		this.sib12ago = sib12ago;
		this.sib13mob = sib13mob;
		this.sib13yob = sib13yob;
		this.sib13agd = sib13agd;
		this.sib13neu = sib13neu;
		this.sib13pdx = sib13pdx;
		this.sib13moe = sib13moe;
		this.sib13ago = sib13ago;
		this.sib14mob = sib14mob;
		this.sib14yob = sib14yob;
		this.sib14agd = sib14agd;
		this.sib14neu = sib14neu;
		this.sib14pdx = sib14pdx;
		this.sib14moe = sib14moe;
		this.sib14ago = sib14ago;
		this.sib15mob = sib15mob;
		this.sib15yob = sib15yob;
		this.sib15agd = sib15agd;
		this.sib15neu = sib15neu;
		this.sib15pdx = sib15pdx;
		this.sib15moe = sib15moe;
		this.sib15ago = sib15ago;
		this.sib16mob = sib16mob;
		this.sib16yob = sib16yob;
		this.sib16agd = sib16agd;
		this.sib16neu = sib16neu;
		this.sib16pdx = sib16pdx;
		this.sib16moe = sib16moe;
		this.sib16ago = sib16ago;
		this.sib17mob = sib17mob;
		this.sib17yob = sib17yob;
		this.sib17agd = sib17agd;
		this.sib17neu = sib17neu;
		this.sib17pdx = sib17pdx;
		this.sib17moe = sib17moe;
		this.sib17ago = sib17ago;
		this.sib18mob = sib18mob;
		this.sib18yob = sib18yob;
		this.sib18agd = sib18agd;
		this.sib18neu = sib18neu;
		this.sib18pdx = sib18pdx;
		this.sib18moe = sib18moe;
		this.sib18ago = sib18ago;
		this.sib19mob = sib19mob;
		this.sib19yob = sib19yob;
		this.sib19agd = sib19agd;
		this.sib19neu = sib19neu;
		this.sib19pdx = sib19pdx;
		this.sib19moe = sib19moe;
		this.sib19ago = sib19ago;
		this.sib20mob = sib20mob;
		this.sib20yob = sib20yob;
		this.sib20agd = sib20agd;
		this.sib20neu = sib20neu;
		this.sib20pdx = sib20pdx;
		this.sib20moe = sib20moe;
		this.sib20ago = sib20ago;
		this.kids = kids;
		this.nwinfkid = nwinfkid;
		this.kid1mob = kid1mob;
		this.kid1yob = kid1yob;
		this.kid1agd = kid1agd;
		this.kid1neu = kid1neu;
		this.kid1pdx = kid1pdx;
		this.kid1moe = kid1moe;
		this.kid1ago = kid1ago;
		this.kid2mob = kid2mob;
		this.kid2yob = kid2yob;
		this.kid2agd = kid2agd;
		this.kid2neu = kid2neu;
		this.kid2pdx = kid2pdx;
		this.kid2moe = kid2moe;
		this.kid2ago = kid2ago;
		this.kid3mob = kid3mob;
		this.kid3yob = kid3yob;
		this.kid3agd = kid3agd;
		this.kid3neu = kid3neu;
		this.kid3pdx = kid3pdx;
		this.kid3moe = kid3moe;
		this.kid3ago = kid3ago;
		this.kid4mob = kid4mob;
		this.kid4yob = kid4yob;
		this.kid4agd = kid4agd;
		this.kid4neu = kid4neu;
		this.kid4pdx = kid4pdx;
		this.kid4moe = kid4moe;
		this.kid4ago = kid4ago;
		this.kid5mob = kid5mob;
		this.kid5yob = kid5yob;
		this.kid5agd = kid5agd;
		this.kid5neu = kid5neu;
		this.kid5pdx = kid5pdx;
		this.kid5moe = kid5moe;
		this.kid5ago = kid5ago;
		this.kid6mob = kid6mob;
		this.kid6yob = kid6yob;
		this.kid6agd = kid6agd;
		this.kid6neu = kid6neu;
		this.kid6pdx = kid6pdx;
		this.kid6moe = kid6moe;
		this.kid6ago = kid6ago;
		this.kid7mob = kid7mob;
		this.kid7yob = kid7yob;
		this.kid7agd = kid7agd;
		this.kid7neu = kid7neu;
		this.kid7pdx = kid7pdx;
		this.kid7moe = kid7moe;
		this.kid7ago = kid7ago;
		this.kid8mob = kid8mob;
		this.kid8yob = kid8yob;
		this.kid8agd = kid8agd;
		this.kid8neu = kid8neu;
		this.kid8pdx = kid8pdx;
		this.kid8moe = kid8moe;
		this.kid8ago = kid8ago;
		this.kid9mob = kid9mob;
		this.kid9yob = kid9yob;
		this.kid9agd = kid9agd;
		this.kid9neu = kid9neu;
		this.kid9pdx = kid9pdx;
		this.kid9moe = kid9moe;
		this.kid9ago = kid9ago;
		this.kid10mob = kid10mob;
		this.kid10yob = kid10yob;
		this.kid10agd = kid10agd;
		this.kid10neu = kid10neu;
		this.kid10pdx = kid10pdx;
		this.kid10moe = kid10moe;
		this.kid10ago = kid10ago;
		this.kid11mob = kid11mob;
		this.kid11yob = kid11yob;
		this.kid11agd = kid11agd;
		this.kid11neu = kid11neu;
		this.kid11pdx = kid11pdx;
		this.kid11moe = kid11moe;
		this.kid11ago = kid11ago;
		this.kid12mob = kid12mob;
		this.kid12yob = kid12yob;
		this.kid12agd = kid12agd;
		this.kid12neu = kid12neu;
		this.kid12pdx = kid12pdx;
		this.kid12moe = kid12moe;
		this.kid12ago = kid12ago;
		this.kid13mob = kid13mob;
		this.kid13yob = kid13yob;
		this.kid13agd = kid13agd;
		this.kid13neu = kid13neu;
		this.kid13pdx = kid13pdx;
		this.kid13moe = kid13moe;
		this.kid13ago = kid13ago;
		this.kid14mob = kid14mob;
		this.kid14yob = kid14yob;
		this.kid14agd = kid14agd;
		this.kid14neu = kid14neu;
		this.kid14pdx = kid14pdx;
		this.kid14moe = kid14moe;
		this.kid14ago = kid14ago;
		this.kid15mob = kid15mob;
		this.kid15yob = kid15yob;
		this.kid15agd = kid15agd;
		this.kid15neu = kid15neu;
		this.kid15pdx = kid15pdx;
		this.kid15moe = kid15moe;
		this.kid15ago = kid15ago;
	}

	/*@ManyToOne
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

	public int getA3() {
		return a3;
	}

	public void setA3(int a3) {
		this.a3 = a3;
	}

	public int getNwinfmut() {
		return nwinfmut;
	}

	public void setNwinfmut(int nwinfmut) {
		this.nwinfmut = nwinfmut;
	}

	public int getFadmut() {
		return fadmut;
	}

	public void setFadmut(int fadmut) {
		this.fadmut = fadmut;
	}

	public String getFadmutx() {
		return fadmutx;
	}

	public void setFadmutx(String fadmutx) {
		this.fadmutx = fadmutx;
	}

	public int getFadmuso() {
		return fadmuso;
	}

	public void setFadmuso(int fadmuso) {
		this.fadmuso = fadmuso;
	}

	public String getFadmusox() {
		return fadmusox;
	}

	public void setFadmusox(String fadmusox) {
		this.fadmusox = fadmusox;
	}

	public int getFftdmut() {
		return fftdmut;
	}

	public void setFftdmut(int fftdmut) {
		this.fftdmut = fftdmut;
	}

	public String getFftdmutx() {
		return fftdmutx;
	}

	public void setFftdmutx(String fftdmutx) {
		this.fftdmutx = fftdmutx;
	}

	public int getFftdmuso() {
		return fftdmuso;
	}

	public void setFftdmuso(int fftdmuso) {
		this.fftdmuso = fftdmuso;
	}

	public String getFftdmusx() {
		return fftdmusx;
	}

	public void setFftdmusx(String fftdmusx) {
		this.fftdmusx = fftdmusx;
	}

	public int getFothmut() {
		return fothmut;
	}

	public void setFothmut(int fothmut) {
		this.fothmut = fothmut;
	}

	public String getFothmutx() {
		return fothmutx;
	}

	public void setFothmutx(String fothmutx) {
		this.fothmutx = fothmutx;
	}

	public int getFothmuso() {
		return fothmuso;
	}

	public void setFothmuso(int fothmuso) {
		this.fothmuso = fothmuso;
	}

	public String getFothmusx() {
		return fothmusx;
	}

	public void setFothmusx(String fothmusx) {
		this.fothmusx = fothmusx;
	}

	public int getMommob() {
		return mommob;
	}

	public void setMommob(int mommob) {
		this.mommob = mommob;
	}

	public int getMomyob() {
		return momyob;
	}

	public void setMomyob(int momyob) {
		this.momyob = momyob;
	}

	public int getMomdage() {
		return momdage;
	}

	public void setMomdage(int momdage) {
		this.momdage = momdage;
	}

	public int getMomneur() {
		return momneur;
	}

	public void setMomneur(int momneur) {
		this.momneur = momneur;
	}

	public int getMomprdx() {
		return momprdx;
	}

	public void setMomprdx(int momprdx) {
		this.momprdx = momprdx;
	}

	public int getMommoe() {
		return mommoe;
	}

	public void setMommoe(int mommoe) {
		this.mommoe = mommoe;
	}

	public int getMomageo() {
		return momageo;
	}

	public void setMomageo(int momageo) {
		this.momageo = momageo;
	}

	public int getDadmob() {
		return dadmob;
	}

	public void setDadmob(int dadmob) {
		this.dadmob = dadmob;
	}

	public int getDadyob() {
		return dadyob;
	}

	public void setDadyob(int dadyob) {
		this.dadyob = dadyob;
	}

	public int getDaddage() {
		return daddage;
	}

	public void setDaddage(int daddage) {
		this.daddage = daddage;
	}

	public int getDadneur() {
		return dadneur;
	}

	public void setDadneur(int dadneur) {
		this.dadneur = dadneur;
	}

	public int getDadprdx() {
		return dadprdx;
	}

	public void setDadprdx(int dadprdx) {
		this.dadprdx = dadprdx;
	}

	public int getDadmoe() {
		return dadmoe;
	}

	public void setDadmoe(int dadmoe) {
		this.dadmoe = dadmoe;
	}

	public int getDadageo() {
		return dadageo;
	}

	public void setDadageo(int dadageo) {
		this.dadageo = dadageo;
	}

	public int getSibs() {
		return sibs;
	}

	public void setSibs(int sibs) {
		this.sibs = sibs;
	}

	public int getNwinfsib() {
		return nwinfsib;
	}

	public void setNwinfsib(int nwinfsib) {
		this.nwinfsib = nwinfsib;
	}

	public int getSib1mob() {
		return sib1mob;
	}

	public void setSib1mob(int sib1mob) {
		this.sib1mob = sib1mob;
	}

	public int getSib1yob() {
		return sib1yob;
	}

	public void setSib1yob(int sib1yob) {
		this.sib1yob = sib1yob;
	}

	public int getSib1agd() {
		return sib1agd;
	}

	public void setSib1agd(int sib1agd) {
		this.sib1agd = sib1agd;
	}

	public int getSib1neu() {
		return sib1neu;
	}

	public void setSib1neu(int sib1neu) {
		this.sib1neu = sib1neu;
	}

	public int getSib1pdx() {
		return sib1pdx;
	}

	public void setSib1pdx(int sib1pdx) {
		this.sib1pdx = sib1pdx;
	}

	public int getSib1moe() {
		return sib1moe;
	}

	public void setSib1moe(int sib1moe) {
		this.sib1moe = sib1moe;
	}

	public int getSib1ago() {
		return sib1ago;
	}

	public void setSib1ago(int sib1ago) {
		this.sib1ago = sib1ago;
	}

	public int getSib2mob() {
		return sib2mob;
	}

	public void setSib2mob(int sib2mob) {
		this.sib2mob = sib2mob;
	}

	public int getSib2yob() {
		return sib2yob;
	}

	public void setSib2yob(int sib2yob) {
		this.sib2yob = sib2yob;
	}

	public int getSib2agd() {
		return sib2agd;
	}

	public void setSib2agd(int sib2agd) {
		this.sib2agd = sib2agd;
	}

	public int getSib2neu() {
		return sib2neu;
	}

	public void setSib2neu(int sib2neu) {
		this.sib2neu = sib2neu;
	}

	public int getSib2pdx() {
		return sib2pdx;
	}

	public void setSib2pdx(int sib2pdx) {
		this.sib2pdx = sib2pdx;
	}

	public int getSib2moe() {
		return sib2moe;
	}

	public void setSib2moe(int sib2moe) {
		this.sib2moe = sib2moe;
	}

	public int getSib2ago() {
		return sib2ago;
	}

	public void setSib2ago(int sib2ago) {
		this.sib2ago = sib2ago;
	}

	public int getSib3mob() {
		return sib3mob;
	}

	public void setSib3mob(int sib3mob) {
		this.sib3mob = sib3mob;
	}

	public int getSib3yob() {
		return sib3yob;
	}

	public void setSib3yob(int sib3yob) {
		this.sib3yob = sib3yob;
	}

	public int getSib3agd() {
		return sib3agd;
	}

	public void setSib3agd(int sib3agd) {
		this.sib3agd = sib3agd;
	}

	public int getSib3neu() {
		return sib3neu;
	}

	public void setSib3neu(int sib3neu) {
		this.sib3neu = sib3neu;
	}

	public int getSib3pdx() {
		return sib3pdx;
	}

	public void setSib3pdx(int sib3pdx) {
		this.sib3pdx = sib3pdx;
	}

	public int getSib3moe() {
		return sib3moe;
	}

	public void setSib3moe(int sib3moe) {
		this.sib3moe = sib3moe;
	}

	public int getSib3ago() {
		return sib3ago;
	}

	public void setSib3ago(int sib3ago) {
		this.sib3ago = sib3ago;
	}

	public int getSib4mob() {
		return sib4mob;
	}

	public void setSib4mob(int sib4mob) {
		this.sib4mob = sib4mob;
	}

	public int getSib4yob() {
		return sib4yob;
	}

	public void setSib4yob(int sib4yob) {
		this.sib4yob = sib4yob;
	}

	public int getSib4agd() {
		return sib4agd;
	}

	public void setSib4agd(int sib4agd) {
		this.sib4agd = sib4agd;
	}

	public int getSib4neu() {
		return sib4neu;
	}

	public void setSib4neu(int sib4neu) {
		this.sib4neu = sib4neu;
	}

	public int getSib4pdx() {
		return sib4pdx;
	}

	public void setSib4pdx(int sib4pdx) {
		this.sib4pdx = sib4pdx;
	}

	public int getSib4moe() {
		return sib4moe;
	}

	public void setSib4moe(int sib4moe) {
		this.sib4moe = sib4moe;
	}

	public int getSib4ago() {
		return sib4ago;
	}

	public void setSib4ago(int sib4ago) {
		this.sib4ago = sib4ago;
	}

	public int getSib5mob() {
		return sib5mob;
	}

	public void setSib5mob(int sib5mob) {
		this.sib5mob = sib5mob;
	}

	public int getSib5yob() {
		return sib5yob;
	}

	public void setSib5yob(int sib5yob) {
		this.sib5yob = sib5yob;
	}

	public int getSib5agd() {
		return sib5agd;
	}

	public void setSib5agd(int sib5agd) {
		this.sib5agd = sib5agd;
	}

	public int getSib5neu() {
		return sib5neu;
	}

	public void setSib5neu(int sib5neu) {
		this.sib5neu = sib5neu;
	}

	public int getSib5pdx() {
		return sib5pdx;
	}

	public void setSib5pdx(int sib5pdx) {
		this.sib5pdx = sib5pdx;
	}

	public int getSib5moe() {
		return sib5moe;
	}

	public void setSib5moe(int sib5moe) {
		this.sib5moe = sib5moe;
	}

	public int getSib5ago() {
		return sib5ago;
	}

	public void setSib5ago(int sib5ago) {
		this.sib5ago = sib5ago;
	}

	public int getSib6mob() {
		return sib6mob;
	}

	public void setSib6mob(int sib6mob) {
		this.sib6mob = sib6mob;
	}

	public int getSib6yob() {
		return sib6yob;
	}

	public void setSib6yob(int sib6yob) {
		this.sib6yob = sib6yob;
	}

	public int getSib6agd() {
		return sib6agd;
	}

	public void setSib6agd(int sib6agd) {
		this.sib6agd = sib6agd;
	}

	public int getSib6neu() {
		return sib6neu;
	}

	public void setSib6neu(int sib6neu) {
		this.sib6neu = sib6neu;
	}

	public int getSib6pdx() {
		return sib6pdx;
	}

	public void setSib6pdx(int sib6pdx) {
		this.sib6pdx = sib6pdx;
	}

	public int getSib6moe() {
		return sib6moe;
	}

	public void setSib6moe(int sib6moe) {
		this.sib6moe = sib6moe;
	}

	public int getSib6ago() {
		return sib6ago;
	}

	public void setSib6ago(int sib6ago) {
		this.sib6ago = sib6ago;
	}

	public int getSib7mob() {
		return sib7mob;
	}

	public void setSib7mob(int sib7mob) {
		this.sib7mob = sib7mob;
	}

	public int getSib7yob() {
		return sib7yob;
	}

	public void setSib7yob(int sib7yob) {
		this.sib7yob = sib7yob;
	}

	public int getSib7agd() {
		return sib7agd;
	}

	public void setSib7agd(int sib7agd) {
		this.sib7agd = sib7agd;
	}

	public int getSib7neu() {
		return sib7neu;
	}

	public void setSib7neu(int sib7neu) {
		this.sib7neu = sib7neu;
	}

	public int getSib7pdx() {
		return sib7pdx;
	}

	public void setSib7pdx(int sib7pdx) {
		this.sib7pdx = sib7pdx;
	}

	public int getSib7moe() {
		return sib7moe;
	}

	public void setSib7moe(int sib7moe) {
		this.sib7moe = sib7moe;
	}

	public int getSib7ago() {
		return sib7ago;
	}

	public void setSib7ago(int sib7ago) {
		this.sib7ago = sib7ago;
	}

	public int getSib8mob() {
		return sib8mob;
	}

	public void setSib8mob(int sib8mob) {
		this.sib8mob = sib8mob;
	}

	public int getSib8yob() {
		return sib8yob;
	}

	public void setSib8yob(int sib8yob) {
		this.sib8yob = sib8yob;
	}

	public int getSib8agd() {
		return sib8agd;
	}

	public void setSib8agd(int sib8agd) {
		this.sib8agd = sib8agd;
	}

	public int getSib8neu() {
		return sib8neu;
	}

	public void setSib8neu(int sib8neu) {
		this.sib8neu = sib8neu;
	}

	public int getSib8pdx() {
		return sib8pdx;
	}

	public void setSib8pdx(int sib8pdx) {
		this.sib8pdx = sib8pdx;
	}

	public int getSib8moe() {
		return sib8moe;
	}

	public void setSib8moe(int sib8moe) {
		this.sib8moe = sib8moe;
	}

	public int getSib8ago() {
		return sib8ago;
	}

	public void setSib8ago(int sib8ago) {
		this.sib8ago = sib8ago;
	}

	public int getSib9mob() {
		return sib9mob;
	}

	public void setSib9mob(int sib9mob) {
		this.sib9mob = sib9mob;
	}

	public int getSib9yob() {
		return sib9yob;
	}

	public void setSib9yob(int sib9yob) {
		this.sib9yob = sib9yob;
	}

	public int getSib9agd() {
		return sib9agd;
	}

	public void setSib9agd(int sib9agd) {
		this.sib9agd = sib9agd;
	}

	public int getSib9neu() {
		return sib9neu;
	}

	public void setSib9neu(int sib9neu) {
		this.sib9neu = sib9neu;
	}

	public int getSib9pdx() {
		return sib9pdx;
	}

	public void setSib9pdx(int sib9pdx) {
		this.sib9pdx = sib9pdx;
	}

	public int getSib9moe() {
		return sib9moe;
	}

	public void setSib9moe(int sib9moe) {
		this.sib9moe = sib9moe;
	}

	public int getSib9ago() {
		return sib9ago;
	}

	public void setSib9ago(int sib9ago) {
		this.sib9ago = sib9ago;
	}

	public int getSib10mob() {
		return sib10mob;
	}

	public void setSib10mob(int sib10mob) {
		this.sib10mob = sib10mob;
	}

	public int getSib10yob() {
		return sib10yob;
	}

	public void setSib10yob(int sib10yob) {
		this.sib10yob = sib10yob;
	}

	public int getSib10agd() {
		return sib10agd;
	}

	public void setSib10agd(int sib10agd) {
		this.sib10agd = sib10agd;
	}

	public int getSib10neu() {
		return sib10neu;
	}

	public void setSib10neu(int sib10neu) {
		this.sib10neu = sib10neu;
	}

	public int getSib10pdx() {
		return sib10pdx;
	}

	public void setSib10pdx(int sib10pdx) {
		this.sib10pdx = sib10pdx;
	}

	public int getSib10moe() {
		return sib10moe;
	}

	public void setSib10moe(int sib10moe) {
		this.sib10moe = sib10moe;
	}

	public int getSib10ago() {
		return sib10ago;
	}

	public void setSib10ago(int sib10ago) {
		this.sib10ago = sib10ago;
	}

	public int getSib11mob() {
		return sib11mob;
	}

	public void setSib11mob(int sib11mob) {
		this.sib11mob = sib11mob;
	}

	public int getSib11yob() {
		return sib11yob;
	}

	public void setSib11yob(int sib11yob) {
		this.sib11yob = sib11yob;
	}

	public int getSib11agd() {
		return sib11agd;
	}

	public void setSib11agd(int sib11agd) {
		this.sib11agd = sib11agd;
	}

	public int getSib11neu() {
		return sib11neu;
	}

	public void setSib11neu(int sib11neu) {
		this.sib11neu = sib11neu;
	}

	public int getSib11pdx() {
		return sib11pdx;
	}

	public void setSib11pdx(int sib11pdx) {
		this.sib11pdx = sib11pdx;
	}

	public int getSib11moe() {
		return sib11moe;
	}

	public void setSib11moe(int sib11moe) {
		this.sib11moe = sib11moe;
	}

	public int getSib11ago() {
		return sib11ago;
	}

	public void setSib11ago(int sib11ago) {
		this.sib11ago = sib11ago;
	}

	public int getSib12mob() {
		return sib12mob;
	}

	public void setSib12mob(int sib12mob) {
		this.sib12mob = sib12mob;
	}

	public int getSib12yob() {
		return sib12yob;
	}

	public void setSib12yob(int sib12yob) {
		this.sib12yob = sib12yob;
	}

	public int getSib12agd() {
		return sib12agd;
	}

	public void setSib12agd(int sib12agd) {
		this.sib12agd = sib12agd;
	}

	public int getSib12neu() {
		return sib12neu;
	}

	public void setSib12neu(int sib12neu) {
		this.sib12neu = sib12neu;
	}

	public int getSib12pdx() {
		return sib12pdx;
	}

	public void setSib12pdx(int sib12pdx) {
		this.sib12pdx = sib12pdx;
	}

	public int getSib12moe() {
		return sib12moe;
	}

	public void setSib12moe(int sib12moe) {
		this.sib12moe = sib12moe;
	}

	public int getSib12ago() {
		return sib12ago;
	}

	public void setSib12ago(int sib12ago) {
		this.sib12ago = sib12ago;
	}

	public int getSib13mob() {
		return sib13mob;
	}

	public void setSib13mob(int sib13mob) {
		this.sib13mob = sib13mob;
	}

	public int getSib13yob() {
		return sib13yob;
	}

	public void setSib13yob(int sib13yob) {
		this.sib13yob = sib13yob;
	}

	public int getSib13agd() {
		return sib13agd;
	}

	public void setSib13agd(int sib13agd) {
		this.sib13agd = sib13agd;
	}

	public int getSib13neu() {
		return sib13neu;
	}

	public void setSib13neu(int sib13neu) {
		this.sib13neu = sib13neu;
	}

	public int getSib13pdx() {
		return sib13pdx;
	}

	public void setSib13pdx(int sib13pdx) {
		this.sib13pdx = sib13pdx;
	}

	public int getSib13moe() {
		return sib13moe;
	}

	public void setSib13moe(int sib13moe) {
		this.sib13moe = sib13moe;
	}

	public int getSib13ago() {
		return sib13ago;
	}

	public void setSib13ago(int sib13ago) {
		this.sib13ago = sib13ago;
	}

	public int getSib14mob() {
		return sib14mob;
	}

	public void setSib14mob(int sib14mob) {
		this.sib14mob = sib14mob;
	}

	public int getSib14yob() {
		return sib14yob;
	}

	public void setSib14yob(int sib14yob) {
		this.sib14yob = sib14yob;
	}

	public int getSib14agd() {
		return sib14agd;
	}

	public void setSib14agd(int sib14agd) {
		this.sib14agd = sib14agd;
	}

	public int getSib14neu() {
		return sib14neu;
	}

	public void setSib14neu(int sib14neu) {
		this.sib14neu = sib14neu;
	}

	public int getSib14pdx() {
		return sib14pdx;
	}

	public void setSib14pdx(int sib14pdx) {
		this.sib14pdx = sib14pdx;
	}

	public int getSib14moe() {
		return sib14moe;
	}

	public void setSib14moe(int sib14moe) {
		this.sib14moe = sib14moe;
	}

	public int getSib14ago() {
		return sib14ago;
	}

	public void setSib14ago(int sib14ago) {
		this.sib14ago = sib14ago;
	}

	public int getSib15mob() {
		return sib15mob;
	}

	public void setSib15mob(int sib15mob) {
		this.sib15mob = sib15mob;
	}

	public int getSib15yob() {
		return sib15yob;
	}

	public void setSib15yob(int sib15yob) {
		this.sib15yob = sib15yob;
	}

	public int getSib15agd() {
		return sib15agd;
	}

	public void setSib15agd(int sib15agd) {
		this.sib15agd = sib15agd;
	}

	public int getSib15neu() {
		return sib15neu;
	}

	public void setSib15neu(int sib15neu) {
		this.sib15neu = sib15neu;
	}

	public int getSib15pdx() {
		return sib15pdx;
	}

	public void setSib15pdx(int sib15pdx) {
		this.sib15pdx = sib15pdx;
	}

	public int getSib15moe() {
		return sib15moe;
	}

	public void setSib15moe(int sib15moe) {
		this.sib15moe = sib15moe;
	}

	public int getSib15ago() {
		return sib15ago;
	}

	public void setSib15ago(int sib15ago) {
		this.sib15ago = sib15ago;
	}

	public int getSib16mob() {
		return sib16mob;
	}

	public void setSib16mob(int sib16mob) {
		this.sib16mob = sib16mob;
	}

	public int getSib16yob() {
		return sib16yob;
	}

	public void setSib16yob(int sib16yob) {
		this.sib16yob = sib16yob;
	}

	public int getSib16agd() {
		return sib16agd;
	}

	public void setSib16agd(int sib16agd) {
		this.sib16agd = sib16agd;
	}

	public int getSib16neu() {
		return sib16neu;
	}

	public void setSib16neu(int sib16neu) {
		this.sib16neu = sib16neu;
	}

	public int getSib16pdx() {
		return sib16pdx;
	}

	public void setSib16pdx(int sib16pdx) {
		this.sib16pdx = sib16pdx;
	}

	public int getSib16moe() {
		return sib16moe;
	}

	public void setSib16moe(int sib16moe) {
		this.sib16moe = sib16moe;
	}

	public int getSib16ago() {
		return sib16ago;
	}

	public void setSib16ago(int sib16ago) {
		this.sib16ago = sib16ago;
	}

	public int getSib17mob() {
		return sib17mob;
	}

	public void setSib17mob(int sib17mob) {
		this.sib17mob = sib17mob;
	}

	public int getSib17yob() {
		return sib17yob;
	}

	public void setSib17yob(int sib17yob) {
		this.sib17yob = sib17yob;
	}

	public int getSib17agd() {
		return sib17agd;
	}

	public void setSib17agd(int sib17agd) {
		this.sib17agd = sib17agd;
	}

	public int getSib17neu() {
		return sib17neu;
	}

	public void setSib17neu(int sib17neu) {
		this.sib17neu = sib17neu;
	}

	public int getSib17pdx() {
		return sib17pdx;
	}

	public void setSib17pdx(int sib17pdx) {
		this.sib17pdx = sib17pdx;
	}

	public int getSib17moe() {
		return sib17moe;
	}

	public void setSib17moe(int sib17moe) {
		this.sib17moe = sib17moe;
	}

	public int getSib17ago() {
		return sib17ago;
	}

	public void setSib17ago(int sib17ago) {
		this.sib17ago = sib17ago;
	}

	public int getSib18mob() {
		return sib18mob;
	}

	public void setSib18mob(int sib18mob) {
		this.sib18mob = sib18mob;
	}

	public int getSib18yob() {
		return sib18yob;
	}

	public void setSib18yob(int sib18yob) {
		this.sib18yob = sib18yob;
	}

	public int getSib18agd() {
		return sib18agd;
	}

	public void setSib18agd(int sib18agd) {
		this.sib18agd = sib18agd;
	}

	public int getSib18neu() {
		return sib18neu;
	}

	public void setSib18neu(int sib18neu) {
		this.sib18neu = sib18neu;
	}

	public int getSib18pdx() {
		return sib18pdx;
	}

	public void setSib18pdx(int sib18pdx) {
		this.sib18pdx = sib18pdx;
	}

	public int getSib18moe() {
		return sib18moe;
	}

	public void setSib18moe(int sib18moe) {
		this.sib18moe = sib18moe;
	}

	public int getSib18ago() {
		return sib18ago;
	}

	public void setSib18ago(int sib18ago) {
		this.sib18ago = sib18ago;
	}

	public int getSib19mob() {
		return sib19mob;
	}

	public void setSib19mob(int sib19mob) {
		this.sib19mob = sib19mob;
	}

	public int getSib19yob() {
		return sib19yob;
	}

	public void setSib19yob(int sib19yob) {
		this.sib19yob = sib19yob;
	}

	public int getSib19agd() {
		return sib19agd;
	}

	public void setSib19agd(int sib19agd) {
		this.sib19agd = sib19agd;
	}

	public int getSib19neu() {
		return sib19neu;
	}

	public void setSib19neu(int sib19neu) {
		this.sib19neu = sib19neu;
	}

	public int getSib19pdx() {
		return sib19pdx;
	}

	public void setSib19pdx(int sib19pdx) {
		this.sib19pdx = sib19pdx;
	}

	public int getSib19moe() {
		return sib19moe;
	}

	public void setSib19moe(int sib19moe) {
		this.sib19moe = sib19moe;
	}

	public int getSib19ago() {
		return sib19ago;
	}

	public void setSib19ago(int sib19ago) {
		this.sib19ago = sib19ago;
	}

	public int getSib20mob() {
		return sib20mob;
	}

	public void setSib20mob(int sib20mob) {
		this.sib20mob = sib20mob;
	}

	public int getSib20yob() {
		return sib20yob;
	}

	public void setSib20yob(int sib20yob) {
		this.sib20yob = sib20yob;
	}

	public int getSib20agd() {
		return sib20agd;
	}

	public void setSib20agd(int sib20agd) {
		this.sib20agd = sib20agd;
	}

	public int getSib20neu() {
		return sib20neu;
	}

	public void setSib20neu(int sib20neu) {
		this.sib20neu = sib20neu;
	}

	public int getSib20pdx() {
		return sib20pdx;
	}

	public void setSib20pdx(int sib20pdx) {
		this.sib20pdx = sib20pdx;
	}

	public int getSib20moe() {
		return sib20moe;
	}

	public void setSib20moe(int sib20moe) {
		this.sib20moe = sib20moe;
	}

	public int getSib20ago() {
		return sib20ago;
	}

	public void setSib20ago(int sib20ago) {
		this.sib20ago = sib20ago;
	}

	@Id
	@GeneratedValue
	public int getKids() {
		return kids;
	}

	public void setKids(int kids) {
		this.kids = kids;
	}

	public int getNwinfkid() {
		return nwinfkid;
	}

	public void setNwinfkid(int nwinfkid) {
		this.nwinfkid = nwinfkid;
	}

	public int getKid1mob() {
		return kid1mob;
	}

	public void setKid1mob(int kid1mob) {
		this.kid1mob = kid1mob;
	}

	public int getKid1yob() {
		return kid1yob;
	}

	public void setKid1yob(int kid1yob) {
		this.kid1yob = kid1yob;
	}

	public int getKid1agd() {
		return kid1agd;
	}

	public void setKid1agd(int kid1agd) {
		this.kid1agd = kid1agd;
	}

	public int getKid1neu() {
		return kid1neu;
	}

	public void setKid1neu(int kid1neu) {
		this.kid1neu = kid1neu;
	}

	public int getKid1pdx() {
		return kid1pdx;
	}

	public void setKid1pdx(int kid1pdx) {
		this.kid1pdx = kid1pdx;
	}

	public int getKid1moe() {
		return kid1moe;
	}

	public void setKid1moe(int kid1moe) {
		this.kid1moe = kid1moe;
	}

	public int getKid1ago() {
		return kid1ago;
	}

	public void setKid1ago(int kid1ago) {
		this.kid1ago = kid1ago;
	}

	public int getKid2mob() {
		return kid2mob;
	}

	public void setKid2mob(int kid2mob) {
		this.kid2mob = kid2mob;
	}

	public int getKid2yob() {
		return kid2yob;
	}

	public void setKid2yob(int kid2yob) {
		this.kid2yob = kid2yob;
	}

	public int getKid2agd() {
		return kid2agd;
	}

	public void setKid2agd(int kid2agd) {
		this.kid2agd = kid2agd;
	}

	public int getKid2neu() {
		return kid2neu;
	}

	public void setKid2neu(int kid2neu) {
		this.kid2neu = kid2neu;
	}

	public int getKid2pdx() {
		return kid2pdx;
	}

	public void setKid2pdx(int kid2pdx) {
		this.kid2pdx = kid2pdx;
	}

	public int getKid2moe() {
		return kid2moe;
	}

	public void setKid2moe(int kid2moe) {
		this.kid2moe = kid2moe;
	}

	public int getKid2ago() {
		return kid2ago;
	}

	public void setKid2ago(int kid2ago) {
		this.kid2ago = kid2ago;
	}

	public int getKid3mob() {
		return kid3mob;
	}

	public void setKid3mob(int kid3mob) {
		this.kid3mob = kid3mob;
	}

	public int getKid3yob() {
		return kid3yob;
	}

	public void setKid3yob(int kid3yob) {
		this.kid3yob = kid3yob;
	}

	public int getKid3agd() {
		return kid3agd;
	}

	public void setKid3agd(int kid3agd) {
		this.kid3agd = kid3agd;
	}

	public int getKid3neu() {
		return kid3neu;
	}

	public void setKid3neu(int kid3neu) {
		this.kid3neu = kid3neu;
	}

	public int getKid3pdx() {
		return kid3pdx;
	}

	public void setKid3pdx(int kid3pdx) {
		this.kid3pdx = kid3pdx;
	}

	public int getKid3moe() {
		return kid3moe;
	}

	public void setKid3moe(int kid3moe) {
		this.kid3moe = kid3moe;
	}

	public int getKid3ago() {
		return kid3ago;
	}

	public void setKid3ago(int kid3ago) {
		this.kid3ago = kid3ago;
	}

	public int getKid4mob() {
		return kid4mob;
	}

	public void setKid4mob(int kid4mob) {
		this.kid4mob = kid4mob;
	}

	public int getKid4yob() {
		return kid4yob;
	}

	public void setKid4yob(int kid4yob) {
		this.kid4yob = kid4yob;
	}

	public int getKid4agd() {
		return kid4agd;
	}

	public void setKid4agd(int kid4agd) {
		this.kid4agd = kid4agd;
	}

	public int getKid4neu() {
		return kid4neu;
	}

	public void setKid4neu(int kid4neu) {
		this.kid4neu = kid4neu;
	}

	public int getKid4pdx() {
		return kid4pdx;
	}

	public void setKid4pdx(int kid4pdx) {
		this.kid4pdx = kid4pdx;
	}

	public int getKid4moe() {
		return kid4moe;
	}

	public void setKid4moe(int kid4moe) {
		this.kid4moe = kid4moe;
	}

	public int getKid4ago() {
		return kid4ago;
	}

	public void setKid4ago(int kid4ago) {
		this.kid4ago = kid4ago;
	}

	public int getKid5mob() {
		return kid5mob;
	}

	public void setKid5mob(int kid5mob) {
		this.kid5mob = kid5mob;
	}

	public int getKid5yob() {
		return kid5yob;
	}

	public void setKid5yob(int kid5yob) {
		this.kid5yob = kid5yob;
	}

	public int getKid5agd() {
		return kid5agd;
	}

	public void setKid5agd(int kid5agd) {
		this.kid5agd = kid5agd;
	}

	public int getKid5neu() {
		return kid5neu;
	}

	public void setKid5neu(int kid5neu) {
		this.kid5neu = kid5neu;
	}

	public int getKid5pdx() {
		return kid5pdx;
	}

	public void setKid5pdx(int kid5pdx) {
		this.kid5pdx = kid5pdx;
	}

	public int getKid5moe() {
		return kid5moe;
	}

	public void setKid5moe(int kid5moe) {
		this.kid5moe = kid5moe;
	}

	public int getKid5ago() {
		return kid5ago;
	}

	public void setKid5ago(int kid5ago) {
		this.kid5ago = kid5ago;
	}

	public int getKid6mob() {
		return kid6mob;
	}

	public void setKid6mob(int kid6mob) {
		this.kid6mob = kid6mob;
	}

	public int getKid6yob() {
		return kid6yob;
	}

	public void setKid6yob(int kid6yob) {
		this.kid6yob = kid6yob;
	}

	public int getKid6agd() {
		return kid6agd;
	}

	public void setKid6agd(int kid6agd) {
		this.kid6agd = kid6agd;
	}

	public int getKid6neu() {
		return kid6neu;
	}

	public void setKid6neu(int kid6neu) {
		this.kid6neu = kid6neu;
	}

	public int getKid6pdx() {
		return kid6pdx;
	}

	public void setKid6pdx(int kid6pdx) {
		this.kid6pdx = kid6pdx;
	}

	public int getKid6moe() {
		return kid6moe;
	}

	public void setKid6moe(int kid6moe) {
		this.kid6moe = kid6moe;
	}

	public int getKid6ago() {
		return kid6ago;
	}

	public void setKid6ago(int kid6ago) {
		this.kid6ago = kid6ago;
	}

	public int getKid7mob() {
		return kid7mob;
	}

	public void setKid7mob(int kid7mob) {
		this.kid7mob = kid7mob;
	}

	public int getKid7yob() {
		return kid7yob;
	}

	public void setKid7yob(int kid7yob) {
		this.kid7yob = kid7yob;
	}

	public int getKid7agd() {
		return kid7agd;
	}

	public void setKid7agd(int kid7agd) {
		this.kid7agd = kid7agd;
	}

	public int getKid7neu() {
		return kid7neu;
	}

	public void setKid7neu(int kid7neu) {
		this.kid7neu = kid7neu;
	}

	public int getKid7pdx() {
		return kid7pdx;
	}

	public void setKid7pdx(int kid7pdx) {
		this.kid7pdx = kid7pdx;
	}

	public int getKid7moe() {
		return kid7moe;
	}

	public void setKid7moe(int kid7moe) {
		this.kid7moe = kid7moe;
	}

	public int getKid7ago() {
		return kid7ago;
	}

	public void setKid7ago(int kid7ago) {
		this.kid7ago = kid7ago;
	}

	public int getKid8mob() {
		return kid8mob;
	}

	public void setKid8mob(int kid8mob) {
		this.kid8mob = kid8mob;
	}

	public int getKid8yob() {
		return kid8yob;
	}

	public void setKid8yob(int kid8yob) {
		this.kid8yob = kid8yob;
	}

	public int getKid8agd() {
		return kid8agd;
	}

	public void setKid8agd(int kid8agd) {
		this.kid8agd = kid8agd;
	}

	public int getKid8neu() {
		return kid8neu;
	}

	public void setKid8neu(int kid8neu) {
		this.kid8neu = kid8neu;
	}

	public int getKid8pdx() {
		return kid8pdx;
	}

	public void setKid8pdx(int kid8pdx) {
		this.kid8pdx = kid8pdx;
	}

	public int getKid8moe() {
		return kid8moe;
	}

	public void setKid8moe(int kid8moe) {
		this.kid8moe = kid8moe;
	}

	public int getKid8ago() {
		return kid8ago;
	}

	public void setKid8ago(int kid8ago) {
		this.kid8ago = kid8ago;
	}

	public int getKid9mob() {
		return kid9mob;
	}

	public void setKid9mob(int kid9mob) {
		this.kid9mob = kid9mob;
	}

	public int getKid9yob() {
		return kid9yob;
	}

	public void setKid9yob(int kid9yob) {
		this.kid9yob = kid9yob;
	}

	public int getKid9agd() {
		return kid9agd;
	}

	public void setKid9agd(int kid9agd) {
		this.kid9agd = kid9agd;
	}

	public int getKid9neu() {
		return kid9neu;
	}

	public void setKid9neu(int kid9neu) {
		this.kid9neu = kid9neu;
	}

	public int getKid9pdx() {
		return kid9pdx;
	}

	public void setKid9pdx(int kid9pdx) {
		this.kid9pdx = kid9pdx;
	}

	public int getKid9moe() {
		return kid9moe;
	}

	public void setKid9moe(int kid9moe) {
		this.kid9moe = kid9moe;
	}

	public int getKid9ago() {
		return kid9ago;
	}

	public void setKid9ago(int kid9ago) {
		this.kid9ago = kid9ago;
	}

	public int getKid10mob() {
		return kid10mob;
	}

	public void setKid10mob(int kid10mob) {
		this.kid10mob = kid10mob;
	}

	public int getKid10yob() {
		return kid10yob;
	}

	public void setKid10yob(int kid10yob) {
		this.kid10yob = kid10yob;
	}

	public int getKid10agd() {
		return kid10agd;
	}

	public void setKid10agd(int kid10agd) {
		this.kid10agd = kid10agd;
	}

	public int getKid10neu() {
		return kid10neu;
	}

	public void setKid10neu(int kid10neu) {
		this.kid10neu = kid10neu;
	}

	public int getKid10pdx() {
		return kid10pdx;
	}

	public void setKid10pdx(int kid10pdx) {
		this.kid10pdx = kid10pdx;
	}

	public int getKid10moe() {
		return kid10moe;
	}

	public void setKid10moe(int kid10moe) {
		this.kid10moe = kid10moe;
	}

	public int getKid10ago() {
		return kid10ago;
	}

	public void setKid10ago(int kid10ago) {
		this.kid10ago = kid10ago;
	}

	public int getKid11mob() {
		return kid11mob;
	}

	public void setKid11mob(int kid11mob) {
		this.kid11mob = kid11mob;
	}

	public int getKid11yob() {
		return kid11yob;
	}

	public void setKid11yob(int kid11yob) {
		this.kid11yob = kid11yob;
	}

	public int getKid11agd() {
		return kid11agd;
	}

	public void setKid11agd(int kid11agd) {
		this.kid11agd = kid11agd;
	}

	public int getKid11neu() {
		return kid11neu;
	}

	public void setKid11neu(int kid11neu) {
		this.kid11neu = kid11neu;
	}

	public int getKid11pdx() {
		return kid11pdx;
	}

	public void setKid11pdx(int kid11pdx) {
		this.kid11pdx = kid11pdx;
	}

	public int getKid11moe() {
		return kid11moe;
	}

	public void setKid11moe(int kid11moe) {
		this.kid11moe = kid11moe;
	}

	public int getKid11ago() {
		return kid11ago;
	}

	public void setKid11ago(int kid11ago) {
		this.kid11ago = kid11ago;
	}

	public int getKid12mob() {
		return kid12mob;
	}

	public void setKid12mob(int kid12mob) {
		this.kid12mob = kid12mob;
	}

	public int getKid12yob() {
		return kid12yob;
	}

	public void setKid12yob(int kid12yob) {
		this.kid12yob = kid12yob;
	}

	public int getKid12agd() {
		return kid12agd;
	}

	public void setKid12agd(int kid12agd) {
		this.kid12agd = kid12agd;
	}

	public int getKid12neu() {
		return kid12neu;
	}

	public void setKid12neu(int kid12neu) {
		this.kid12neu = kid12neu;
	}

	public int getKid12pdx() {
		return kid12pdx;
	}

	public void setKid12pdx(int kid12pdx) {
		this.kid12pdx = kid12pdx;
	}

	public int getKid12moe() {
		return kid12moe;
	}

	public void setKid12moe(int kid12moe) {
		this.kid12moe = kid12moe;
	}

	public int getKid12ago() {
		return kid12ago;
	}

	public void setKid12ago(int kid12ago) {
		this.kid12ago = kid12ago;
	}

	public int getKid13mob() {
		return kid13mob;
	}

	public void setKid13mob(int kid13mob) {
		this.kid13mob = kid13mob;
	}

	public int getKid13yob() {
		return kid13yob;
	}

	public void setKid13yob(int kid13yob) {
		this.kid13yob = kid13yob;
	}

	public int getKid13agd() {
		return kid13agd;
	}

	public void setKid13agd(int kid13agd) {
		this.kid13agd = kid13agd;
	}

	public int getKid13neu() {
		return kid13neu;
	}

	public void setKid13neu(int kid13neu) {
		this.kid13neu = kid13neu;
	}

	public int getKid13pdx() {
		return kid13pdx;
	}

	public void setKid13pdx(int kid13pdx) {
		this.kid13pdx = kid13pdx;
	}

	public int getKid13moe() {
		return kid13moe;
	}

	public void setKid13moe(int kid13moe) {
		this.kid13moe = kid13moe;
	}

	public int getKid13ago() {
		return kid13ago;
	}

	public void setKid13ago(int kid13ago) {
		this.kid13ago = kid13ago;
	}

	public int getKid14mob() {
		return kid14mob;
	}

	public void setKid14mob(int kid14mob) {
		this.kid14mob = kid14mob;
	}

	public int getKid14yob() {
		return kid14yob;
	}

	public void setKid14yob(int kid14yob) {
		this.kid14yob = kid14yob;
	}

	public int getKid14agd() {
		return kid14agd;
	}

	public void setKid14agd(int kid14agd) {
		this.kid14agd = kid14agd;
	}

	public int getKid14neu() {
		return kid14neu;
	}

	public void setKid14neu(int kid14neu) {
		this.kid14neu = kid14neu;
	}

	public int getKid14pdx() {
		return kid14pdx;
	}

	public void setKid14pdx(int kid14pdx) {
		this.kid14pdx = kid14pdx;
	}

	public int getKid14moe() {
		return kid14moe;
	}

	public void setKid14moe(int kid14moe) {
		this.kid14moe = kid14moe;
	}

	public int getKid14ago() {
		return kid14ago;
	}

	public void setKid14ago(int kid14ago) {
		this.kid14ago = kid14ago;
	}

	public int getKid15mob() {
		return kid15mob;
	}

	public void setKid15mob(int kid15mob) {
		this.kid15mob = kid15mob;
	}

	public int getKid15yob() {
		return kid15yob;
	}

	public void setKid15yob(int kid15yob) {
		this.kid15yob = kid15yob;
	}

	public int getKid15agd() {
		return kid15agd;
	}

	public void setKid15agd(int kid15agd) {
		this.kid15agd = kid15agd;
	}

	public int getKid15neu() {
		return kid15neu;
	}

	public void setKid15neu(int kid15neu) {
		this.kid15neu = kid15neu;
	}

	public int getKid15pdx() {
		return kid15pdx;
	}

	public void setKid15pdx(int kid15pdx) {
		this.kid15pdx = kid15pdx;
	}

	public int getKid15moe() {
		return kid15moe;
	}

	public void setKid15moe(int kid15moe) {
		this.kid15moe = kid15moe;
	}

	public int getKid15ago() {
		return kid15ago;
	}

	public void setKid15ago(int kid15ago) {
		this.kid15ago = kid15ago;
	}
	
}



