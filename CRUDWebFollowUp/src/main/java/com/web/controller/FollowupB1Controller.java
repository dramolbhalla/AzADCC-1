package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB1;
import com.web.model.FollowupA1;
import com.web.service.FollowupB1Service;



@Controller
public class FollowupB1Controller {
	@Autowired
	private FollowupB1Service followupB1service;
	
	@RequestMapping("/FollowupB1")
	public String loadFollowupB1(Map<String, Object> map) {
		FollowupB1 followupb1 = new FollowupB1();
		map.put("followupb1", followupb1);
		
		return "followupb1";
	}
	
	@RequestMapping(value="/followupb1.do", method=RequestMethod.POST)
	public String FollowUpVisitB1(@ModelAttribute FollowupB1 followupb1, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
	  
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + followupb1.getHearaid());
			followupB1service.add(followupb1);
			System.out.println("Coming here inside ifff" + followupb1.getHeight());
		}
		
		
		return "B1";
	}

}
