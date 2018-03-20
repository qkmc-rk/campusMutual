package com.rk.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rk.entity.User;
import com.rk.entity.UserCertif;
import com.rk.entity.UserPortrait;
import com.rk.entity.UserPrimInfo;
import com.rk.entity.UserQuestion;
import com.rk.entity.UserToken;
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
		System.out.println("[LOG] account:" + account + "   password:" + password);
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
	/**
	 * ��������ҳ,������ҳ�кܶർ������
	 * @param session session�д洢�źܶ����,��jsp�п���ֱ�ӵ���.
	 * @return
	 */
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
			mdv.setViewName("error");
		}
		return mdv;
	}
	
	/**
	 * ������Ϣ����
	 * @param session �洢������Ϣ����
	 * @return center view
	 */
	@RequestMapping("/center")
	public ModelAndView center(HttpSession session) {
		ModelAndView mdv = new ModelAndView();
		//����user��id��ȡuser��priminfo,question info,ʵʵ����Ϣ,(ͷ����Ϣ ��),token��Ϣ.
		User user = (User)session.getAttribute("user");
		//�жϵ�¼״̬��
		if(user == null) {
			mdv.addObject("msg", "�û�δ��¼!!");
			mdv.setViewName("error");
		}
		Integer userid = user.getId();
		UserCertif userCertif = userService.getUserCertif(userid);
		UserPortrait userPortrait = userService.getUserPortrait(userid);
		UserPrimInfo userPrimInfo = userService.getUserPrimInfo(userid);
		UserQuestion userQuestion = userService.getUserQuestion(userid);
		UserToken userToken = userService.getUserToken(userid);
		
		Map<String, Object> modelMap = new HashMap<>();
		modelMap.put("userCertif", userCertif);
		modelMap.put("userPortrait", userPortrait);
		modelMap.put("userPrimInfo", userPrimInfo);
		modelMap.put("userQuestion", userQuestion);
		modelMap.put("userToken", userToken);
		
		mdv.addAllObjects(modelMap);
		mdv.setViewName("/frontend/center");
		return mdv;
	}
	
	@ResponseBody
	@RequestMapping("/publish")
	public ModelAndView publish(HttpSession session) {
		System.out.println("[LOG][SESSION] content:" + session.toString());
		System.out.println("[LOG][SESSION] list:" + session.getAttribute("user"));
		User user = (User)session.getAttribute("user");
		UserPrimInfo userPrimInfo = userService.getUserPrimInfo(user.getId());
		ModelAndView mdv = new ModelAndView();
		
		mdv.addObject("user", user);
		mdv.addObject("userPrimInfo", userPrimInfo);
		mdv.setViewName("/frontend/publish");
		return mdv;
	}
	
	/**
	 * дһ��ע�Ṧ��
	 */
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	@ResponseBody
	public String regist(@RequestParam("firstname")String firstname,
			@RequestParam("lastname")String lastname,
			@RequestParam("stuid")Integer stuid,
			@RequestParam("account")String account,
			@RequestParam("password")String password) {
		System.out.println("ע��");
		
		//�����п�
		if(firstname == null || firstname.equals("") || lastname == null || lastname.equals("") || stuid == null || account == null || account.equals("") || password == null || password.equals(""))
			return JsonResult.RS_FALSE;
		//��ע��,Ȼ������priminfo��¼,portrait��¼,token��¼,question��¼,certif��¼
		User user = new User();
		user.setStuid(stuid);
		user.setAccount(account);
		user.setPassword(password);
		if(userService.register(user))
			return JsonResult.RS_TRUE;
		return JsonResult.RS_FALSE;
	}
	
	
	@RequestMapping("/saveuserprim")
	@ResponseBody
	public String saveUserPrim(@RequestParam("neckname") String neckname,
			@RequestParam("usermail") String usermail,
			@RequestParam("userphone") String userphone,
			@RequestParam("sex") String sex,
			@RequestParam("age") Integer age,
			@RequestParam("qq") String qq,
			@RequestParam("dormnum") Integer dormnum,
			@RequestParam("dormaddr") String dormaddr,
			@RequestParam("homeaddr") String homeaddr,
			@RequestParam("userid") Integer userid) {
		//�п�
		if(userid == null) return JsonResult.RS_FALSE;
		
		//��װ���ֶ�����Ϣ
		//User user = null;
		UserPrimInfo userPrimInfo = null;
		
		//�ȴ����ݿ��ȡ,�ڸ�����Ϣ,Ȼ�󱣴�
		//user = userService.getUser(userid);
		userPrimInfo = userService.getUserPrimInfo(userid);
		
		
		userPrimInfo.setUserid(userid);
		userPrimInfo.setNeckname(neckname);
		userPrimInfo.setUsermail(usermail);
		userPrimInfo.setUserphone(userphone);
		userPrimInfo.setSex(sex);
		userPrimInfo.setAge(age);
		userPrimInfo.setQq(qq);
		userPrimInfo.setDormnum(dormnum);
		userPrimInfo.setDormaddr(dormaddr);
		
		if(userService.updateUserPrimInfo(userPrimInfo) > 0)
			return JsonResult.RS_TRUE;
		return JsonResult.RS_FALSE;
	}
	
	@RequestMapping("/saveusersafe")
	@ResponseBody
	public String saveUserSafe(@RequestParam("password") String password,
			@RequestParam("question1") String question1,
			@RequestParam("answer1") String answer1,
			@RequestParam("question2") String question2,
			@RequestParam("answer2") String answer2,
			@RequestParam("question3") String question3,
			@RequestParam("userid") Integer userid,
			@RequestParam("answer3") String answer3) {
		if(userid == null) return JsonResult.RS_FALSE;
		//�������ݿ����
		UserQuestion userQuestion = null;
		User user = null;
		//�����ݿ��ȡ����
		user = userService.getUser(userid);
		userQuestion = userService.getUserQuestion(userid);
		//������Ҫ���µ��ֶ�
		user.setPassword(password);
		
		userQuestion.setQuestion1(question1);
		userQuestion.setQuestion2(question2);
		userQuestion.setQuestion3(question3);
		userQuestion.setAnswer1(answer1);
		userQuestion.setAnswer2(answer2);
		userQuestion.setAnswer3(answer3);
		
		if(userService.updateUser(user) > 0) {
			if(userService.updateUserQuestion(userQuestion) > 0) {
				return JsonResult.RS_TRUE;
			}else {
				return JsonResult.RS_FALSE;
			}
		}else
			return JsonResult.RS_FALSE;
	}
}
















