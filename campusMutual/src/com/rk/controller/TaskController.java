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
 * 这个controller用来处理4个模块的内容
 *
 * 发布信息    我的发布   已接任务     最新发布
 * 
 * 该部分内容需要用户登录才能访问,而且部分内容需要使用过滤器,过滤
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
	 * 发布信息,发布后,返回成功
	 * @param userid 用户id
	 * @param title 发布标题
	 * @param timeout 超时时间
	 * @param tip 备注
	 * @param reward 赏金,元单位
	 * @param content 主要内容
	 * @return JSON字符串
	 */
	@RequestMapping(value="/publish",method=RequestMethod.POST)
	@ResponseBody
	public String publish(@RequestParam("userid") Integer userid,
			@RequestParam("title") String title,
			@RequestParam("timeout") String timeout,
			@RequestParam("tip") String tip,
			@RequestParam("reward") Integer reward,
			@RequestParam("content") String content) {
		System.out.println("[LOG]请求/task/publish");
		System.out.println("[LOG]content:" + content);
		//第一步,前台数据验证..
		//......
		if(userid == null ) return JsonResult.RS_FALSE;
		if(content == null) return JsonResult.RS_FALSE;
		if(title == null) return JsonResult.RS_FALSE;
		if(timeout == null) return JsonResult.RS_FALSE;
		if(tip == null) return JsonResult.RS_FALSE;
		if(reward == null) return JsonResult.RS_FALSE;
		
		//判断userid的合理性//.....数据验证真的好繁琐
		if(userService.getUser(userid) == null) return JsonResult.RS_FALSE;
		
		//封装数据
		HelpInfo helpInfo = new HelpInfo();
		helpInfo.setUserid(userid);
		helpInfo.setTitle(title);
		helpInfo.setTip(tip);
		helpInfo.setReward(reward);
		helpInfo.setContent(content);
		helpInfo.setCrettime(new Timestamp(new Date().getTime()));//当前时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = sdf.parse(timeout);
		} catch (ParseException e) {
			System.out.println("[LOG]时间转换异常!");
			e.printStackTrace();
			return JsonResult.RS_FALSE;
		}
		helpInfo.setTimeout(date.getTime());
		
		//将info存到数据库,然后更新infostate中的内容
		
		if(taskService.saveOneInfo(helpInfo) > 0) {
			System.out.println("[LOG]任务发布成功");
			return JsonResult.RS_TRUE;
		}
		else
			return JsonResult.RS_FALSE;
	}
}
