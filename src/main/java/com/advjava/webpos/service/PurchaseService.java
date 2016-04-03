package com.advjava.webpos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.advjava.webpos.dao.PurchaseDao;
import com.advjava.webpos.dao.UserDao;
import com.advjava.webpos.entity.Purchase;
import com.advjava.webpos.entity.User;
import com.advjava.webpos.model.Income;


@Transactional
@Service(value = "purchaseService")
public class PurchaseService {
	@Autowired
	private PurchaseDao purchaseDao;

	@Transactional(readOnly = true)
	public List<Purchase> getAll() {
		return purchaseDao.getAllPurchase();
	}

	public Purchase createPurchase(Purchase p) {
		return purchaseDao.addPurchase(p);
	}

	public List<Income> getIncome() {
		return purchaseDao.getIncomeReport();
	}

}
