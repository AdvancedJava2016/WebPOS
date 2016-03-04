package com.advjava.webpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advjava.webpos.entity.User;
import com.advjava.webpos.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	// @RequestMapping(value="/login", method = RequestMethod.GET)
	// public String checkCredentials(Model model) {
	// model.addAttribute("message", "Hello World! Login Controller!");
	//
	// return "login";
	// }

	@RequestMapping(value = "/login", method = { RequestMethod.POST })
	public String checkCredentials(ModelMap modelMap, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		if (userService.checkCredentials(username, password) != null) {
			modelMap.put("username", username);
			modelMap.put("userList", userService.getAll());
			return "adminPage";
		} else {
			modelMap.put("error", "Invalid UserName / Password");
			return "login";
		}
	}

	@RequestMapping(value = "/addUser", method = { RequestMethod.POST })
	public String addUser(ModelMap modelMap, @RequestParam(value = "firstName") String fName,
			@RequestParam(value = "lastName") String lName, @RequestParam(value = "role") String role,
			@RequestParam(value = "username") String username, @RequestParam(value = "password") String password) {

		User u = new User();
		u.setfName(fName);
		u.setlName(lName);
		u.setUsername(username);
		u.setPassword(password);
		u.setRole(role);

		if (userService.createUser(u) != null) {
			modelMap.put("userList", userService.getAll());
			return "adminPage";
		} else {
			modelMap.put("error", "Unsucessfully created new user");
			return "adminPage";
		}
	}

	@RequestMapping(value = "/editUser", method = { RequestMethod.POST })
	public String editUser(ModelMap modelMap, @RequestParam(value = "id") Integer id,
			@RequestParam(value = "firstName") String fName, @RequestParam(value = "lastName") String lName,
			@RequestParam(value = "role") String role, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {

		User u = new User();
		u.setfName(fName);
		u.setlName(lName);
		u.setUsername(username);
		u.setPassword(password);
		u.setRole(role);

		if (userService.updateUser(u) != null) {
			modelMap.put("userList", userService.getAll());
			return "adminPage";
		} else {
			modelMap.put("error", "Unsucessfully edited user");
			return "adminPage";
		}
	}

	@RequestMapping("/deleteUser/{id}")
	public String deleteUser(ModelMap modelMap, @PathVariable Integer id) {
		userService.deleteUser(id);
		modelMap.put("userList", userService.getAll());

		return "adminPage";
	}
}
