package com.advjava.webpos.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import javax.sql.DataSource;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.advjava.webpos.entity.Purchase;
import com.advjava.webpos.model.Income;

@Repository(value = "purchaseDao")
public class PurchaseDao extends AbstractDao<Purchase, Integer> {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Income> getIncomeReport() {
		List<Income> list = this.jdbcTemplate.query("select u.username, date(p.createdDate) createdDate, "
				+ "sum(p.total_price) as total from purchase p, user u where u.id=p.cashier_id group "
				+ "by cashier_id, createdDate", new RowMapper<Income>() {
			public Income mapRow(ResultSet rs, int rowNum) throws SQLException {
				Income i = new Income();
				i.setCashier(rs.getString("username"));
				i.setDate(rs.getString("createdDate"));
				i.setTotal(rs.getDouble("total"));
				return i;
			}
		});
		
		/*HashMap<String, Income> hashmap = new HashMap<String, Income>();
		for (Income i: list) {
			String date = i.getDate().split(" ")[0];
			double total = i.getTotal();
			if(hashmap.containsKey(date)){
				double total1 = hashmap.get(date).getTotal();
				i.setTotal(total + total1);
				hashmap.put(date, i);
			} else {
				hashmap.put(date, i);
			}
		}
		
		ArrayList<Income> arList = new ArrayList<Income>();

		for(Entry<String, Income> map : hashmap.entrySet()){

		     arList.add(map.getValue());

		}*/
		return list;
	}

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
