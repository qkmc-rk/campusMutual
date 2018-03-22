
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
         佛祖保佑       永无BUG 
*/
public interface TaskService {

	/**
	 * 
	 * 保存一个用户发布的任务
	 * @param helpInfo 封装前台传来的信息
	 * @return helpInfo的ID
	 * 
	 */
	Integer saveOneInfo(HelpInfo helpInfo);
	
	/**
	 * 通过用户的id查询到用户发布的任务
	 * @param userid 用户的id
	 * @return 列表,其中装的是用户发布的任务.
	 */
	List<HelpInfo> findByUserId(Integer userid);
	
	HelpState findByInfoId(Integer infoid);
}
