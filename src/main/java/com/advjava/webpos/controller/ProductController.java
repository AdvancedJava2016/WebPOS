package com.advjava.webpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.advjava.webpos.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String home(ModelMap modelMap) {
		
		modelMap.put("productList", productService.getAllProducts());
		return "manageProducts";
	}

}
