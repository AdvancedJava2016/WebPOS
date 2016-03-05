package com.advjava.webpos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.advjava.webpos.entity.Products;

@Repository(value = "productsDao")
public class ProductsDao extends AbstractDao<Products, Integer> {

	public Products getProduct(Integer id) {
		return getByKey(id);
	}

	public List<Products> getAll() {
		return getAllEntities();
	}

	public Products createProduct(Products p) {
		Integer id = create(p);
		return getProduct(id);
	}

	public void deleteProduct(Integer id) {
		delete(id);
		
	}

	public Products getProductByProductName(String name) {
		Criteria criteria = createEntityCriteria("p");
		criteria.add(Restrictions.eq("p.pName", name));
		return (Products) criteria.uniqueResult();
	}

	public Products updateProduct(Products p) {
		update(p);

		return getProduct(p.getId());
	}
}
