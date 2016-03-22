package com.advjava.webpos.controller;
import com.advjava.webpos.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.Product;
import com.advjava.webpos.entity.User;
import com.advjava.webpos.service.ProductService;

import java.util.List;

@Controller
public class ReportController {
	
	@Autowired
	ProductService productService;
	Product product;
	
	
	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String retrieveList(ModelMap modelMap) {
		
		modelMap.put("productReport", productService.getAllProducts());
		
		return "report";
	}
	
	
}
