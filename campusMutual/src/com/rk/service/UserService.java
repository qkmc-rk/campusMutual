package com.rk.service;

import com.rk.entity.User;
import com.rk.entity.UserPrimInfo;

public interface UserService {

	/**
	 * �û���¼,����һ���û���һ������,���ص�¼�Ƿ�ɹ�
	 * @return �Ƿ��¼�ɹ�
	 */
	User login(String account,String password);
	
	UserPrimInfo getUserPrimInfo(Integer userId);
}
