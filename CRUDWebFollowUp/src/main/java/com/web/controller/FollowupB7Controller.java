package com.web.controller;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB7;
import com.web.service.FollowupB7Service;

@Controller
public class FollowupB7Controller {
	@Autowired
	private FollowupB7Service followupB7service;
	@RequestMapping("/FollowupB7")
	public String loadFollowupB7(Map<String, Object> map) {
		FollowupB7 followupb7 = new FollowupB7();
		map.put("followupb7", followupb7);
		return "followupb7";
	}
	
	@RequestMapping(value="/followupb7.do", method=RequestMethod.POST)
	public String FollowUpVisitB7(@ModelAttribute FollowupB7 followupb7, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
	  
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + followupb7.getBills() + followupb7.getGames()+ followupb7.getMealprep());
			followupB7service.add(followupb7);
			
		}
		
		
		return "B7";
	}

}

