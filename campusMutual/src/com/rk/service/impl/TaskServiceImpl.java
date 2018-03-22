
package com.rk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rk.dao.HelpInfoDao;
import com.rk.dao.HelpStateDao;
import com.rk.entity.HelpInfo;
import com.rk.entity.HelpState;
import com.rk.service.TaskService;

/** 
                   _ooOoo_ 
                  o8888888o 
                  88" . "88 
                  (| -_- |) 
                  O\  =  /O 
               ____/`---'\____ 
             .'  \\|     |//  `. 
            /  \\|||  :  |||//  \ 
           /  _||||| -:- |||||-  \ 
           |   | \\\  -  /// |   | 
           | \_|  ''\---/''  |   | 
           \  .-\__  `-`  ___/-. / 
         ___`. .'  /--.--\  `. . __ 
      ."" '<  `.___\_<|>_/___.'  >'"". 
     | | :  `- \`.;`\ _ /`;.`/ - ` : | | 
     \  \ `-.   \_ __\ /__ _/   .-` /  / 
======`-.____`-.___\_____/___.-`____.-'====== 
                   `=---=' 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ 
         ���汣��       ����BUG 
*/

@Service("taskService")
public class TaskServiceImpl implements TaskService {

	@Autowired
	HelpInfoDao helpInfoDao;
	
	@Autowired
	HelpStateDao helpStateDao;
	
	@Override
	public Integer saveOneInfo(HelpInfo helpInfo) {
		//���ȴ�һ��HelpInfo
		Integer rs = null;
		try {
			rs = helpInfoDao.add(helpInfo);
		} catch (Exception e) {
			System.out.println("[EXCEPTION]����helpInfo����");
			e.printStackTrace();
		}
		if(rs > 0) {
			HelpState helpState = new HelpState();
			//��ѯ�����id
			HelpInfo helpInfo2 = helpInfoDao.selectByContent(helpInfo.getContent());
			Integer infoid = helpInfo2.getId();
			
			//����helpstate
			helpState.setInfoid(infoid);
			helpState.setAchieved(0);
			helpState.setReceived(0);
			helpState.setTimeout(0);
			
			//�������ݿ��¼
			return helpStateDao.add(helpState);
		}
		return null;
	}

	@Override
	public List<HelpInfo> findByUserId(Integer userid) {
		List<HelpInfo> list = null;
		try {
			list = helpInfoDao.selectByUserId(userid);
			return list;
		} catch (Exception e) {
			System.out.println("[EXCEPTION] �����û���������ʧ��!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public HelpState findByInfoId(Integer infoid) {
		HelpState helpState = null;
		try {
			helpState = helpStateDao.selectByInfoId(infoid);
			return helpState;
		} catch (Exception e) {
			System.out.println("[EXCEPTION] �����û����������״̬ʱʧ��!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<HelpInfo> findAll() {
		List<HelpInfo> list = null;
		try {
			list = helpInfoDao.selectAll();
			return list;
		} catch (Exception e) {
			System.out.println("[EXCEPTION] �����û���������ʧ��!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public HelpInfo findHelpInfoById(Integer infoid) {
		HelpInfo helpInfo = null;
		try {
			helpInfo = helpInfoDao.selectById(infoid);
		} catch (Exception e) {
			System.out.println("[LOG]δ���ҵ�id=" +infoid + "��helpInfo");
			e.printStackTrace();
			return null;
		}
		return helpInfo;
	}
}
