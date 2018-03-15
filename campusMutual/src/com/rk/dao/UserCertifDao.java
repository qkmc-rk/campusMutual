package com.rk.dao;

import com.rk.entity.UserCertif;

public interface UserCertifDao {

	//��
	Integer add(UserCertif userCertif);
	
	//ɾ
	Integer deleteById(Integer id);
	Integer deleteByUserId(Integer userId);
	//��
	Integer update(UserCertif userCertif);
	
	//��
	UserCertif selectById(Integer id);
	UserCertif selectByUserId(Integer userId);
}
