package com.advjava.webpos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "purchase")
public class Purchase implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;

	@Column(name = "cashier_id")
	private Integer cashier_id;
	
	@Column(name = "products")
	private String products;
	
	
	public String getProducts() {
		return products;
	}


	public void setProducts(String products) {
		this.products = products;
	}


	@Column(name = "total_price")
	private double total_price;

	@Column(name = "createdDate", updatable = false, columnDefinition = "TIMESTAMP default CURRENT_TIMESTAMP")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdDate;
	
	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getCashier_id() {
		return cashier_id;
	}


	public void setCashier_id(Integer cashier_id) {
		this.cashier_id = cashier_id;
	}


	public double getTotal_price() {
		return total_price;
	}


	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}

}
