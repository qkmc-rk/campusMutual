package com.rk.dao;

import com.rk.entity.UserCertif;

public interface UserCertifDao {

	//Ôö
	Integer add(UserCertif userCertif);
	
	//É¾
	Integer deleteById(Integer id);
	Integer deleteByUserId(Integer userId);
	//¸Ä
	Integer update(UserCertif userCertif);
	
	//²é
	UserCertif selectById(Integer id);
	UserCertif selectByUserId(Integer userId);
}
