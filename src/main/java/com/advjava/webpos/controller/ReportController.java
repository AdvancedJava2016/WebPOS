package com.advjava.webpos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.advjava.webpos.dao.ProductDao;
import com.advjava.webpos.dao.PurchaseDao;
import com.advjava.webpos.entity.Purchase;
import com.advjava.webpos.service.ProductService;
import com.advjava.webpos.service.PurchaseService;

@Controller
public class ReportController {
	

	@Autowired
	private PurchaseService purchaseService;
	private ProductService productService;
	
	@RequestMapping(value = "/reportss", method = RequestMethod.GET)
	public String retrieveList(ModelMap modelMap) {
		modelMap.put("productList", productService.getAllProducts());
		return "manageProducts";
	}
}
