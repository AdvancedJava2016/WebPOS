package com.advjava.webpos.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.advjava.webpos.entity.Product;
import com.advjava.webpos.entity.Purchase;
import com.advjava.webpos.model.SoldProduct;
import com.advjava.webpos.service.ProductService;
import com.advjava.webpos.service.PurchaseService;
import com.advjava.webpos.service.UserService;

import org.springframework.jdbc.core.*;

@Controller
public class PurchaseController {
	@Autowired
	ProductService productService;

	@Autowired
	PurchaseService purchaseService;

	@Autowired
	UserService userService;

	Product product;

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String retrieveList(ModelMap modelMap) {
		List<Purchase> purchases = purchaseService.getAll();
		HashMap<Integer, Integer> id_qty = new HashMap<Integer, Integer>();
		for (Purchase p : purchases) {
			p.getProducts();
			String[] products = p.getProducts().split("\\|");
			for (String product : products) {
				String[] s = product.split("-");
				int prod_id = Integer.parseInt(s[0]);
				int qty = Integer.parseInt(s[1]);
				if (id_qty.containsKey(prod_id))
					id_qty.put(prod_id, id_qty.get(prod_id) + qty);
				else
					id_qty.put(prod_id, qty);
			}
		}

		List<SoldProduct> soldProds = new ArrayList<SoldProduct>();
		for (HashMap.Entry<Integer, Integer> entry : id_qty.entrySet()) {
			Integer key = entry.getKey();
			Integer value = entry.getValue();
			//System.out.println("ID " + key + " | QTY " + value);
			SoldProduct s = new SoldProduct();
			s.setProd_id(key);
			//System.out.println("a");
			s.setName(productService.getProductByID(key).getpName());
			//System.out.println("b");
			s.setQty(value);
			//System.out.println("c");
			s.setTotal(productService.getProductByID(key).getPrice() * value);
			//System.out.println(s.id + s.name + s.qty + " " + s.total);
			soldProds.add(s);
		}

		for (SoldProduct s : soldProds) {
			System.out.println(s.getName() + s.getProd_id() + s.getQty() + s.getTotal());
		}

		modelMap.put("productReportList", soldProds);

	
		/*HashMap<Integer, Double> income_cashier = new HashMap<Integer, Double>();
		for (Purchase p : purchases) {
			int cashier_id = p.getCashier_id();
			double total = p.getTotal_price();
			if (income_cashier.containsKey(cashier_id)) {
				double existing_total = income_cashier.get(cashier_id);
				income_cashier.put(cashier_id, total + existing_total);
			} else {
				income_cashier.put(cashier_id, total);
			}

		}
*/
		modelMap.put("income", purchaseService.getIncome());
		return "reports";
	}
}
