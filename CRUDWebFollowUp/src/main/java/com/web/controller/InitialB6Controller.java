package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB6;
import com.web.service.InitialB6Service;

@Controller
public class InitialB6Controller {
	@Autowired
	private InitialB6Service initialB6service;
	
	@RequestMapping("/InitialB6")
	public String loadInitialB6(Map<String, Object> map) {
		InitialB6 initialb6 = new InitialB6();
		map.put("initialb6", initialb6);
		return "initialb6";
	}
	
	@RequestMapping(value="/initialb6.do", method=RequestMethod.POST)
	public String InitialVisitB6(@ModelAttribute InitialB6 initialb6, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
		System.out.println("Coming here outside if nogds" + initialb6.getNogds());
		if(initialb6.getNogds() == 1)
		{
			
			initialb6.setGds(88);
		}
		else
		{
			int sum = initialb6.getSatis() + initialb6.getDropact() +initialb6.getEmpty() + initialb6.getAfraid()+ initialb6.getBetter() + 
			initialb6.getBored() + initialb6.getEnergy() + initialb6.getHappy() + initialb6.getHelpless() + initialb6.getHopeless()+
			initialb6.getMemprob() + initialb6.getSpirits() + initialb6.getStayhome() + initialb6.getWondrful() + initialb6.getWrthless();
			
			initialb6.setGds(sum);
		}
	  
		System.out.println("Coming here outside if" + initialb6.getGds());
		if(action.toLowerCase().equals("submit"))
		{
			
			
			initialB6service.add(initialb6);
			
		}
			
		return "B6";
	}

}
