package com.rk.dao;

import com.rk.entity.UserToken;

public interface UserTokenDao {

	UserToken selectById(Integer id);
	UserToken selectByUserId(Integer userId);

	
	Integer add(UserToken userToken);
	
	Integer deleteById(Integer id);
	Integer deleteByUserId(Integer userId);
	
	Integer update(UserToken userToken);
}
