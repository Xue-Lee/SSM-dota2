package com.icss.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icss.dao.UserDao;
import com.icss.entity.User;
import com.icss.service.LoginCookie;
import com.icss.service.LoginCookieService;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	@RequestMapping("login")
	public String login(HttpServletRequest request,HttpServletResponse response,User user,String checkbox) {
		System.out.println("login-------"+checkbox);
		User u = userDao.login(user);
		if(u != null) {
			request.getSession().setAttribute("user", u);
//			request.getSession().setAttribute("msg_sueccsess", u.getName());
			if(checkbox != null) {
//				loginCookie.loginCookieDay3(u);
				LoginCookieService cookie = new LoginCookieService();
				cookie.loginCookieDay3(response,user);
				return "shoppingCentre";
			}else{
//				loginCookie.loginCookieDay0(u);
				LoginCookieService cookie = new LoginCookieService();
				cookie.loginCookieDay0(response,user);
				return "shoppingCentre";
			}
		}else {
			request.setAttribute("msg", "用户名或密码错误");
			return "shoppingCentre";
		}
	}
	@RequestMapping("signOut")
	public String signOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		System.out.println("signOut-------------------");
		return "shoppingCentre";
	}
	
	@RequestMapping("register")
	public String register(HttpServletRequest request,User user) {
		System.out.println("register----------------------------------");
		userDao.register(user);
		return "shoppingCentre";
	}
}
