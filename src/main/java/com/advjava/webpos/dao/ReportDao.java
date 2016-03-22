package com.advjava.webpos.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.advjava.webpos.entity.Product;

@Repository(value = "reportDao")
public class ReportDao extends AbstractDao<Product, Integer> {

	public List<Product> getProductReport() {
		return getAllEntities();
	}

}
