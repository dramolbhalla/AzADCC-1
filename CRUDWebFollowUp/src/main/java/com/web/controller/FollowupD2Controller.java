package com.web.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.model.FollowupB9;
import com.web.model.FollowupD2;
import com.web.service.FollowupD2Service;

@Controller
public class FollowupD2Controller {
	@Autowired
	private FollowupD2Service followupD2service;
	FollowupD2 followupd2v = new FollowupD2();
	
	@RequestMapping("/FollowupD2")
	public String loadFollowupD2(Model model)
	{		
		model.addAttribute("followupd2", new FollowupD2()); 
			return "followupd2";
	}
	
	@RequestMapping("/FollowupD22")
	public String loadFollowupD22(Model model) {
			return "followupd22";
	}
	@RequestMapping(value="/followupd2.do", method=RequestMethod.POST)
	public String FollowUpVisitD2(Model model,@RequestParam("cancer") int cancer,
			@RequestParam("cancsite") int cancsite,@RequestParam("Diabetes") int diabet , 
			@RequestParam("myocardial") int myoinf,
			@RequestParam("Congestive") int conghrt,
			@RequestParam("atrial") int afibrill,@RequestParam("tension") int hypert,
			@RequestParam("angina") int angina,@RequestParam("choles") int hypchol,
			@RequestParam("B12") int vb12def,@RequestParam("thydis") int thydis) 
	
	{	  		
		followupd2v.setCancer(cancer);
		followupd2v.setCancsite(cancsite);
		followupd2v.setDiabet(diabet);
		followupd2v.setMyoinf(myoinf);
		followupd2v.setConghrt(conghrt);
		followupd2v.setAfibrill(afibrill);
		followupd2v.setHypert(hypert);
		followupd2v.setAngina(angina);
		followupd2v.setHypchol(hypchol);
		followupd2v.setVb12def(vb12def);
		followupd2v.setThydis(thydis);
		model.addAttribute("followupd22", new FollowupD2());
		return "followupd22";
	}
	
	@RequestMapping(value="/followupd22.do", method=RequestMethod.POST)
	public String FollowUpVisitD22(Model model,@RequestParam("arthritis") int arth,@RequestParam("artype") int artype,
			@RequestParam("artypex") String artypex,
			@RequestParam("artupex") int artupex,@RequestParam("artloex") int artloex,
			@RequestParam("artspin") int artspin,@RequestParam("artunkn") int artunkn,
			@RequestParam("phone") int urineinc,@RequestParam("bowel") int bowlic,
			@RequestParam("apnea") int sleepap,@RequestParam("sleep") int remdis,
			@RequestParam("insomnia") int hyposom,
			@RequestParam("sleepoth") int sleepoth,
			@RequestParam("sleeptx") int sleeptx,
			@RequestParam("angioplasty") int angiocp,
			@RequestParam("coronary") int angiopci	
			) 
	{
		
		followupd2v.setArth(arth);
		followupd2v.setArtype(artype);
		followupd2v.setArtypex(artypex);
		followupd2v.setArtupex(artupex);
		followupd2v.setArtloex(artloex);
		followupd2v.setArtspin(artspin);
		followupd2v.setArtunkn(artunkn);
		followupd2v.setUrineinc(urineinc);
		followupd2v.setBowlic(bowlic);
		followupd2v.setSleepap(sleepap);
		followupd2v.setRemdis(remdis);
		followupd2v.setHyposom(hyposom);
		followupd2v.setSleepoth(sleepoth);
		followupd2v.setSleeptx(sleeptx);
		followupd2v.setAngiocp(angiocp);
		followupd2v.setAngiopci(angiopci);		
		followupD2service.add(followupd2v);
		return "D2";
	}

}

