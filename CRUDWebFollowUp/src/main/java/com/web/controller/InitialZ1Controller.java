package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.web.model.InitialZ1;
import com.web.service.InitialZ1Service;

@Controller
public class InitialZ1Controller 
{
	@Autowired
	private InitialZ1Service initialZ1service;
	InitialZ1 initialz1v = new InitialZ1();
	
	@RequestMapping("/InitialZ1")
	public String loadInitialZ1(Map<String, Object> map)
	{		
		InitialZ1 initialz1 = new InitialZ1();
		map.put("initialz1", initialz1);
		return "initialz1";
	}
	
	@RequestMapping(value="/initialz1.do", method=RequestMethod.POST)
	public String InitialVisitZ1(@ModelAttribute InitialZ1 initialz1, BindingResult result, @RequestParam String action,Map<String, Object> map)
	{	
		System.out.println("Inserting Z1 values");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Insert Z1 values");
			initialZ1service.add(initialz1);
		}
		
		
		return "Z1";
	}
}
