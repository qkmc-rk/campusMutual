package com.rk.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.rk.entity.HelpInfo;

public interface HelpInfoDao {

	//��ɾ�Ĳ�
	//��
	Integer add(HelpInfo helpInfo);
	
	//ɾ
	Integer deleteById(Integer id);
	//���ܻ�ɾ��һ��
	/**
	 * �����û���idɾ���û�����������
	 * @param userId
	 * @return ɾ��������,ע��ʹ��,���ܻ�ɾ������û����е�������Ϣ
	 */
	Integer deleteByUserId(Integer userId);
	
	//��
	Integer update(HelpInfo helpInfo);
	
	//��
	HelpInfo selectById(Integer id);
	List<HelpInfo> selectByUserId(Integer userId);

	/**
	 * ͨ��content����helpinfo,����Ҫ���õ�helpinfo��id...
	 * @param content
	 * @return
	 */
	HelpInfo selectByContent(String content);
}
