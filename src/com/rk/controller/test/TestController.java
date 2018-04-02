package com.rk.controller.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rk.dao.AdminDao;
import com.rk.entity.Admin;

@Controller
@RequestMapping("/test")
public class TestController {

	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/admindao")
	@ResponseBody
	public String testAdmindao() {
		Admin admin = adminDao.selectById(1);
		return String.valueOf(admin.getUserid());
	}
}
