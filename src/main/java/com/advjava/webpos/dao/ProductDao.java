package com.advjava.webpos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.advjava.webpos.entity.Product;

@Repository(value = "productDao")
public class ProductDao extends AbstractDao<Product, Integer> {

	public Product getProduct(Integer id) {
		return getByKey(id);
	}

	public List<Product> getAllProducts() {
		return getAllEntities();
	}

	public Product createProduct(Product p) {
		Integer id = create(p);
		return getProduct(id);
	}

	public void deleteProduct(Integer id) {
		delete(id);
		
	}

	public Product getProductByProductName(String name) {
		Criteria criteria = createEntityCriteria("p");
		criteria.add(Restrictions.eq("p.pName", name));
		return (Product) criteria.uniqueResult();
	}

	public Product updateProduct(Product p) {
		update(p);

		return getProduct(p.getId());
	}
}
