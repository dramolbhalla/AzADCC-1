package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB6;
import com.web.service.FollowupB6Service;

@Controller
public class FollowupB6Controller {
	@Autowired
	private FollowupB6Service followupB6service;
	@RequestMapping("/FollowupB6")
	public String loadFollowupB6(Map<String, Object> map) {
		FollowupB6 followupb6 = new FollowupB6();
		map.put("followupb6", followupb6);
		return "followupb6";
	}
	
	@RequestMapping(value="/followupb6.do", method=RequestMethod.POST)
	public String FollowUpVisitB6(@ModelAttribute FollowupB6 followupb6, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
	  
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + followupb6.getBored() + followupb6.getBetter()+ followupb6.getDropact());
			followupB6service.add(followupb6);
			
		}
		
		
		return "B6";
	}

}
