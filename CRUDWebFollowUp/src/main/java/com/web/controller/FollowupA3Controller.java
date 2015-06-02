package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupA2;
import com.web.model.FollowupA3;
import com.web.model.Header;
import com.web.service.FollowupA3Service;
import com.web.service.HeaderService;

@Controller
public class FollowupA3Controller 
{
	@Autowired
	private FollowupA3Service followupa3service;
	@Autowired
	private HeaderService headerservice;
	@Autowired(required=true)
	private HttpSession session;
	
	FollowupA3 followupa3 = null;
	Header header = null;
	
	@RequestMapping("/FollowupA3")
	public String loadFollowupA3(Model model){		 
			return "followupa3";
	}
	@RequestMapping(value="/followupa3.do", method=RequestMethod.POST)
	public String FollowupA3Visit(Model model,
		@RequestParam int adcid,
		@RequestParam int ptid,
		@RequestParam int visitmo,
		@RequestParam int visitday,
		@RequestParam int visityr,
		@RequestParam int visitnum,
		@RequestParam String initials,
		@RequestParam Character packet,
		@RequestParam String formid,
		@RequestParam int formver,	
			
		@RequestParam("nwinfmut") int nwinfmut,
		@RequestParam("fadmut") int fadmut,
		@RequestParam("fadmutx") String fadmutx,
		@RequestParam("fadmuso") int fadmuso,
		@RequestParam("fadmusox") String fadmusox)
	{
		followupa3 = (FollowupA3)session.getAttribute("followupa3");
		if(followupa3==null){
			followupa3 = new FollowupA3();
			session.setAttribute("followupa3", followupa3);
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			header = new Header();
			session.setAttribute("header", header);
		} 
		
		header.setAdcid(adcid);
		header.setPtid(ptid);
		header.setVisitmo(visitmo);
		header.setVisitday(visitday);
		header.setVisityr(visityr);
		header.setVisitnum(visitnum);
		header.setInitials(initials);
		header.setPacket(packet);
		header.setFormid(formid);
		header.setFormver(formver);
		
		followupa3.setNwinfmut(nwinfmut);
		followupa3.setFadmut(fadmut);
		followupa3.setFadmutx(fadmutx);
		followupa3.setFadmuso(fadmuso);
		followupa3.setFadmusox(fadmusox);

		return "followupa32";
	}
	
	@RequestMapping("/FollowupA32")
	public String loadFollowupA32(Model model) {
			return "followupa32";
	}
	@RequestMapping(value="/followupa32.do", method=RequestMethod.POST)
	public String FollowupA3Visit2(Model model,
		@RequestParam("fftdmut") int fftdmut,
		@RequestParam("fftdmutx") String fftdmutx,
		@RequestParam("fftdmuso") int fftdmuso,
		@RequestParam("fftdmusx") String fftdmusx,
		@RequestParam("fothmut") int fothmut,
		@RequestParam("fothmutx") String fothmutx,
		@RequestParam("fothmuso") int fothmuso,
		@RequestParam("fothmusx") String fothmusx)
	{
		followupa3 = (FollowupA3)session.getAttribute("followupa3");
		if(followupa3==null){
			System.err.print("Arrived in a32 with a followupa3 object not in the session, that should not be possible, check the code...");
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			System.err.print("Arrived in a32 with a header object not in the session, that should not be possible, check the code...");
		}
		
		followupa3.setFftdmut(fftdmut);
		followupa3.setFftdmutx(fftdmutx);
		followupa3.setFftdmuso(fftdmuso);
		followupa3.setFftdmusx(fftdmusx);
		followupa3.setFothmut(fothmut);
		followupa3.setFothmutx(fothmutx);
		followupa3.setFothmuso(fothmuso);
		followupa3.setFothmusx(fothmusx);
		
		session.setAttribute("followupa3", followupa3);
		session.setAttribute("header", header);

		return "followupa33";
	}
	@RequestMapping(value="/followupa33.do", method=RequestMethod.POST)
	public String FollowupA3Visit3(Model model,
		@RequestParam("nwinfpar") int nwinfpar,
		@RequestParam("mommob") int mommob,
		@RequestParam("momyob") int momyob,
		@RequestParam("momdage") int momdage,
		@RequestParam("momneur") int momneur,
		@RequestParam("momprdx") int momprdx,
		@RequestParam("mommoe") int mommoe,
		@RequestParam("momageo") int momageo,
		@RequestParam("dadmob") int dadmob,
		@RequestParam("dadyob") int dadyob,
		@RequestParam("daddage") int daddage,
		@RequestParam("dadneur") int dadneur,
		@RequestParam("dadprdx") int dadprdx,
		@RequestParam("dadmoe") int dadmoe,
		@RequestParam("dadageo") int dadageo)
	{

		followupa3 = (FollowupA3)session.getAttribute("followupa3");
		if(followupa3==null){
			System.err.print("Arrived in a33 with a followupa3 object not in the session, that should not be possible, check the code...");
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			System.err.print("Arrived in a33 with a header object not in the session, that should not be possible, check the code...");
		}
		
		followupa3.setNwinfpar(nwinfpar);
		followupa3.setMommob(mommob);
		followupa3.setMomyob(momyob);
		followupa3.setMomdage(momdage);
		followupa3.setMomneur(momneur);
		followupa3.setMomprdx(momprdx);
		followupa3.setMommoe(mommoe);
		followupa3.setMomageo(momageo);
		followupa3.setDadmob(dadmob);
		followupa3.setDadyob(dadyob);
		followupa3.setDaddage(daddage);
		followupa3.setDadneur(dadneur);
		followupa3.setDadprdx(dadprdx);
		followupa3.setDadmoe(dadmoe);
		followupa3.setDadageo(dadageo);
		
		session.setAttribute("followupa3", followupa3);
		session.setAttribute("header", header);
		
		return "followupa34";
	}
	
