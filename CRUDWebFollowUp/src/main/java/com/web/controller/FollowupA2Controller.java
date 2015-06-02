package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupA2;
import com.web.model.Header;
import com.web.service.FollowupA2Service;
import com.web.service.HeaderService;


@Controller
public class FollowupA2Controller {
	@Autowired
	private FollowupA2Service followupa2service;
	@Autowired
	private HeaderService headerservice;
	@Autowired(required=true)
	private HttpSession session;

	
	FollowupA2 followupa2 = null;
	Header header = null;
	
	@RequestMapping("/FollowupA2")
	public String loadFollowupA2(Model model){		
		return "followupa2";
	}
	
	@RequestMapping("/FollowupA22")
	public String loadFollowupA22(Model model) {
			return "followupa22";
	}
	@RequestMapping(value="/followupa2.do", method=RequestMethod.POST)
	public String FollowupA2Visit(Model model,
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
			
		@RequestParam("inbirmo") int inbirmo,
		@RequestParam("inbiryr") int inbiryr,
		@RequestParam("insex") int insex,
		@RequestParam("newinf") int newinf,
		@RequestParam("inhisp") int inhisp,
		@RequestParam("inhispor") int inhispor,
		@RequestParam("inhispox") String inhispox,
		@RequestParam("inrace") int inrace,
		@RequestParam("inracex") String inracex,
		@RequestParam("inrater") int inrater,
		@RequestParam("inraterx") String inraterx)
	{
		followupa2 = (FollowupA2)session.getAttribute("followupa2");
		if(followupa2==null){
			followupa2 = new FollowupA2();
			session.setAttribute("followupa2", followupa2);
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
		
		followupa2.setInbirmo(inbirmo);
		followupa2.setInbiryr(inbiryr);
		followupa2.setInsex(insex);
		followupa2.setNewinf(newinf);
		followupa2.setInhisp(inhisp);
		followupa2.setInhispor(inhispor);
		followupa2.setInhispox(inhispox);
		followupa2.setInrace(inrace);
		followupa2.setInracex(inracex);
		followupa2.setInrater(inrater);
		followupa2.setInraterx(inraterx);
		return "followupa22";
	}
	
	@RequestMapping(value="/followupa22.do", method=RequestMethod.POST)
	public String FollowupA2Visit2(Model model,
		@RequestParam("inrasec") int inrasec,
		@RequestParam("inrasecx") String inrasecx,
		@RequestParam("ineduc") int ineduc,
		@RequestParam("inrelto") int inrelto,
		@RequestParam("inknown") int inknown,
		@RequestParam("inlivwth") int inlivwth,
		@RequestParam("invisits") int invisits,
		@RequestParam("incalls") int incalls,
		@RequestParam("inrely") int inrely)
		//@RequestParam("header_fk_followupa2") int header_fk_followupa2)	 
	{
		
		followupa2 = (FollowupA2)session.getAttribute("followupa2");
		if(followupa2==null){
			System.err.print("Arrived in a22 with a followupa2 object not in the session, that should not be possible, check the code...");
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			System.err.print("Arrived in a22 with a header object not in the session, that should not be possible, check the code...");
		}
		
		followupa2.setInrasec(inrasec);
		followupa2.setInrasecx(inrasecx);
		followupa2.setIneduc(ineduc);
		followupa2.setInrelto(inrelto);
		followupa2.setInknown(inknown);
		followupa2.setInlivwth(inlivwth);
		followupa2.setInvisits(invisits);
		followupa2.setIncalls(incalls);
		followupa2.setInrely(inrely);

		if(header.getDetailsid()!=0)//we are in the revision process of an existing ptid form
		{
			followupa2service.edit(followupa2);
			headerservice.edit(header);
			//should not be present anymore but just in case...
			session.removeAttribute("header");
			session.removeAttribute("followupa2");
			followupa2 = null;
			header = null;
		}
		else//we are creating a new ptid
		{
			followupa2service.add(followupa2);
			header.setDetailsid(followupa2.getA2());
			headerservice.add(header);
			session.removeAttribute("header");
			session.removeAttribute("followupa2");
			followupa2 = null;
			header = null;
		}
		return "Entry";
	}

}
