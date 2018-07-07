package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.service.LeaseService;

@Controller
@RequestMapping("/room/*")
public class LeaseController {
	private static final Logger logger=LoggerFactory.getLogger(LeaseController.class);
	
	@Inject
	private LeaseService service;
	
	/*@RequestMapping(value="/getAllLease_type", method=RequestMethod.GET)
	public void getAllLease_type(Model model) throws Exception{
		logger.info("show all list~~^^@");
		model.addAttribute("home", service.getAllLease_type());
	}
	
	@RequestMapping(value="/getAllLease_type", method=RequestMethod.GET)
	public void getLease_type(Model model) throws Exception{
		logger.info("show all list~~^^@");
		model.addAttribute("home", service.getAllLease_type());
	}
	*/
	
}