	@RequestMapping(value="/followupa34.do", method=RequestMethod.POST)
	public String FollowupA3Visit4(Model model,
		@RequestParam("sibs") int sibs,
		@RequestParam("nwinfsib") int nwinfsib,
		
		@RequestParam("sib1mob") int sib1mob,
		@RequestParam("sib1yob") int sib1yob,
		@RequestParam("sib1agd") int sib1agd,
		@RequestParam("sib1neu") int sib1neu,
		@RequestParam("sib1pdx") int sib1pdx,
		@RequestParam("sib1moe") int sib1moe,
		@RequestParam("sib1ago") int sib1ago,
		
		@RequestParam("sib2mob") int sib2mob,
		@RequestParam("sib2yob") int sib2yob,
		@RequestParam("sib2agd") int sib2agd,
		@RequestParam("sib2neu") int sib2neu,
		@RequestParam("sib2pdx") int sib2pdx,
		@RequestParam("sib2moe") int sib2moe,
		@RequestParam("sib2ago") int sib2ago,
		
		@RequestParam("sib3mob") int sib3mob,
		@RequestParam("sib3yob") int sib3yob,
		@RequestParam("sib3agd") int sib3agd,
		@RequestParam("sib3neu") int sib3neu,
		@RequestParam("sib3pdx") int sib3pdx,
		@RequestParam("sib3moe") int sib3moe,
		@RequestParam("sib3ago") int sib3ago,
		
		@RequestParam("sib4mob") int sib4mob,
		@RequestParam("sib4yob") int sib4yob,
		@RequestParam("sib4agd") int sib4agd,
		@RequestParam("sib4neu") int sib4neu,
		@RequestParam("sib4pdx") int sib4pdx,
		@RequestParam("sib4moe") int sib4moe,
		@RequestParam("sib4ago") int sib4ago,
		
		@RequestParam("sib5mob") int sib5mob,
		@RequestParam("sib5yob") int sib5yob,
		@RequestParam("sib5agd") int sib5agd,
		@RequestParam("sib5neu") int sib5neu,
		@RequestParam("sib5pdx") int sib5pdx,
		@RequestParam("sib5moe") int sib5moe,
		@RequestParam("sib5ago") int sib5ago,
		
		@RequestParam("sib6mob") int sib6mob,
		@RequestParam("sib6yob") int sib6yob,
		@RequestParam("sib6agd") int sib6agd,
		@RequestParam("sib6neu") int sib6neu,
		@RequestParam("sib6pdx") int sib6pdx,
		@RequestParam("sib6moe") int sib6moe,
		@RequestParam("sib6ago") int sib6ago,
		
		@RequestParam("sib7mob") int sib7mob,
		@RequestParam("sib7yob") int sib7yob,
		@RequestParam("sib7agd") int sib7agd,
		@RequestParam("sib7neu") int sib7neu,
		@RequestParam("sib7pdx") int sib7pdx,
		@RequestParam("sib7moe") int sib7moe,
		@RequestParam("sib7ago") int sib7ago,
		
		@RequestParam("sib8mob") int sib8mob,
		@RequestParam("sib8yob") int sib8yob,
		@RequestParam("sib8agd") int sib8agd,
		@RequestParam("sib8neu") int sib8neu,
		@RequestParam("sib8pdx") int sib8pdx,
		@RequestParam("sib8moe") int sib8moe,
		@RequestParam("sib8ago") int sib8ago,
		
		@RequestParam("sib9mob") int sib9mob,
		@RequestParam("sib9yob") int sib9yob,
		@RequestParam("sib9agd") int sib9agd,
		@RequestParam("sib9neu") int sib9neu,
		@RequestParam("sib9pdx") int sib9pdx,
		@RequestParam("sib9moe") int sib9moe,
		@RequestParam("sib9ago") int sib9ago,
		
		@RequestParam("sib10mob") int sib10mob,
		@RequestParam("sib10yob") int sib10yob,
		@RequestParam("sib10agd") int sib10agd,
		@RequestParam("sib10neu") int sib10neu,
		@RequestParam("sib10pdx") int sib10pdx,
		@RequestParam("sib10moe") int sib10moe,
		@RequestParam("sib10ago") int sib10ago,
		
		@RequestParam("sib11mob") int sib11mob,
		@RequestParam("sib11yob") int sib11yob,
		@RequestParam("sib11agd") int sib11agd,
		@RequestParam("sib11neu") int sib11neu,
		@RequestParam("sib11pdx") int sib11pdx,
		@RequestParam("sib11moe") int sib11moe,
		@RequestParam("sib11ago") int sib11ago,
		
		@RequestParam("sib12mob") int sib12mob,
		@RequestParam("sib12yob") int sib12yob,
		@RequestParam("sib12agd") int sib12agd,
		@RequestParam("sib12neu") int sib12neu,
		@RequestParam("sib12pdx") int sib12pdx,
		@RequestParam("sib12moe") int sib12moe,
		@RequestParam("sib12ago") int sib12ago,
		
		@RequestParam("sib13mob") int sib13mob,
		@RequestParam("sib13yob") int sib13yob,
		@RequestParam("sib13agd") int sib13agd,
		@RequestParam("sib13neu") int sib13neu,
		@RequestParam("sib13pdx") int sib13pdx,
		@RequestParam("sib13moe") int sib13moe,
		@RequestParam("sib13ago") int sib13ago,
		
		@RequestParam("sib14mob") int sib14mob,
		@RequestParam("sib14yob") int sib14yob,
		@RequestParam("sib14agd") int sib14agd,
		@RequestParam("sib14neu") int sib14neu,
		@RequestParam("sib14pdx") int sib14pdx,
		@RequestParam("sib14moe") int sib14moe,
		@RequestParam("sib14ago") int sib14ago,
		
		@RequestParam("sib15mob") int sib15mob,
		@RequestParam("sib15yob") int sib15yob,
		@RequestParam("sib15agd") int sib15agd,
		@RequestParam("sib15neu") int sib15neu,
		@RequestParam("sib15pdx") int sib15pdx,
		@RequestParam("sib15moe") int sib15moe,
		@RequestParam("sib15ago") int sib15ago,
		
		@RequestParam("sib16mob") int sib16mob,
		@RequestParam("sib16yob") int sib16yob,
		@RequestParam("sib16agd") int sib16agd,
		@RequestParam("sib16neu") int sib16neu,
		@RequestParam("sib16pdx") int sib16pdx,
		@RequestParam("sib16moe") int sib16moe,
		@RequestParam("sib16ago") int sib16ago,
		
		@RequestParam("sib17mob") int sib17mob,
		@RequestParam("sib17yob") int sib17yob,
		@RequestParam("sib17agd") int sib17agd,
		@RequestParam("sib17neu") int sib17neu,
		@RequestParam("sib17pdx") int sib17pdx,
		@RequestParam("sib17moe") int sib17moe,
		@RequestParam("sib17ago") int sib17ago,
		
		@RequestParam("sib18mob") int sib18mob,
		@RequestParam("sib18yob") int sib18yob,
		@RequestParam("sib18agd") int sib18agd,
		@RequestParam("sib18neu") int sib18neu,
		@RequestParam("sib18pdx") int sib18pdx,
		@RequestParam("sib18moe") int sib18moe,
		@RequestParam("sib18ago") int sib18ago,
		
		@RequestParam("sib19mob") int sib19mob,
		@RequestParam("sib19yob") int sib19yob,
		@RequestParam("sib19agd") int sib19agd,
		@RequestParam("sib19neu") int sib19neu,
		@RequestParam("sib19pdx") int sib19pdx,
		@RequestParam("sib19moe") int sib19moe,
		@RequestParam("sib19ago") int sib19ago,
		
		@RequestParam("sib20mob") int sib20mob,
		@RequestParam("sib20yob") int sib20yob,
		@RequestParam("sib20agd") int sib20agd,
		@RequestParam("sib20neu") int sib20neu,
		@RequestParam("sib20pdx") int sib20pdx,
		@RequestParam("sib20moe") int sib20moe,
		@RequestParam("sib20ago") int sib20ago)

