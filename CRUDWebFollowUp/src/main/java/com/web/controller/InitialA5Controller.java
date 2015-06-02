package com.web.controller;

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

import com.web.model.InitialA5;
import com.web.service.InitialA5Service;


@Controller
public class InitialA5Controller {
	@Autowired
	private InitialA5Service initialA5service;
	InitialA5 initiala5v = new InitialA5();
	
	@RequestMapping("/InitialA5")
	public String loadInitialA5(Model model)
	{		
		model.addAttribute("initiala5", new InitialA5()); 
		return "initiala5";
	}
	
	@RequestMapping("/InitialA55")
	public String loadInitialA55(Model model) {
			return "initiala55";
	}
	@RequestMapping(value="/initiala5.do", method=RequestMethod.POST)
	public String InitialVisitA5(Model model,
			@RequestParam("tobac30") int tobac30,
			@RequestParam("tobac100") int tobac100,
			@RequestParam("smokyrs") int smokyrs , 
			@RequestParam("packsper") int packsper,
			@RequestParam("quitsmok") int quitsmok,
			@RequestParam("alcoccas") int alcoccas,
			@RequestParam("alcfreq") int alcfreq) 
	{	  		
		initiala5v.setTobac30(tobac30);
		initiala5v.setTobac100(tobac100);
		initiala5v.setSmokyrs(smokyrs);
		initiala5v.setPacksper(packsper);
		initiala5v.setQuitsmok(quitsmok);
		initiala5v.setAlcoccas(alcoccas);
		initiala5v.setAlcfreq(alcfreq);
		model.addAttribute("initiala52", new InitialA5()); 
		return "initiala52";
	}
	
	@RequestMapping(value="/initiala52.do", method=RequestMethod.POST)
	public String InitialVisitA52(Model model,
			@RequestParam("cvhatt") int cvhatt,
			@RequestParam("hattmult") int hattmult,
			@RequestParam("hattyear") int hattyear,
			@RequestParam("cvangio") int cvangio,
			@RequestParam("cvafib") int cvafib,
			@RequestParam("cvbypass") int cvbypass,
			@RequestParam("cvpacdef") int cvpacdef,
			@RequestParam("cvangina") int cvangina,
			@RequestParam("cvhalve") int cvhalve,
			@RequestParam("cvothr") int cvothr,
			@RequestParam("cvothrx") String cvothrx,
			@RequestParam("strokmul") int strokmul,
			@RequestParam("cbtia") int cbtia,
			@RequestParam("strokyr") int strokyr,
			@RequestParam("tiamult") int tiamult,
			@RequestParam("tiayear") int tiayear) 
	{
		
		initiala5v.setCvhatt(cvhatt);
		initiala5v.setHattmult(hattmult);
		initiala5v.setHattyear(hattyear);
		initiala5v.setCvangio(cvangio);
		initiala5v.setCvafib(cvafib);
		initiala5v.setCvbypass(cvbypass);
		initiala5v.setCvpacdef(cvpacdef);
		initiala5v.setCvangina(cvangina);
		initiala5v.setCvhalve(cvhalve);
		initiala5v.setCvothr(cvothr);
		initiala5v.setCvothrx(cvothrx);
		initiala5v.setStrokmul(strokmul);
		initiala5v.setCbtia(cbtia);
		initiala5v.setStrokyr(strokyr);
		initiala5v.setTiamult(tiamult);
		initiala5v.setTiayear(tiayear);
		model.addAttribute("initiala53", new InitialA5()); 
		return "initiala53";
	}
	
