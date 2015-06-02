package com.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupZ1;
import com.web.service.FollowupZ1Service;

@Controller
public class FollowupZ1Controller 
{
	@Autowired
	private FollowupZ1Service followupZ1service;
	FollowupZ1 followupZ1v = new FollowupZ1();
	
	@RequestMapping("/FollowupZ1")
	public String loadFollowupZ1(Map<String, Object> map)
	{		
		FollowupZ1 followupz1 = new FollowupZ1();
		map.put("followupz1", followupz1);
		return "followupz1";
	}
	
	@RequestMapping(value="/followupz1.do", method=RequestMethod.POST)
	public String FollowUpVisitZ1(@ModelAttribute FollowupZ1 followupz1, BindingResult result, @RequestParam String action,Map<String, Object> map)
	{	
		System.out.println("Inserting Z1 values");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Insert Z1 values");
			followupZ1service.add(followupz1);
		}

		return "Z1";
	}
}
