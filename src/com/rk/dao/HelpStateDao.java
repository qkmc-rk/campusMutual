package com.rk.dao;

import com.rk.entity.HelpState;

public interface HelpStateDao {

	//Ôö
	Integer add(HelpState helpState);
	
	//É¾
	Integer deleteById(Integer id);
	Integer deleteByInfoId(Integer infoId);
	//¸Ä
	Integer update(HelpState helpState);
	//²é
	HelpState selectById(Integer id);
	HelpState selectByInfoId(Integer infoId);
}
