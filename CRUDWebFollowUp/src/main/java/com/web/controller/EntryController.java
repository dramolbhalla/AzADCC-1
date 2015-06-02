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
import com.web.model.FollowupA3;
import com.web.model.FollowupA4;
import com.web.model.FollowupB1;
import com.web.model.FollowupB4;
import com.web.model.FollowupB5;
import com.web.model.FollowupB6;
import com.web.model.FollowupB7;
import com.web.model.FollowupB8;
import com.web.model.FollowupB9;
import com.web.model.FollowupC1;
import com.web.model.FollowupC2;
import com.web.model.FollowupD1;
import com.web.model.FollowupD2;
import com.web.model.FollowupZ1;
import com.web.model.Header;
import com.web.model.InitialA1;
import com.web.model.InitialA2;
import com.web.model.InitialA3;
import com.web.model.InitialA4;
import com.web.model.InitialB1;
import com.web.model.InitialB4;
import com.web.model.InitialB5;
import com.web.model.InitialB6;
import com.web.model.InitialB7;
import com.web.model.InitialB8;
import com.web.model.InitialB9;
import com.web.model.InitialC2;
import com.web.model.InitialD1;
import com.web.model.InitialD2;
import com.web.model.InitialZ1;
import com.web.service.EntryService;

@Controller
public class EntryController 
{
	@Autowired
	private EntryService entryservice;
	@Autowired(required=true)
	private HttpSession session;
	
	@RequestMapping("/Entry")
	public String loadVisit(Model model) 
	{	
		return "Entry";
	}
	
