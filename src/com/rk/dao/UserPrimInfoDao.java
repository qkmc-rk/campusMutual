package com.rk.dao;

import com.rk.entity.UserPrimInfo;

public interface UserPrimInfoDao {

	UserPrimInfo selectById(Integer id);
	UserPrimInfo selectByUserId(Integer userId);

	
	Integer add(UserPrimInfo userPrimInfo);
	
	Integer deleteById(Integer id);
	Integer deleteByUserId(Integer userId);
	
	Integer update(UserPrimInfo userPrimInfo);
}
