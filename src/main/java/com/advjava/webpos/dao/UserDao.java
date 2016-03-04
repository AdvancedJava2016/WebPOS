package com.advjava.webpos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.advjava.webpos.dao.AbstractDao;
import com.advjava.webpos.entity.User;

@Repository(value = "userDao")
public class UserDao extends AbstractDao<User, Integer> {

	public User getUser(Integer id) {
		return getByKey(id);
	}

	public List<User> getAll() {
		return getAllEntities();
	}

	public User createUser(User u) {
		Integer id = create(u);
		return getUser(id);
	}

	public void deleteUser(Integer id) {
		delete(id);
		
	}

	public User getUserByUsername(String username) {
		Criteria criteria = createEntityCriteria("u");
		criteria.add(Restrictions.eq("u.username", username));
		return (User) criteria.uniqueResult();
	}

	public User updateUser(User u) {
		update(u);

		return getUser(u.getId());
	}
}