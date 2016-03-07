package com.advjava.webpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.Product;
import com.advjava.webpos.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	Product product;
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String retrieveList(ModelMap modelMap) {
		
		modelMap.put("productList", productService.getAllProducts());
		return "productspage1";
	}
	
	@RequestMapping(value = "/cashier", method = RequestMethod.GET)
	public String cashierList(ModelMap modelMap) {
		
		modelMap.put("productList", productService.getAllProducts());
		return "cashier";
	}
	
	@RequestMapping("/deleteProduct")
	public String deleteProduct(ModelMap modelMap, @RequestParam(value = "id") Integer id) {
		productService.deleteProduct(id);
		modelMap.put("productList", productService.getAllProducts());
		return "productspage1";
	}
	
	@RequestMapping("/editProduct")
	public String editProduct(ModelMap modelMap, 
			@RequestParam(value="id") Integer id, 
			@RequestParam(value="pName") String pName,
			@RequestParam(value="price") Double price,
			@RequestParam(value="quantity") Integer quantity){
		
		Product p = new Product();
		p.setId(id);
		p.setpName(pName);
		p.setPrice(price);
		p.setQuantity(quantity);
		
		if (productService.updateProduct(p) != null) {
			modelMap.put("productList", productService.getAllProducts());
			return "productspage1";
		} else {
			modelMap.put("error", "Edit Product Failed!");
			return "productspage1";
		}
		
	}
	
	@RequestMapping(value = "/addProduct", method = { RequestMethod.POST })
	public String addProduct(ModelMap modelMap, 
			@RequestParam(value="pName") String pName,
			@RequestParam(value="price") Double price,
			@RequestParam(value="quantity") Integer quantity){
		
		Product p = new Product();
		p.setpName(pName);
		p.setPrice(price);
		p.setQuantity(quantity);
		

		if (productService.addProduct(p) != null) {
			modelMap.put("productList", productService.getAllProducts());
			return "productspage1";
		} else {
			modelMap.put("error", "Edit Product Failed!");
			return "productspage1";
		}
	}
	

}
