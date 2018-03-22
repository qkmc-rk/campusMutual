package com.rk.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rk.entity.HelpInfo;
import com.rk.service.TaskService;
import com.rk.service.UserService;
import com.rk.util.JsonResult;

/**
 * ���controller��������4��ģ�������
 *
 * ������Ϣ    �ҵķ���   �ѽ�����     ���·���
 * 
 * �ò���������Ҫ�û���¼���ܷ���,���Ҳ���������Ҫʹ�ù�����,����
 * @author Mrruan
 *
 */
@Controller
@RequestMapping("/task")
public class TaskController {

	@Autowired
	TaskService taskService;
	
	@Autowired
	UserService userService;
	
	/**
	 * ������Ϣ,������,���سɹ�
	 * @param userid �û�id
	 * @param title ��������
	 * @param timeout ��ʱʱ��
	 * @param tip ��ע
	 * @param reward �ͽ�,Ԫ��λ
	 * @param content ��Ҫ����
	 * @return JSON�ַ���
	 */
	@RequestMapping(value="/publish",method=RequestMethod.POST)
	@ResponseBody
	public String publish(@RequestParam("userid") Integer userid,
			@RequestParam("title") String title,
			@RequestParam("timeout") String timeout,
			@RequestParam("tip") String tip,
			@RequestParam("reward") Integer reward,
			@RequestParam("content") String content) {
		System.out.println("[LOG]����/task/publish");
		System.out.println("[LOG]content:" + content);
		//��һ��,ǰ̨������֤..
		//......
		if(userid == null ) return JsonResult.RS_FALSE;
		if(content == null) return JsonResult.RS_FALSE;
		if(title == null) return JsonResult.RS_FALSE;
		if(timeout == null) return JsonResult.RS_FALSE;
		if(tip == null) return JsonResult.RS_FALSE;
		if(reward == null) return JsonResult.RS_FALSE;
		
		//�ж�userid�ĺ�����//.....������֤��ĺ÷���
		if(userService.getUser(userid) == null) return JsonResult.RS_FALSE;
		
		//��װ����
		HelpInfo helpInfo = new HelpInfo();
		helpInfo.setUserid(userid);
		helpInfo.setTitle(title);
		helpInfo.setTip(tip);
		helpInfo.setReward(reward);
		helpInfo.setContent(content);
		helpInfo.setCrettime(new Timestamp(new Date().getTime()));//��ǰʱ��
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = sdf.parse(timeout);
		} catch (ParseException e) {
			System.out.println("[LOG]ʱ��ת���쳣!");
			e.printStackTrace();
			return JsonResult.RS_FALSE;
		}
		helpInfo.setTimeout(date.getTime());
		
		//��info�浽���ݿ�,Ȼ�����infostate�е�����
		
		if(taskService.saveOneInfo(helpInfo) > 0) {
			System.out.println("[LOG]���񷢲��ɹ�");
			return JsonResult.RS_TRUE;
		}
		else
			return JsonResult.RS_FALSE;
	}
}
