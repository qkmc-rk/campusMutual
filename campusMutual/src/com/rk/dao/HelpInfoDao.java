package com.rk.dao;

import java.util.List;

import com.rk.entity.HelpInfo;

public interface HelpInfoDao {

	//增删改查
	//增
	Integer add(HelpInfo helpInfo);
	
	//删
	Integer deleteById(Integer id);
	//可能会删除一堆
	/**
	 * 根据用户的id删除用户发布的请求
	 * @param userId
	 * @return 删除的条数,注意使用,可能会删除这个用户所有的求助信息
	 */
	Integer deleteByUserId(Integer userId);
	
	//改
	Integer update(HelpInfo helpInfo);
	
	//查
	HelpInfo selectById(Integer id);
	List<HelpInfo> selectByUserId(Integer userId);
}
