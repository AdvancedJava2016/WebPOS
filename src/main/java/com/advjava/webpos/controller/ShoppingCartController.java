package com.advjava.webpos.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.Cart;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/sp")
public class ShoppingCartController {
	
	@RequestMapping(value = "/form")
	public String index(ModelMap m){
		m.put("cart", new Cart());
		return "form";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addcart", method = RequestMethod.POST)
	public String addcart(@ModelAttribute("cart") Cart c, HttpSession session){
		List<Cart> lst;
		lst = (List<Cart>) session.getAttribute("cart");
		if(lst==null){
			lst = new ArrayList<Cart>();
			lst.add(c);
		}else{
			boolean flag = false;
			for(Cart cart : lst){
				if(cart.getID() == c.getID()){
					cart.setQuantity(cart.getQuantity()+1);
					flag = true;
					break;
				}
			}
			if(flag == false){
				lst.add(c);
			}
		}
		session.setAttribute("cart", lst);
		session.setAttribute("total", getTotal(lst));
		return "cart";
	}
	
	public float getTotal(List<Cart> lst){
		float total = 0;
		for(Cart cart : lst){
			total+=(cart.getQuantity()*cart.getPrice());
		}
		return total;		
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam(value = "id")int id, HttpSession session){
		List<Cart> lst = (List<Cart>) session.getAttribute("cart");
		if(lst!=null){
			for(Cart cart : lst){
				if(cart.getID() == id){
					lst.remove(cart);
					break;
				}
			}
		}
		session.setAttribute("cart", lst);
		session.setAttribute("total", getTotal(lst));
		return "cart";
	} 
	
	
}
