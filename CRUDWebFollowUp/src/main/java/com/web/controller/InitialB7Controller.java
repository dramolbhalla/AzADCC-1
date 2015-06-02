package com.web.controller;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB7;
import com.web.service.InitialB7Service;

@Controller
public class InitialB7Controller {
	@Autowired
	private InitialB7Service initialB7service;
	@RequestMapping("/InitialB7")
	public String loadInitialB7(Map<String, Object> map) {
		InitialB7 initialb7 = new InitialB7();
		map.put("initialb7", initialb7);
		return "initialb7";
	}
	
	@RequestMapping(value="/initialb7.do", method=RequestMethod.POST)
	public String FollowUpVisitB7(@ModelAttribute InitialB7 initialb7, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
	  
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + initialb7.getBills() + initialb7.getGames()+ initialb7.getMealprep());
			initialB7service.add(initialb7);
			
		}
		
		
		return "B7";
	}

}

