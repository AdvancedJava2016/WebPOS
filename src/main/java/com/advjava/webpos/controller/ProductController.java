package com.advjava.webpos.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.Cart;
import com.advjava.webpos.entity.Product;
import com.advjava.webpos.entity.Purchase;
import com.advjava.webpos.service.ProductService;
import com.advjava.webpos.service.PurchaseService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	
	@Autowired
	PurchaseService purchaseService;
	
	Product product;
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String retrieveList(ModelMap modelMap) {
		
		modelMap.put("productList", productService.getAllProducts());
		return "productspage1";
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
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addcart", method = RequestMethod.POST)
	public String addcart(@ModelAttribute("cart") Cart c, HttpSession session, ModelMap modelMap){
		List<Cart> lst = (List<Cart>) session.getAttribute("cart");
		List<Product> prodlist = productService.getAllProducts();
		if(lst==null){
			lst = new ArrayList<Cart>();
			lst.add(c);
			System.out.println("******************************"+c.getName());
		}else{
			boolean flag = false;
			for(Cart cart : lst){
				if(cart.getID() == c.getID()){
					cart.setQuantity(cart.getQuantity()+c.getQuantity());
					flag = true;
					break;
				}
			}
			if(flag == false){
				lst.add(c);
			}
		}
		for(Product prod : prodlist){
			for(Cart cart: lst){
				if(prod.getId() == cart.getID()){
					prod.setQuantity(prod.getQuantity() - cart.getQuantity());
				}
			}
		}
		modelMap.put("productList", prodlist);
		session.setAttribute("cart", lst);
		session.setAttribute("total", getTotal(lst));
		return "productspage2";
	}
	
	public float getTotal(List<Cart> lst){
		float total = 0;
		for(Cart cart : lst){
			total+=(cart.getQuantity()*cart.getPrice());
		}
		return total;		
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam(value = "id")int id, HttpSession session, @ModelAttribute("cart") Cart c, ModelMap modelMap){
		modelMap.put("productList", productService.getAllProducts());
		List<Cart> lst = (List<Cart>) session.getAttribute("cart");
		List<Product> prodlist = productService.getAllProducts();
		if(lst!=null){
			for(Cart cart : lst){
				if(cart.getID() == id){
					lst.remove(cart);
					break;
				}
			}
		}
		if(lst!= null){
			for(Product prod : prodlist){
				for(Cart cart: lst){
					if(prod.getId() == cart.getID()){
						prod.setQuantity(prod.getQuantity()-cart.getQuantity());
						break;
					}
				}
			}
		}
		modelMap.put("productList", prodlist);		
		session.setAttribute("cart", lst);
		session.setAttribute("total", getTotal(lst));
		return "productspage2";
	} 
	
	@RequestMapping(value = "/checkout", method = { RequestMethod.POST })
	public String checkout (ModelMap modelMap, HttpSession session,@ModelAttribute("cart") Cart c){
		
		Boolean flag = false;
		List<Cart> lst;
		lst = (List<Cart>) session.getAttribute("cart");
		int userid = (Integer) session.getAttribute("userID");
		float superTotal = (Float) session.getAttribute("total");
		String products ="";
		if(lst != null){
			System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++");
			Purchase pur = new Purchase();
			double total_price = 0;
			for(Cart cart : lst){
				total_price+=(cart.getPrice()*cart.getQuantity());
				products = products + Integer.toString(cart.getID()) +"-" + Integer.toString(cart.getQuantity()) + "|";
				//products: ProductID-ProductQuantity|ProductID-ProductQuantity|ProductID-ProductQuantity|
				
				Product p = new Product();
				p.setId(cart.getID());
				p.setpName(cart.getName());
				p.setPrice(cart.getPrice());
				p.setQuantity(productService.getProductByID(cart.getID()).getQuantity() - cart.getQuantity());
				productService.updateProduct(p);
				
			}
			pur.setTotal_price(total_price);
			pur.setCashier_id(userid);
			pur.setProducts(products);
			lst.clear();
			superTotal = 0;
			session.setAttribute("total", superTotal);
			session.setAttribute("cart", lst);
			
			System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++"+pur.getTotal_price());
			System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++"+pur.getCashier_id());
			if (purchaseService.createPurchase(pur) != null) {
				modelMap.put("productList", productService.getAllProducts());
				return "productspage2";
			} else {
				modelMap.put("productList", productService.getAllProducts());
				modelMap.put("error", "Edit Product Failed!");
				return "productspage2";
			}
			
			
		}		
			return "productspage2";
	
	}
}