	@RequestMapping(value="/entry.do", method=RequestMethod.POST)
	public String EntryVisit(Model model,
			@RequestParam int ptid,
			@RequestParam int visitnum,
			@RequestParam Character packet,
			@RequestParam String formid,
			@RequestParam int formver)
	{
		System.out.print("A request is made to access [ptid:"+ptid+" - Visit#"+visitnum+" - form:"+packet+formid+"] in modification.");
		Header header = null;
		if(ptid!=0 && visitnum!=0)//existing visit-form
		{
			header = (Header)entryservice.retrieveFormDetails(ptid, visitnum, packet, formid, formver);
			if(header==null)
			{
				System.err.print("Impossible to retrieve the Header with the query [ptid:"+ptid+" - Visit#"+visitnum+" - form:"+packet+formid+"], manage the error properly...");
				return null;
			}
			System.out.print(header.getDetailsid());
		}
		else//creation
		{
			header = new Header();//here ptid - visit num and date are not available
			header.setPacket(packet);
			header.setFormid(formid);
		}
		session.setAttribute("header", header);
		if(header.getPacket()=='I')
		{
			switch(header.getFormid())
			{
				case "A1":
					InitialA1 initiala1 = (InitialA1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiala1==null)
						initiala1 = new InitialA1();
					session.setAttribute("initiala1", initiala1);
					return "initiala1";
				case "A2":
					InitialA2 initiala2 = (InitialA2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiala2==null)
						initiala2 = new InitialA2();
					session.setAttribute("initiala2", initiala2);
					return "initiala2";
				case "A3":
					InitialA3 initiala3 = (InitialA3)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiala3==null)
						initiala3 = new InitialA3();
					session.setAttribute("initiala3", initiala3);
					return "initiala3";
				case "A4":
					InitialA4 initiala4 = (InitialA4)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiala4==null)
						initiala4 = new InitialA4();
					session.setAttribute("initiala4", initiala4);
					return "initiala4";
				case "B1":
					InitialB1 initialb1 = (InitialB1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb1==null)
						initialb1 = new InitialB1();
					session.setAttribute("initialb1", initialb1);
					return "initialb1";
				case "B4":
					InitialB4 initialb4 = (InitialB4)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb4==null)
						initialb4 = new InitialB4();
					session.setAttribute("initialb4", initialb4);
					return "initialB4";
				case "B5":
					InitialB5 initialb5 = (InitialB5)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb5==null)
						initialb5 = new InitialB5();
					session.setAttribute("initialb5", initialb5);
					return "initialb5";
				case "B6":
					InitialB6 initialb6 = (InitialB6)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb6==null)
						initialb6 = new InitialB6();
					session.setAttribute("initialb6", initialb6);
					return "initialb6";
				case "B7":
					InitialB7 initialb7 = (InitialB7)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb7==null)
						initialb7 = new InitialB7();
					session.setAttribute("initialb7", initialb7);
					return "initialb7";
				case "B8":
					InitialB8 initialb8 = (InitialB8)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb8==null)
						initialb8 = new InitialB8();
					session.setAttribute("initialb8", initialb8);
					return "initialb8";
				case "B9":
					InitialB9 initialb9 = (InitialB9)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialb9==null)
						initialb9 = new InitialB9();
					session.setAttribute("initialb9", initialb9);
					return "initialb9";
				case "C2":
					InitialC2 initialc2 = (InitialC2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialc2==null)
						initialc2 = new InitialC2();
					session.setAttribute("initialc2", initialc2);
					return "initialc2";
				case "D1":
					InitialD1 initiald1 = (InitialD1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiald1==null)
						initiald1 = new InitialD1();
					session.setAttribute("initiald1", initiald1);
					return "initiald1";
				case "D2":
					InitialD2 initiald2 = (InitialD2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initiald2==null)
						initiald2 = new InitialD2();
					session.setAttribute("initiald2", initiald2);
					return "initiald2";
				case "Z1":
					InitialZ1 initialz1 = (InitialZ1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
					if(initialz1==null)
						initialz1 = new InitialZ1();
					session.setAttribute("initialz1", initialz1);
					return "initialz1";
				default:
					System.err.print("Unknown form ID ["+header.getFormid()+"] manage the error properly...");
					return null;
			}
		}
		else if(header.getPacket()=='F')
		{
			switch(header.getFormid())
			{
			case "A1":
				FollowupA1 followupa1 = (FollowupA1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupa1==null)
					followupa1 = new FollowupA1();
				session.setAttribute("followupa1", followupa1);
				return "followupa1";
			case "A2":
				FollowupA2 followupa2 = (FollowupA2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupa2==null)
					followupa2 = new FollowupA2();
				session.setAttribute("followupa2", followupa2);
				return "followupa2";
			case "A3":
				FollowupA3 followupa3 = (FollowupA3)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupa3==null)
					followupa3 = new FollowupA3();
				session.setAttribute("followupa3", followupa3);
				return "followupa3";
			case "A4":
				FollowupA4 followupa4 = (FollowupA4)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupa4==null)
					followupa4 = new FollowupA4();
				session.setAttribute("followupa4", followupa4);
				return "followupa4";
			case "B1":
				FollowupB1 followupb1 = (FollowupB1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb1==null)
					followupb1 = new FollowupB1();
				session.setAttribute("followupb1", followupb1);
				return "followupb1";
			case "B4":
				FollowupB4 followupb4 = (FollowupB4)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb4==null)
					followupb4 = new FollowupB4();
				session.setAttribute("followupb4", followupb4);
				return "followupB4";
			case "B5":
				FollowupB5 followupb5 = (FollowupB5)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb5==null)
					followupb5 = new FollowupB5();
				session.setAttribute("followupb5", followupb5);
				return "followupb5";
			case "B6":
				FollowupB6 followupb6 = (FollowupB6)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb6==null)
					followupb6 = new FollowupB6();
				session.setAttribute("followupb6", followupb6);
				return "followupb6";
			case "B7":
				FollowupB7 followupb7 = (FollowupB7)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb7==null)
					followupb7 = new FollowupB7();
				session.setAttribute("followupb7", followupb7);
				return "followupb7";
			case "B8":
				FollowupB8 followupb8 = (FollowupB8)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb8==null)
					followupb8 = new FollowupB8();
				session.setAttribute("followupb8", followupb8);
				return "followupb8";
			case "B9":
				FollowupB9 followupb9 = (FollowupB9)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupb9==null)
					followupb9 = new FollowupB9();
				session.setAttribute("followupb9", followupb9);
				return "followupb9";
			case "C1":
				FollowupC1 followupc1 = (FollowupC1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupc1==null)
					followupc1 = new FollowupC1();
				session.setAttribute("followupc1", followupc1);
				return "followupc1";
			case "C2":
				FollowupC2 followupc2 = (FollowupC2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupc2==null)
					followupc2 = new FollowupC2();
				session.setAttribute("followupc2", followupc2);
				return "followupc2";
			case "D1":
				FollowupD1 followupd1 = (FollowupD1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupd1==null)
					followupd1 = new FollowupD1();
				session.setAttribute("followupd1", followupd1);
				return "followupd1";
			case "D2":
				FollowupD2 followupd2 = (FollowupD2)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupd2==null)
					followupd2 = new FollowupD2();
				session.setAttribute("followupd2", followupd2);
				return "followupd2";
			case "Z1":
				FollowupZ1 followupz1 = (FollowupZ1)entryservice.retrieveForm(header.getDetailsid(), header.getPacket(), header.getFormid(), header.getFormver());
				if(followupz1==null)
					followupz1 = new FollowupZ1();
				session.setAttribute("followupz1", followupz1);
				return "followupz1";
			default:
				System.err.print("Unknown form ID ["+header.getFormid()+"] manage the error properly...");
				return null;
			}
		}
		else{
			System.err.print("Unknown Packet ["+header.getFormid()+"]: check the coherence of the DB and manage the error properly...");
			return null;
		}
	}

}
