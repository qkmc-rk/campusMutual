package com.rk.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rk.dao.UserCertifDao;
import com.rk.dao.UserDao;
import com.rk.dao.UserPortraitDao;
import com.rk.dao.UserPrimInfoDao;
import com.rk.dao.UserQuestionDao;
import com.rk.dao.UserTokenDao;
import com.rk.entity.User;
import com.rk.entity.UserCertif;
import com.rk.entity.UserPortrait;
import com.rk.entity.UserPrimInfo;
import com.rk.entity.UserQuestion;
import com.rk.entity.UserToken;
import com.rk.service.UserService;
import com.rk.util.AppMD5Util;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	UserPrimInfoDao userPrimInfoDao;
	
	@Autowired
	UserCertifDao userCertifDao;
	
	@Autowired
	UserPortraitDao userPortraitDao;
	
	@Autowired
	UserQuestionDao userQuestionDao;
	
	@Autowired
	UserTokenDao userTokenDao;
	
	/**
	 * 登录
	 */
	@Override
	public User login(String account, String password) {
		User user = null;
		try {
			user = userDao.selectByAccount(account);
			System.out.println("[LOG][LOGIN] param:" + user);
			System.out.println("[LOG][LOGIN] param:" + user.getPassword());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		if(user != null && user.getPassword().equals(password)) {
			return user;
		}
		return null;
	}
	
	/**
	 * 获取用户的基础信息
	 */
	public UserPrimInfo getUserPrimInfo(Integer userId) {
		UserPrimInfo userPrimInfo = null;
		try {
			//先获取基础信息
			userPrimInfo = userPrimInfoDao.selectByUserId(userId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userPrimInfo;
	}

	/**
	 * 注册
	 */
	@Override
	//事务
	@Transactional
	public boolean register(User user,UserPrimInfo userPrimInfo,UserQuestion userQuestion) {
		//首先创建一个用户记录
		try {
			userDao.add(user);
			//然后获取用户
			user = userDao.selectByAccount(user.getAccount());
		} catch (Exception e1) {
			e1.printStackTrace();
			return false;
		}
		//接着创建用户基础信息,用户头像记录,用户密保信息,用户Token信息
		//其他信息默认为空
		userPrimInfo.setUserid(user.getId());
		
		UserPortrait userPortrait = new UserPortrait();
		userPortrait.setUserid(user.getId());
		
		
		userQuestion.setUserid(user.getId());
		
		UserToken userToken = new UserToken();
		userToken.setUserid(user.getId());
		String token = AppMD5Util.md5Password(user.getPassword());
		userToken.setToken(token);
		
		UserCertif userCertif = new UserCertif();
		userCertif.setUserid(user.getId());
		userCertif.setState(0);
		userCertif.setCardpath("");
		try {
			userPrimInfoDao.add(userPrimInfo);
			userPortraitDao.add(userPortrait);
			userTokenDao.add(userToken);
			userQuestionDao.add(userQuestion);
			userCertifDao.add(userCertif);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public UserCertif getUserCertif(Integer userid) {
		UserCertif userCertif = null;
		try {
			userCertif = userCertifDao.selectByUserId(userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userCertif;
	}

	@Override
	public UserPortrait getUserPortrait(Integer userid) {
		UserPortrait userPortrait = null;
		try {
			userPortrait = userPortraitDao.selectByUserId(userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userPortrait;
	}

	@Override
	public UserQuestion getUserQuestion(Integer userid) {
		UserQuestion userQuestion = null;
		try {
			userQuestion = userQuestionDao.selectByUserId(userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userQuestion;
	}

	@Override
	public UserToken getUserToken(Integer userid) {
		UserToken userToken = null;
		try {
			userToken = userTokenDao.selectByUserId(userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userToken;
	}

	@Override
	public User getUser(Integer userid) {
		User user = null;
		try {
			user = userDao.selectById(userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return user;
	}

	@Override
	public Integer updateUserPrimInfo(UserPrimInfo userPrimInfo) {
		try {
			return userPrimInfoDao.update(userPrimInfo);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public Integer updateUser(User user) {
		try {
			return userDao.update(user);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public Integer updateUserQuestion(UserQuestion userQuestion) {
		try {
			return userQuestionDao.update(userQuestion);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public User getUserByStuid(Integer stuid) {
		User user = null;
		try {
			user = userDao.selectByStuid(stuid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return user;
	}

}