	@RequestMapping(value="/initiala53.do", method=RequestMethod.POST)
	public String InitialVisitA53(Model model,
			@RequestParam("pdyr") int pdyr,
			@RequestParam("pd") int pd,
			@RequestParam("pdothryr") int pdothryr,
			@RequestParam("pdothr") int pdothr,
			@RequestParam("seizures") int seizures,
			@RequestParam("tbibrief") int tbibrief,
			@RequestParam("tbiexten") int tbiexten,
			@RequestParam("tbiwolos") int tbiwolos,
			@RequestParam("tbiyear") int tbiyear,
			@RequestParam("tbi") int tbi,
			@RequestParam("diabtype") int diabtype,
			@RequestParam("diabetes") int diabetes,
			@RequestParam("hyperten") int hyperten,
			@RequestParam("hypercho") int hypercho,
			@RequestParam("b12def") int b12def,
			@RequestParam("thyroid") int thyroid,
			@RequestParam("arthtype") int arthtype,
			@RequestParam("arthtypx") String arthtypx,
			@RequestParam("arthupex") int arthupex,
			@RequestParam("arthrit") int arthrit) 
	{
		initiala5v.setPd(pd);
		initiala5v.setPdyr(pdyr);
		initiala5v.setPdothryr(pdothryr);
		initiala5v.setPdothr(pdothr);
		initiala5v.setSeizures(seizures);
		initiala5v.setTbibrief(tbibrief);
		initiala5v.setTbiexten(tbiexten);
		initiala5v.setTbiwolos(tbiwolos);
		initiala5v.setTbiyear(tbiyear);	
		initiala5v.setTbi(tbi);
		initiala5v.setDiabetes(diabetes);
		initiala5v.setDiabtype(diabtype);
		initiala5v.setHyperten(hyperten);
		initiala5v.setHypercho(hypercho);
		initiala5v.setB12def(b12def);
		initiala5v.setThyroid(thyroid);
		initiala5v.setArthtype(arthtype);
		initiala5v.setArthtypx(arthtypx);
		initiala5v.setArthupex(arthupex);
		initiala5v.setArthrit(arthrit);
		model.addAttribute("initiala54", new InitialA5()); 
		return "initiala54";
		
	}
	
	@RequestMapping(value="/initiala54.do", method=RequestMethod.POST)
	public String InitialVisitA54(Model model,
			@RequestParam("incontu") int incontu,
			@RequestParam("incontf") int incontf,
			@RequestParam("apnea") int apnea,
			@RequestParam("rbd") int rbd,
			@RequestParam("insomn") int insomn,
			@RequestParam("orthsleep") int orthsleep,
			@RequestParam("othsleex") String othsleex,
			@RequestParam("alcohol") int alcohol,
			@RequestParam("abusothr") int abusothr,
			@RequestParam("abusx") String abusx,
			@RequestParam("ptsd") int ptsd,
			@RequestParam("bipolar") int bipolar,
			@RequestParam("schiz") int schiz,
			@RequestParam("dep2yrs") int dep2yrs,
			@RequestParam("depothr") int depothr,
			@RequestParam("anxiety") int anxiety,
			@RequestParam("ocd") int ocd,
			@RequestParam("npsydev") int npsydev,
			@RequestParam("psycdis") int psycdis,
			@RequestParam("psycdisx") String psycdisx) 
	{
		initiala5v.setIncontu(incontu);
		initiala5v.setIncontf(incontf);
		initiala5v.setApnea(apnea);
		initiala5v.setRbd(rbd);
		initiala5v.setInsomn(insomn);
		initiala5v.setOrthsleep(orthsleep);
		initiala5v.setOthsleex(othsleex);
		initiala5v.setAlcohol(alcohol);
		initiala5v.setAbusothr(abusothr);
		initiala5v.setAbusx(abusx);
		initiala5v.setPtsd(ptsd);
		initiala5v.setBipolar(bipolar);
		initiala5v.setSchiz(schiz);
		initiala5v.setDep2yrs(dep2yrs);
		initiala5v.setDepothr(depothr);
		initiala5v.setAnxiety(anxiety);
		initiala5v.setOcd(ocd);
		initiala5v.setNpsydev(npsydev);
		initiala5v.setPsycdis(psycdis);
		initiala5v.setPsycdisx(psycdisx);
		initialA5service.add(initiala5v);
		return "A5";
	}

}
