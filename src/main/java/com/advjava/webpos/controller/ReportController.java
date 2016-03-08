package com.advjava.webpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.advjava.webpos.service.ReportService;

@Controller
public class ReportController {
	
	
	@RequestMapping(value = "/reports", method = RequestMethod.GET)
	public String page2(ModelMap modelMap) {
		
		modelMap.put("reportList", "");
		return "reports";
	}
}
