package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB1;
import com.web.service.InitialB1Service;



@Controller
public class InitialB1Controller {
	@Autowired
	private InitialB1Service initialB1service;
	
	@RequestMapping("/InitialB1")
	public String loadInitialB1(Map<String, Object> map) {
		InitialB1 initialb1 = new InitialB1();
		map.put("initialb1", initialb1);
		
		return "initialb1";
	}
	
	@RequestMapping(value="/initialb1.do", method=RequestMethod.POST)
	public String FollowUpVisitB1(@ModelAttribute InitialB1 initialb1, BindingResult result, 
			@RequestParam String action,
			Map<String, Object> map) 
	
	{
	  
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + initialb1.getHearaid());
			initialB1service.add(initialb1);
			System.out.println("Coming here inside ifff" + initialb1.getHeight());
		}
		
		
		return "B1";
	}

}
