package com.rk.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rk.dao.UserDao;
import com.rk.dao.UserPrimInfoDao;
import com.rk.entity.User;
import com.rk.entity.UserPrimInfo;
import com.rk.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	UserPrimInfoDao userPrimInfoDao;
	/**
	 * 登录
	 */
	@Override
	public User login(String account, String password) {
		User user = null;
		try {
			user = userDao.selectByAccount(account);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		if(user.getPassword().equals(password)) {
			return user;
		}
		return null;
	}
	
	/**
	 * 获取用户的基础信息
	 */
	public UserPrimInfo getUserPrimInfo(Integer userId) {
		UserPrimInfo userPrimInfo = null;
		try {
			//先获取基础信息
			userPrimInfo = userPrimInfoDao.selectByUserId(userId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userPrimInfo;
	}
}
