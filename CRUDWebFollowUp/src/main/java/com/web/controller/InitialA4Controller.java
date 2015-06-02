package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialA4;
import com.web.service.InitialA4Service;

@Controller
public class InitialA4Controller {
	@Autowired
	private InitialA4Service initialA4service;
	InitialA4 initiala4v = new InitialA4();
	
	@RequestMapping("/InitialA4")
	public String loadInitialA4(Model model)
	{		
		    model.addAttribute("initiala4", new InitialA4()); 
			return "initiala4";
	}
	
	@RequestMapping("/InitialA42")
	public String loadInitialA42(Model model) {
			return "initiala42";
	}
	@RequestMapping(value="/initiala4.do", method=RequestMethod.POST)
	public String InitialVisitA4(Model model,
			@RequestParam("curmed") int curmed,
			@RequestParam("d03428") int d03428,
			@RequestParam("d00749") int d00749,
			@RequestParam("d03849") int d03849,
			@RequestParam("d00023") int d00023,
			@RequestParam("d00168") int d00168,
			@RequestParam("d00689") int d00689,
			@RequestParam("d00004") int d00004,
			@RequestParam("d04105") int d04105,
			@RequestParam("d00730") int d00730,
			@RequestParam("d00181") int d00181,
			@RequestParam("d03689") int d03689,
			@RequestParam("d03473") int d03473,
			@RequestParam("d03847") int d03847,
			@RequestParam("d04380") int d04380,
			@RequestParam("d03827") int d03827,
			@RequestParam("d04332") int d04332,
			@RequestParam("d00197") int d00197,
			@RequestParam("d04258") int d04258,
			@RequestParam("d00541") int d00541,
			@RequestParam("d00413") int d00413,
			@RequestParam("d00210") int d00210,
			@RequestParam("d00045") int d00045,
			@RequestParam("d04099") int d04099,
			@RequestParam("d05355") int d05355,
			@RequestParam("d00013") int d00013,
			@RequestParam("d03128") int d03128,
			@RequestParam("d04812") int d04812,
			@RequestParam("d04749") int d04749,
			@RequestParam("d00537") int d00537,
			@RequestParam("d04824") int d04824,
			@RequestParam("d03824") int d03824,
			@RequestParam("d04040") int d04040,
			@RequestParam("d00563") int d00563,
			@RequestParam("d00236") int d00236,
			@RequestParam("d01296") int d01296,
			@RequestParam("d04283") int d04283,
			@RequestParam("d04611") int d04611,
			@RequestParam("d00070") int d00070,
			@RequestParam("d03182") int d03182,
			@RequestParam("d04750") int d04750,
			@RequestParam("d00246") int d00246,
			@RequestParam("d00253") int d00253,
			@RequestParam("d03052") int d03052,
			@RequestParam("d04017") int d04017,
			@RequestParam("d00278") int d00278,
			@RequestParam("d00732") int d00732,
			@RequestParam("d00149") int d00149,
			@RequestParam("d03821") int d03821,
			@RequestParam("d00280") int d00280,
			@RequestParam("d04532") int d04532,
			@RequestParam("d04899") int d04899,
			@RequestParam("d03807") int d03807,
			@RequestParam("d00134") int d00134,
			@RequestParam("d04025") int d04025,
			@RequestParam("d04289") int d04289,
			@RequestParam("d00019") int d00019)
	{	

		initiala4v.setCurmed(curmed);
		initiala4v.setD03428(d03428);
		initiala4v.setD00749(d00749);
		initiala4v.setD03849(d03849);
		initiala4v.setD00023(d00023);
		initiala4v.setD00168(d00168);
		initiala4v.setD00689(d00689);
		initiala4v.setD00004(d00004);
		initiala4v.setD04105(d04105);
		initiala4v.setD00730(d00730);
		initiala4v.setD00181(d00181);
		initiala4v.setD03689(d03689);
		initiala4v.setD03473(d03473);
		initiala4v.setD03847(d03847);
		initiala4v.setD04380(d04380);
		initiala4v.setD03827(d03827);
		initiala4v.setD04332(d04332);
		initiala4v.setD00197(d00197);
		initiala4v.setD04258(d04258);
		initiala4v.setD00541(d00541);
		initiala4v.setD00413(d00413);
		initiala4v.setD00210(d00210);
		initiala4v.setD00045(d00045);
		initiala4v.setD04099(d04099);
		initiala4v.setD05355(d05355);
		initiala4v.setD00013(d00013);
		initiala4v.setD03128(d03128);
		initiala4v.setD04812(d04812);
		initiala4v.setD04749(d04749);
		initiala4v.setD00537(d00537);
		initiala4v.setD04824(d04824);
		initiala4v.setD03824(d03824);
		initiala4v.setD04040(d04040);
		initiala4v.setD00563(d00563);
		initiala4v.setD00236(d00236);
		initiala4v.setD01296(d01296);
		initiala4v.setD04283(d04283);
		initiala4v.setD04611(d04611);
		initiala4v.setD00070(d00070);
		initiala4v.setD03182(d03182);
		initiala4v.setD04750(d04750);
		initiala4v.setD00246(d00246);
		initiala4v.setD00253(d00253);
		initiala4v.setD03052(d03052);
		initiala4v.setD04017(d04017);
		initiala4v.setD00278(d00278);
		initiala4v.setD00732(d00732);
		initiala4v.setD00149(d00149);
		initiala4v.setD03821(d03821);
		initiala4v.setD00280(d00280);
		initiala4v.setD04532(d04532);
		initiala4v.setD04899(d04899);
		initiala4v.setD03807(d03807);
		initiala4v.setD00134(d00134);
		initiala4v.setD04025(d04025);
		initiala4v.setD04289(d04289);
		initiala4v.setD00019(d00019);
		
		model.addAttribute("initiala42", new InitialA4()); 
		return "initiala42";
	}
	
