package com.advjava.webpos.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.User;
import com.advjava.webpos.service.UserService;
import com.advjava.webpos.service.ProductsService;
import com.advjava.webpos.entity.Products;

@Controller
public class ProductsController {
	@Autowired
	UserService userService;
	ProductsService productService;
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String home(ModelMap modelMap) {
		
		modelMap.put("productList", productService.getAll());
		return "manageProducts";
	}

}
