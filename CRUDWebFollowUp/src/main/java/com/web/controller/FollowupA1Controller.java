package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupA1;
import com.web.model.FollowupA2;
import com.web.model.Header;
import com.web.service.FollowupA1Service;
import com.web.service.HeaderService;

/**
 * 
 * @author Davy
 * TODO find how we can bind 2 object in the .do and use the permanence
 *
 */
@Controller
public class FollowupA1Controller {
	@Autowired
	private FollowupA1Service followupA1service;
	@Autowired
	private HeaderService headerservice;
	@Autowired(required=true)
	private HttpSession session;
	
	FollowupA1 followupa1 = null;
	Header header = null;

	@RequestMapping("/FollowupA1")
	public String loadFollowupA1(Model model) 
	{	
		return "followupa1";
	}
	
	@RequestMapping(value="/followupa1.do", method=RequestMethod.POST)
	public String FollowUpVisitA1(Model model,
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
			
			@RequestParam int birthmo,
			@RequestParam int birthyr,
			@RequestParam int maristat,
			@RequestParam int sex,
			@RequestParam int livsitua,
			@RequestParam int independ,
			@RequestParam int residenc,
			@RequestParam String zip) 
	{
		followupa1 = (FollowupA1)session.getAttribute("followupa1");
		if(followupa1==null){
			followupa1 = new FollowupA1();
			session.setAttribute("followupa1", followupa1);
		}
		header = (Header)session.getAttribute("header");
		if(header==null){
			header = new Header();
			session.setAttribute("header", header);
		}

		followupa1.setBirthmo(birthmo);
		followupa1.setBirthyr(birthyr);
		followupa1.setIndepend(independ);
		followupa1.setLivsitua(livsitua);
		followupa1.setMaristat(maristat);
		followupa1.setResidenc(residenc);
		followupa1.setSex(sex);
		followupa1.setZip(zip);

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
		
		if(header.getDetailsid()==0)//we are creating a new ptid
		{
			followupA1service.add(followupa1);
			header.setDetailsid(followupa1.getA1());
			headerservice.add(header);
		}
		else//we are in the revision process of an existing ptid form
		{
			followupA1service.edit(followupa1);
			headerservice.edit(header);
		}
		
		session.removeAttribute("header");
		session.removeAttribute("followupa1");
		followupa1 = null;
		header = null;
		return "Entry";
	}

}
