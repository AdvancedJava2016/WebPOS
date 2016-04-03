package com.advjava.webpos.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.advjava.webpos.entity.Purchase;

@Repository(value = "purchaseDao")
public class PurchaseDao extends AbstractDao<Purchase, Integer> {
	
	public Purchase getPurchase(Integer id) {
		return getByKey(id);
	}
	
	public Purchase addPurchase(Purchase p) {
		Integer id = create(p);
		return getPurchase(id);
	}
	public List<Purchase> getAllPurchase() {
		return getAllEntities();
	}


}