	{
		followupa3 = (FollowupA3)session.getAttribute("followupa3");
		if(followupa3==null){
			System.err.print("Arrived in a34 with a followupa3 object not in the session, that should not be possible, check the code...");
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			System.err.print("Arrived in a34 with a header object not in the session, that should not be possible, check the code...");
		}
		
		followupa3.setSibs(sibs);
		followupa3.setNwinfsib(nwinfsib);

		followupa3.setSib1mob(sib1mob);
		followupa3.setSib1yob(sib1yob);
		followupa3.setSib1agd(sib1agd);
		followupa3.setSib1neu(sib1neu);
		followupa3.setSib1pdx(sib1pdx);
		followupa3.setSib1moe(sib1moe);
		followupa3.setSib1ago(sib1ago);
		
		followupa3.setSib2mob(sib2mob);
		followupa3.setSib2yob(sib2yob);
		followupa3.setSib2agd(sib2agd);
		followupa3.setSib2neu(sib2neu);
		followupa3.setSib2pdx(sib2pdx);
		followupa3.setSib2moe(sib2moe);
		followupa3.setSib2ago(sib2ago);
		
		followupa3.setSib3mob(sib3mob);
		followupa3.setSib3yob(sib3yob);
		followupa3.setSib3agd(sib3agd);
		followupa3.setSib3neu(sib3neu);
		followupa3.setSib3pdx(sib3pdx);
		followupa3.setSib3moe(sib3moe);
		followupa3.setSib3ago(sib3ago);

		followupa3.setSib4mob(sib4mob);
		followupa3.setSib4yob(sib4yob);
		followupa3.setSib4agd(sib4agd);
		followupa3.setSib4neu(sib4neu);
		followupa3.setSib4pdx(sib4pdx);
		followupa3.setSib4moe(sib4moe);
		followupa3.setSib4ago(sib4ago);
		
		followupa3.setSib5mob(sib5mob);
		followupa3.setSib5yob(sib5yob);
		followupa3.setSib5agd(sib5agd);
		followupa3.setSib5neu(sib5neu);
		followupa3.setSib5pdx(sib5pdx);
		followupa3.setSib5moe(sib5moe);
		followupa3.setSib5ago(sib5ago);
		
		followupa3.setSib6mob(sib6mob);
		followupa3.setSib6yob(sib6yob);
		followupa3.setSib6agd(sib6agd);
		followupa3.setSib6neu(sib6neu);
		followupa3.setSib6pdx(sib6pdx);
		followupa3.setSib6moe(sib6moe);
		followupa3.setSib6ago(sib6ago);
		
		followupa3.setSib7mob(sib7mob);
		followupa3.setSib7yob(sib7yob);
		followupa3.setSib7agd(sib7agd);
		followupa3.setSib7neu(sib7neu);
		followupa3.setSib7pdx(sib7pdx);
		followupa3.setSib7moe(sib7moe);
		followupa3.setSib7ago(sib7ago);
		
		followupa3.setSib8mob(sib8mob);
		followupa3.setSib8yob(sib8yob);
		followupa3.setSib8agd(sib8agd);
		followupa3.setSib8neu(sib8neu);
		followupa3.setSib8pdx(sib8pdx);
		followupa3.setSib8moe(sib8moe);
		followupa3.setSib8ago(sib8ago);
		
		followupa3.setSib9mob(sib9mob);
		followupa3.setSib9yob(sib9yob);
		followupa3.setSib9agd(sib9agd);
		followupa3.setSib9neu(sib9neu);
		followupa3.setSib9pdx(sib9pdx);
		followupa3.setSib9moe(sib9moe);
		followupa3.setSib9ago(sib9ago);
		
		followupa3.setSib10mob(sib10mob);
		followupa3.setSib10yob(sib10yob);
		followupa3.setSib10agd(sib10agd);
		followupa3.setSib10neu(sib10neu);
		followupa3.setSib10pdx(sib10pdx);
		followupa3.setSib10moe(sib10moe);
		followupa3.setSib10ago(sib10ago);
		
		followupa3.setSib11mob(sib11mob);
		followupa3.setSib11yob(sib11yob);
		followupa3.setSib11agd(sib11agd);
		followupa3.setSib11neu(sib11neu);
		followupa3.setSib11pdx(sib11pdx);
		followupa3.setSib11moe(sib11moe);
		followupa3.setSib11ago(sib11ago);
		
		followupa3.setSib12mob(sib12mob);
		followupa3.setSib12yob(sib12yob);
		followupa3.setSib12agd(sib12agd);
		followupa3.setSib12neu(sib12neu);
		followupa3.setSib12pdx(sib12pdx);
		followupa3.setSib12moe(sib12moe);
		followupa3.setSib12ago(sib12ago);
		
		followupa3.setSib13mob(sib13mob);
		followupa3.setSib13yob(sib13yob);
		followupa3.setSib13agd(sib13agd);
		followupa3.setSib13neu(sib13neu);
		followupa3.setSib13pdx(sib13pdx);
		followupa3.setSib13moe(sib13moe);
		followupa3.setSib13ago(sib13ago);
		
		followupa3.setSib14mob(sib14mob);
		followupa3.setSib14yob(sib14yob);
		followupa3.setSib14agd(sib14agd);
		followupa3.setSib14neu(sib14neu);
		followupa3.setSib14pdx(sib14pdx);
		followupa3.setSib14moe(sib14moe);
		followupa3.setSib14ago(sib14ago);
		
		followupa3.setSib15mob(sib15mob);
		followupa3.setSib15yob(sib15yob);
		followupa3.setSib15agd(sib15agd);
		followupa3.setSib15neu(sib15neu);
		followupa3.setSib15pdx(sib15pdx);
		followupa3.setSib15moe(sib15moe);
		followupa3.setSib15ago(sib15ago);
		
		followupa3.setSib16mob(sib16mob);
		followupa3.setSib16yob(sib16yob);
		followupa3.setSib16agd(sib16agd);
		followupa3.setSib16neu(sib16neu);
		followupa3.setSib16pdx(sib16pdx);
		followupa3.setSib16moe(sib16moe);
		followupa3.setSib16ago(sib16ago);
		
		followupa3.setSib17mob(sib17mob);
		followupa3.setSib17yob(sib17yob);
		followupa3.setSib17agd(sib17agd);
		followupa3.setSib17neu(sib17neu);
		followupa3.setSib17pdx(sib17pdx);
		followupa3.setSib17moe(sib17moe);
		followupa3.setSib17ago(sib17ago);
		
		followupa3.setSib18mob(sib18mob);
		followupa3.setSib18yob(sib18yob);
		followupa3.setSib18agd(sib18agd);
		followupa3.setSib18neu(sib18neu);
		followupa3.setSib18pdx(sib18pdx);
		followupa3.setSib18moe(sib18moe);
		followupa3.setSib18ago(sib18ago);
		
		followupa3.setSib19mob(sib19mob);
		followupa3.setSib19yob(sib19yob);
		followupa3.setSib19agd(sib19agd);
		followupa3.setSib19neu(sib19neu);
		followupa3.setSib19pdx(sib19pdx);
		followupa3.setSib19moe(sib19moe);
		followupa3.setSib19ago(sib19ago);
		
		followupa3.setSib20mob(sib20mob);
		followupa3.setSib20yob(sib20yob);
		followupa3.setSib20agd(sib20agd);
		followupa3.setSib20neu(sib20neu);
		followupa3.setSib20pdx(sib20pdx);
		followupa3.setSib20moe(sib20moe);
		followupa3.setSib20ago(sib20ago);
		
		session.setAttribute("followupa3", followupa3);
		session.setAttribute("header", header);
		
		return "followupa35";
	}
	
