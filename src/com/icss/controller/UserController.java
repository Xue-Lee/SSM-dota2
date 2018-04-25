package com.icss.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icss.dao.UserDao;
import com.icss.entity.User;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	@RequestMapping("login")
	public String login(HttpServletRequest request,User user) {
		System.out.println("login-------");
		User u = userDao.login(user);
		if(u != null) {
			request.getSession().setAttribute("user", u);
			return "hello";
		}else {
			request.setAttribute("msg", "用户名或密码错误");
			return "shoppingCentre";
		}
	}
}
