package com.rk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rk.entity.User;
import com.rk.entity.UserPrimInfo;
import com.rk.service.UserService;
import com.rk.util.JsonResult;

/**
 * ��¼,ע��,�һ�����,����ҳ,��������Ϣҳ��,���ҵķ���ҳ��,���ҵ�����,��ȥ������ҳ��
 * ����������ҳ��
 * @author Mrruan
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	/**
	 * �û���¼
	 * @param account �˺�
	 * @param password ����
	 * @param session session
	 * @return �Ƿ��¼�ɹ�
	 */
	@RequestMapping(value="/login")
	@ResponseBody
	public String login(@RequestParam("account")String account,@RequestParam("password")String password,HttpSession session) {
		//�пյȴ���
		if(account == null || account.equals("") || password == null || password.equals(""))
			return JsonResult.RS_FALSE;
		//��¼
		User user = userService.login(account, password);
		if(user != null) {
			//��¼�ɹ�Ҫ����session
			session.setAttribute("user", user);
			return JsonResult.RS_TRUE;
		}
		else
			return JsonResult.RS_FALSE;
	}
	
	/**
	 * ע����¼
	 * @param session
	 * @return ע����¼ҳ��
	 */
	@RequestMapping("/loginoff")
	public String loginoff(HttpSession session) {
		session.removeAttribute("user");
		return "/frontend/loginoff";
	}
	
	@RequestMapping("/index")
	public ModelAndView index(HttpSession session) {
		ModelAndView mdv = new ModelAndView();
		User user = (User) session.getAttribute("user");
		if(user != null) {
			UserPrimInfo userPrimInfo = userService.getUserPrimInfo(user.getId());
			mdv.addObject("user", user);
			mdv.addObject("userPrimInfo", userPrimInfo);
			mdv.setViewName("/frontend/index");
		}else {
			mdv.addObject("msg", "�û�״̬�쳣,�����µ�¼!");
			mdv.setViewName("/error");
		}
		return mdv;
	}
}














