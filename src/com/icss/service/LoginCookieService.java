package com.icss.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import com.icss.entity.User;
public class LoginCookieService{
	
	public void loginCookieDay3(HttpServletResponse response,User user) {
		Cookie cookie_userName = new Cookie("userName", user.getUserName());
		Cookie cookie_pwd = new Cookie("pwd", user.getPwd());
		//cookie三天免登陆设置
		cookie_userName.setMaxAge(60*60*24*3);
		cookie_pwd.setMaxAge(60*60*24*3);
		response.addCookie(cookie_userName);
		response.addCookie(cookie_pwd);
	}
	public void loginCookieDay0(HttpServletResponse response,User user) {
		Cookie cookie_userName = new Cookie("userName", user.getUserName());
		Cookie cookie_pwd = new Cookie("pwd", user.getPwd());
		//cookie三天免登陆设置
		cookie_userName.setMaxAge(0);
		cookie_pwd.setMaxAge(0);
		response.addCookie(cookie_userName);
		response.addCookie(cookie_pwd);
	}
}
