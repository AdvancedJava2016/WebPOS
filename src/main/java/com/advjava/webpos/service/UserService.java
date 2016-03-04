package com.advjava.webpos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.advjava.webpos.dao.UserDao;
import com.advjava.webpos.entity.User;

@Transactional
@Service(value = "userService")
public class UserService {

	@Autowired
	private UserDao userDao;

	@Transactional(readOnly = true)
	public User getUser(Integer id) {

		return userDao.getUser(id);
	}

	@Transactional(readOnly = true)
	public List<User> getAll() {
		return userDao.getAll();
	}

	public User createUser(User u) {
		return userDao.createUser(u);
	}

	public void deleteUser(Integer id) {
		userDao.deleteUser(id);
	}

	public boolean checkUsername(String username) {
		if (userDao.getUserByUsername(username) != null) {
			return true;
		} else {
			return false;
		}
	}

	public User checkCredentials(String username, String password) {
		User u = userDao.getUserByUsername(username);
		if (u != null) {
			if (u.getPassword().equals(password)) {
				return u;
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	public User updateUser(User u) {
		return userDao.updateUser(u);
	}

	public User getByEmail(String username) {
		User u = userDao.getUserByUsername(username);
		if (u != null) {
			return u;
		} else {
			return null;
		}
	}
}
