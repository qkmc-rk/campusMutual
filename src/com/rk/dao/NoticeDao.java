package com.rk.dao;

import java.util.List;

import com.rk.entity.Notice;

public interface NoticeDao {

	//��
	Integer add(Notice notice);
	
	//ɾ
	Integer deleteById(Integer id);
	
	//��
	Integer update(Notice notice);
	
	//��
	Notice selectById(Integer id);
	List<Notice> selectAll();
	List<Notice> selectByCreatorId(Integer creatorId);
	
}
