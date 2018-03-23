package com.rk.service;

import com.rk.entity.User;
import com.rk.entity.UserCertif;
import com.rk.entity.UserPortrait;
import com.rk.entity.UserPrimInfo;
import com.rk.entity.UserQuestion;
import com.rk.entity.UserToken;

public interface UserService {

	/**
	 * �û���¼,����һ���û���һ������,���ص�¼�Ƿ�ɹ�
	 * @return �Ƿ��¼�ɹ�
	 */
	User login(String account,String password);
	
	/**
	 * ��ȡ�û��Ļ�����Ϣ
	 * @param userId
	 * @return
	 */
	UserPrimInfo getUserPrimInfo(Integer userId);
	
	/**
	 * ע�Ṧ�ܵ�ʵ��
	 * @param user �û�ע����Ϣ
	 * @return ע���Ƿ�ɹ�
	 */
	boolean register(User user,UserPrimInfo userPrimInfo,UserQuestion userQuestion);
	
	UserCertif getUserCertif(Integer userid);
	UserPortrait getUserPortrait(Integer userid);
	UserQuestion getUserQuestion(Integer userid);
	UserToken getUserToken(Integer userid);
	User getUser(Integer userid);
	User getUserByStuid(Integer stuid);
	
	Integer updateUserPrimInfo(UserPrimInfo userPrimInfo);
	Integer updateUser(User user);
	Integer updateUserQuestion(UserQuestion userQuestion);
	
}
