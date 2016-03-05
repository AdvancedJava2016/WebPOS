package com.advjava.webpos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.advjava.webpos.dao.ProductDao;
import com.advjava.webpos.entity.Product;

@Transactional
@Service(value = "productsService")
public class ProductService {

	@Autowired
	private ProductDao productDao;

	@Transactional(readOnly = true)
	public Product getProduct(Integer id) {

		return productDao.getProduct(id);
	}

	@Transactional(readOnly = true)
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public Product createProduct(Product p) {
		return productDao.createProduct(p);
	}

	public void deleteProduct(Integer id) {
		productDao.deleteProduct(id);
	}

	public boolean checkProduct(String product) {
		if (productDao.getProductByProductName(product) != null) {
			return true;
		} else {
			return false;
		}
	}

	public Product updateProduct(Product p) {
		return productDao.updateProduct(p);
	}

	

}
