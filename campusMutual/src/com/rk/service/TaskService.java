
package com.rk.service;

import java.util.List;

import com.rk.entity.HelpInfo;
import com.rk.entity.HelpState;

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
public interface TaskService {

	/**
	 * 
	 * ����һ���û�����������
	 * @param helpInfo ��װǰ̨��������Ϣ
	 * @return helpInfo��ID
	 * 
	 */
	Integer saveOneInfo(HelpInfo helpInfo);
	
	/**
	 * ͨ���û���id��ѯ���û�����������
	 * @param userid �û���id
	 * @return �б�,����װ�����û�����������.
	 */
	List<HelpInfo> findByUserId(Integer userid);
	
	HelpState findByInfoId(Integer infoid);
}