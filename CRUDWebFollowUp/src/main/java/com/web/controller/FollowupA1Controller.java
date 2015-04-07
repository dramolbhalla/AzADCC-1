package com.web.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.model.FollowupA1;
import com.web.service.FollowupA1Service;

@Controller
public class FollowupA1Controller {
	@Autowired
	private FollowupA1Service followupA1service;
	
	@RequestMapping("/FollowupA1")
	public String loadFollowupA1(Map<String, Object> map) {
		FollowupA1 followupa1v = new FollowupA1();
		map.put("followupa1", followupa1v);
		//map.put("transactionList", transactionService.getAllTransaction());
		return "followupa1";
	}
	
	@RequestMapping(value="/followupa1.do", method=RequestMethod.POST)
	public String FollowUpVisitA1(@ModelAttribute FollowupA1 followupa1, BindingResult result, @RequestParam String action,Map<String, Object> map) 
	
	{
	  //  System.out.println("Coming here" + request.getParameter("month"));
	  //  System.out.println("Coming here" + request.getParameter("option"));
		System.out.println("Coming here outside if");
		if(action.toLowerCase().equals("submit"))
		{
			System.out.println("Coming here inside if" + followupa1.getBirthyr());
			followupA1service.add(followupa1);
			System.out.println("Coming here inside ifff" + followupa1.getBirthyr());
		}
		
		
		return "A1";
	}

}
