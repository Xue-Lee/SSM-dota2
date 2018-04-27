package com.icss.dao;

import com.icss.entity.User;

public interface UserDao {
	public User login(User user);
	public void register(User user);
}
