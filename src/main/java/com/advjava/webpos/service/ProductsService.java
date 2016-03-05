package com.advjava.webpos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.advjava.webpos.dao.ProductsDao;
import com.advjava.webpos.entity.Products;

@Transactional
@Service(value = "productsService")
public class ProductsService {

	@Autowired
	private ProductsDao productsDao;

	@Transactional(readOnly = true)
	public Products getProduct(Integer id) {

		return productsDao.getProduct(id);
	}

	@Transactional(readOnly = true)
	public List<Products> getAll() {
		return productsDao.getAll();
	}

	public Products createProduct(Products p) {
		return productsDao.createProduct(p);
	}

	public void deleteProduct(Integer id) {
		productsDao.deleteProduct(id);
	}

	public boolean checkProduct(String product) {
		if (productsDao.getProductByProductName(product) != null) {
			return true;
		} else {
			return false;
		}
	}

	public Products updateProduct(Products p) {
		return productsDao.updateProduct(p);
	}

	

}
