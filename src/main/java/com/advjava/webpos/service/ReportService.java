package com.advjava.webpos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.advjava.webpos.dao.ReportDao;
import com.advjava.webpos.entity.Product;

@Transactional
@Service(value = "reportService")
public class ReportService {

	@Autowired
	private ReportDao reportDao;

	@Transactional(readOnly = true)
	public List<Product> getProductReport() {
		return reportDao.getProductReport();
	}
}