	@RequestMapping(value="/initiala42.do", method=RequestMethod.POST)
	public String InitialVisitA42(Model model,			
		@RequestParam("d00314") int  d00314,
		@RequestParam("d00051") int d00051,		
		@RequestParam("d00321") int d00321,		
		@RequestParam("d00497") int d00497,		
		@RequestParam("d00325") int d00325,		
		@RequestParam("d00328") int d00328,		
		@RequestParam("d04514") int d04514,		
		@RequestParam("d03157") int d03157,		
		@RequestParam("d00345") int d00345,		
		@RequestParam("d00348") int d00348,		
		@RequestParam("d04220") int d04220,		
		@RequestParam("d00021") int d00021,		
		@RequestParam("d04537") int d04537,		
		@RequestParam("d04851") int d04851,		
		@RequestParam("d00880") int d00880,		
		@RequestParam("d00746") int d00746,		
		@RequestParam("d04121") int d04121,		
		@RequestParam("d00386") int d00386,		
		@RequestParam("d03826") int d03826,		
		@RequestParam("d00395") int d00395,		
		@RequestParam("d04113") int d04113,		
		@RequestParam("d03181") int d03181,		
		@RequestParam("d00022") int d00022,
		@RequestParam("d00910") int d00910,		
		@RequestParam("d00049") int d00049,		
		@RequestParam("d00426") int d00426,		
		@RequestParam("d00170") int d00170,		
		@RequestParam("d00425") int d00425,		
		@RequestParam("d03137") int d03137,		
		@RequestParam("d03129") int d03129,
		@RequestParam("d04420") int d04420,		
		@RequestParam("d01021") int d01021,		
		@RequestParam("d00241") int d00241,		
		@RequestParam("d04418") int d04418,		
		@RequestParam("d00015") int d00015,		
		@RequestParam("d03050") int d03050,		
		@RequestParam("d04058") int d04058,		
		@RequestParam("d03140") int d03140,		
		@RequestParam("d03145") int d03145,		
		@RequestParam("d05350") int d05350,		
		@RequestParam("d01018") int d01018,		
		@RequestParam("d00412") int d00412,		
		@RequestParam("d04523") int d04523,		
		@RequestParam("d00405") int d00405,		
		@RequestParam("dspec1") String dspec1,
		@RequestParam("dd1") int dd1,
		@RequestParam("dspec2") String dspec2,
		@RequestParam("dd2") int dd2,
		@RequestParam("dspec3") String dspec3,
		@RequestParam("dd3") int dd3,
		@RequestParam("dspec4") String dspec4,
		@RequestParam("dd4") int dd4,
		@RequestParam("dspec5") String dspec5,
		@RequestParam("dd5") int dd5,
		@RequestParam("dspec6") String dspec6,
		@RequestParam("dd6") int dd6,
		@RequestParam("dspec7") String dspec7,
		@RequestParam("dd7") int dd7,
		@RequestParam("dspec8") String dspec8,
		@RequestParam("dd8") int dd8,
		@RequestParam("dspec9") String dspec9,
		@RequestParam("dd9") int dd9,
		@RequestParam("dspec10") String dspec10,
		@RequestParam("dd10") int dd10)
	{
		
		initiala4v.setD00314(d00314);
		initiala4v.setD00051(d00051);		
		initiala4v.setD00321(d00321);
		initiala4v.setD00497(d00497);
		initiala4v.setD00325(d00325);
		initiala4v.setD00328(d00328);
		initiala4v.setD04514(d04514);		
		initiala4v.setD03157(d03157);		
		initiala4v.setD00345(d00345);		
		initiala4v.setD00348(d00348);		
		initiala4v.setD04220(d04220);		
		initiala4v.setD00021(d00021);		
		initiala4v.setD04537(d04537);		
		initiala4v.setD04851(d04851);		
		initiala4v.setD00880(d00880);		
		initiala4v.setD00746(d00746);		
		initiala4v.setD04121(d04121);		
		initiala4v.setD00386(d00386);		
		initiala4v.setD03826(d03826);		
		initiala4v.setD00395(d00395);		
		initiala4v.setD04113(d04113);		
		initiala4v.setD03181(d03181);		
		initiala4v.setD00022(d00022);		
		initiala4v.setD00910(d00910);		
		initiala4v.setD00049(d00049);		
		initiala4v.setD00426(d00426);		
		initiala4v.setD00170(d00170);		
		initiala4v.setD00425(d00425);		
		initiala4v.setD03137(d03137);		
		initiala4v.setD03129(d03129);		
		initiala4v.setD04420(d04420);		
		initiala4v.setD01021(d01021);		
		initiala4v.setD00241(d00241);		
		initiala4v.setD04418(d04418);		
		initiala4v.setD00015(d00015);		
		initiala4v.setD03050(d03050);		
		initiala4v.setD04058(d04058);		
		initiala4v.setD03140(d03140);		
		initiala4v.setD03145(d03145);		
		initiala4v.setD05350(d05350);		
		initiala4v.setD01018(d01018);		
		initiala4v.setD00412(d00412);		
		initiala4v.setD04523(d04523);		
		initiala4v.setD00405(d00405);		
		initiala4v.setDspec1(dspec1);
		initiala4v.setDd1(dd1);
		initiala4v.setDspec2(dspec2);
		initiala4v.setDd2(dd2);
		initiala4v.setDspec3(dspec3);
		initiala4v.setDd3(dd3);
		initiala4v.setDspec4(dspec4);
		initiala4v.setDd4(dd4);
		initiala4v.setDspec5(dspec5);
		initiala4v.setDd5(dd5);
		initiala4v.setDspec6(dspec6);
		initiala4v.setDd6(dd6);
		initiala4v.setDspec7(dspec7);
		initiala4v.setDd7(dd7);
		initiala4v.setDspec8(dspec8);
		initiala4v.setDd8(dd8);
		initiala4v.setDspec9(dspec9);
		initiala4v.setDd9(dd9);
		initiala4v.setDspec10(dspec10);
		initiala4v.setDd10(dd10);
		
		
		initialA4service.add(initiala4v);
		return "end";
	}

}