	@RequestMapping(value="/followupa35.do", method=RequestMethod.POST)
	public String FollowupA3Visit5(Model model,
		@RequestParam("kids") int kids,
		@RequestParam("nwinfkid") int nwinfkid,
		
		@RequestParam("kid1mob") int kid1mob,
		@RequestParam("kid1yob") int kid1yob,
		@RequestParam("kid1agd") int kid1agd,
		@RequestParam("kid1neu") int kid1neu,
		@RequestParam("kid1pdx") int kid1pdx,
		@RequestParam("kid1moe") int kid1moe,
		@RequestParam("kid1ago") int kid1ago,

		@RequestParam("kid2mob") int kid2mob,
		@RequestParam("kid2yob") int kid2yob,
		@RequestParam("kid2agd") int kid2agd,
		@RequestParam("kid2neu") int kid2neu,
		@RequestParam("kid2pdx") int kid2pdx,
		@RequestParam("kid2moe") int kid2moe,
		@RequestParam("kid2ago") int kid2ago,

		@RequestParam("kid3mob") int kid3mob,
		@RequestParam("kid3yob") int kid3yob,
		@RequestParam("kid3agd") int kid3agd,
		@RequestParam("kid3neu") int kid3neu,
		@RequestParam("kid3pdx") int kid3pdx,
		@RequestParam("kid3moe") int kid3moe,
		@RequestParam("kid3ago") int kid3ago,

		@RequestParam("kid4mob") int kid4mob,
		@RequestParam("kid4yob") int kid4yob,
		@RequestParam("kid4agd") int kid4agd,
		@RequestParam("kid4neu") int kid4neu,
		@RequestParam("kid4pdx") int kid4pdx,
		@RequestParam("kid4moe") int kid4moe,
		@RequestParam("kid4ago") int kid4ago,

		@RequestParam("kid5mob") int kid5mob,
		@RequestParam("kid5yob") int kid5yob,
		@RequestParam("kid5agd") int kid5agd,
		@RequestParam("kid5neu") int kid5neu,
		@RequestParam("kid5pdx") int kid5pdx,
		@RequestParam("kid5moe") int kid5moe,
		@RequestParam("kid5ago") int kid5ago,

		@RequestParam("kid6mob") int kid6mob,
		@RequestParam("kid6yob") int kid6yob,
		@RequestParam("kid6agd") int kid6agd,
		@RequestParam("kid6neu") int kid6neu,
		@RequestParam("kid6pdx") int kid6pdx,
		@RequestParam("kid6moe") int kid6moe,
		@RequestParam("kid6ago") int kid6ago,

		@RequestParam("kid7mob") int kid7mob,
		@RequestParam("kid7yob") int kid7yob,
		@RequestParam("kid7agd") int kid7agd,
		@RequestParam("kid7neu") int kid7neu,
		@RequestParam("kid7pdx") int kid7pdx,
		@RequestParam("kid7moe") int kid7moe,
		@RequestParam("kid7ago") int kid7ago,

		@RequestParam("kid8mob") int kid8mob,
		@RequestParam("kid8yob") int kid8yob,
		@RequestParam("kid8agd") int kid8agd,
		@RequestParam("kid8neu") int kid8neu,
		@RequestParam("kid8pdx") int kid8pdx,
		@RequestParam("kid8moe") int kid8moe,
		@RequestParam("kid8ago") int kid8ago,

		@RequestParam("kid9mob") int kid9mob,
		@RequestParam("kid9yob") int kid9yob,
		@RequestParam("kid9agd") int kid9agd,
		@RequestParam("kid9neu") int kid9neu,
		@RequestParam("kid9pdx") int kid9pdx,
		@RequestParam("kid9moe") int kid9moe,
		@RequestParam("kid9ago") int kid9ago,

		@RequestParam("kid10mob") int kid10mob,
		@RequestParam("kid10yob") int kid10yob,
		@RequestParam("kid10agd") int kid10agd,
		@RequestParam("kid10neu") int kid10neu,
		@RequestParam("kid10pdx") int kid10pdx,
		@RequestParam("kid10moe") int kid10moe,
		@RequestParam("kid10ago") int kid10ago,

		@RequestParam("kid11mob") int kid11mob,
		@RequestParam("kid11yob") int kid11yob,
		@RequestParam("kid11agd") int kid11agd,
		@RequestParam("kid11neu") int kid11neu,
		@RequestParam("kid11pdx") int kid11pdx,
		@RequestParam("kid11moe") int kid11moe,
		@RequestParam("kid11ago") int kid11ago,

		@RequestParam("kid12mob") int kid12mob,
		@RequestParam("kid12yob") int kid12yob,
		@RequestParam("kid12agd") int kid12agd,
		@RequestParam("kid12neu") int kid12neu,
		@RequestParam("kid12pdx") int kid12pdx,
		@RequestParam("kid12moe") int kid12moe,
		@RequestParam("kid12ago") int kid12ago,

		@RequestParam("kid13mob") int kid13mob,
		@RequestParam("kid13yob") int kid13yob,
		@RequestParam("kid13agd") int kid13agd,
		@RequestParam("kid13neu") int kid13neu,
		@RequestParam("kid13pdx") int kid13pdx,
		@RequestParam("kid13moe") int kid13moe,
		@RequestParam("kid13ago") int kid13ago,

		@RequestParam("kid14mob") int kid14mob,
		@RequestParam("kid14yob") int kid14yob,
		@RequestParam("kid14agd") int kid14agd,
		@RequestParam("kid14neu") int kid14neu,
		@RequestParam("kid14pdx") int kid14pdx,
		@RequestParam("kid14moe") int kid14moe,
		@RequestParam("kid14ago") int kid14ago,

		@RequestParam("kid15mob") int kid15mob,
		@RequestParam("kid15yob") int kid15yob,
		@RequestParam("kid15agd") int kid15agd,
		@RequestParam("kid15neu") int kid15neu,
		@RequestParam("kid15pdx") int kid15pdx,
		@RequestParam("kid15moe") int kid15moe,
		@RequestParam("kid15ago") int kid15ago)
	{
		
		followupa3 = (FollowupA3)session.getAttribute("followupa3");
		if(followupa3==null){
			System.err.print("Arrived in a35 with a followupa3 object not in the session, that should not be possible, check the code...");
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			System.err.print("Arrived in a35 with a header object not in the session, that should not be possible, check the code...");
		}
		
		followupa3.setKids(kids);
		followupa3.setNwinfkid(nwinfkid);
		
		followupa3.setKid1mob(kid1mob);
		followupa3.setKid1yob(kid1yob);
		followupa3.setKid1agd(kid1agd);
		followupa3.setKid1neu(kid1neu);
		followupa3.setKid1pdx(kid1pdx);
		followupa3.setKid1moe(kid1moe);
		followupa3.setKid1ago(kid1ago);

		followupa3.setKid2mob(kid2mob);
		followupa3.setKid2yob(kid2yob);
		followupa3.setKid2agd(kid2agd);
		followupa3.setKid2neu(kid2neu);
		followupa3.setKid2pdx(kid2pdx);
		followupa3.setKid2moe(kid2moe);
		followupa3.setKid2ago(kid2ago);

		followupa3.setKid3mob(kid3mob);
		followupa3.setKid3yob(kid3yob);
		followupa3.setKid3agd(kid3agd);
		followupa3.setKid3neu(kid3neu);
		followupa3.setKid3pdx(kid3pdx);
		followupa3.setKid3moe(kid3moe);
		followupa3.setKid3ago(kid3ago);

		followupa3.setKid4mob(kid4mob);
		followupa3.setKid4yob(kid4yob);
		followupa3.setKid4agd(kid4agd);
		followupa3.setKid4neu(kid4neu);
		followupa3.setKid4pdx(kid4pdx);
		followupa3.setKid4moe(kid4moe);
		followupa3.setKid4ago(kid4ago);

		followupa3.setKid5mob(kid5mob);
		followupa3.setKid5yob(kid5yob);
		followupa3.setKid5agd(kid5agd);
		followupa3.setKid5neu(kid5neu);
		followupa3.setKid5pdx(kid5pdx);
		followupa3.setKid5moe(kid5moe);
		followupa3.setKid5ago(kid5ago);
		
		followupa3.setKid6mob(kid6mob);
		followupa3.setKid6yob(kid6yob);
		followupa3.setKid6agd(kid6agd);
		followupa3.setKid6neu(kid6neu);
		followupa3.setKid6pdx(kid6pdx);
		followupa3.setKid6moe(kid6moe);
		followupa3.setKid6ago(kid6ago);

		followupa3.setKid7mob(kid7mob);
		followupa3.setKid7yob(kid7yob);
		followupa3.setKid7agd(kid7agd);
		followupa3.setKid7neu(kid7neu);
		followupa3.setKid7pdx(kid7pdx);
		followupa3.setKid7moe(kid7moe);
		followupa3.setKid7ago(kid7ago);
		
		followupa3.setKid8mob(kid8mob);
		followupa3.setKid8yob(kid8yob);
		followupa3.setKid8agd(kid8agd);
		followupa3.setKid8neu(kid8neu);
		followupa3.setKid8pdx(kid8pdx);
		followupa3.setKid8moe(kid8moe);
		followupa3.setKid8ago(kid8ago);

		followupa3.setKid9mob(kid9mob);
		followupa3.setKid9yob(kid9yob);
		followupa3.setKid9agd(kid9agd);
		followupa3.setKid9neu(kid9neu);
		followupa3.setKid9pdx(kid9pdx);
		followupa3.setKid9moe(kid9moe);
		followupa3.setKid9ago(kid9ago);

		followupa3.setKid10mob(kid10mob);
		followupa3.setKid10yob(kid10yob);
		followupa3.setKid10agd(kid10agd);
		followupa3.setKid10neu(kid10neu);
		followupa3.setKid10pdx(kid10pdx);
		followupa3.setKid10moe(kid10moe);
		followupa3.setKid10ago(kid10ago);
		
		followupa3.setKid11mob(kid11mob);
		followupa3.setKid11yob(kid11yob);
		followupa3.setKid11agd(kid11agd);
		followupa3.setKid11neu(kid11neu);
		followupa3.setKid11pdx(kid11pdx);
		followupa3.setKid11moe(kid11moe);
		followupa3.setKid11ago(kid11ago);
		
		followupa3.setKid12mob(kid12mob);
		followupa3.setKid12yob(kid12yob);
		followupa3.setKid12agd(kid12agd);
		followupa3.setKid12neu(kid12neu);
		followupa3.setKid12pdx(kid12pdx);
		followupa3.setKid12moe(kid12moe);
		followupa3.setKid12ago(kid12ago);
		
		followupa3.setKid13mob(kid13mob);
		followupa3.setKid13yob(kid13yob);
		followupa3.setKid13agd(kid13agd);
		followupa3.setKid13neu(kid13neu);
		followupa3.setKid13pdx(kid13pdx);
		followupa3.setKid13moe(kid13moe);
		followupa3.setKid13ago(kid13ago);

		followupa3.setKid14mob(kid14mob);
		followupa3.setKid14yob(kid14yob);
		followupa3.setKid14agd(kid14agd);
		followupa3.setKid14neu(kid14neu);
		followupa3.setKid14pdx(kid14pdx);
		followupa3.setKid14moe(kid14moe);
		followupa3.setKid14ago(kid14ago);

		followupa3.setKid15mob(kid15mob);
		followupa3.setKid15yob(kid15yob);
		followupa3.setKid15agd(kid15agd);
		followupa3.setKid15neu(kid15neu);
		followupa3.setKid15pdx(kid15pdx);
		followupa3.setKid15moe(kid15moe);
		followupa3.setKid15ago(kid15ago);

		if(header.getDetailsid()!=0)//we are in the revision process of an existing ptid form
		{
			followupa3service.edit(followupa3);
			headerservice.edit(header);
			//should not be present anymore but just in case...
			session.removeAttribute("header");
			session.removeAttribute("followupa3");
			followupa3 = null;
			header = null;
		}
		else//we are creating a new ptid
		{
			followupa3service.add(followupa3);
			header.setDetailsid(followupa3.getA3());
			headerservice.add(header);
			session.removeAttribute("header");
			session.removeAttribute("followupa3");
			followupa3 = null;
			header = null;
		}
		return "Entry";
	}
}
