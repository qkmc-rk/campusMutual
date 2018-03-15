package com.rk.entity;

import java.sql.Date;

/**
 * 求助信息 每个用户都可以发布求助信息
 * @author Mrruan
 *
 */
public class HelpInfo {

	private Integer id; 
	private Integer userid;
	private Date crettime;
	
	//期限
	private Integer timeout;
	//标题
	private String title;
	//主要内容
	private String content;
	//备注
	private String tip;
	//暂时没什么用
	private String imgpath;
	//赏金
	private double reward;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Date getCrettime() {
		return crettime;
	}
	public void setCrettime(Date crettime) {
		this.crettime = crettime;
	}
	public Integer getTimeout() {
		return timeout;
	}
	public void setTimeout(Integer timeout) {
		this.timeout = timeout;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public double getReward() {
		return reward;
	}
	public void setReward(double reward) {
		this.reward = reward;
	}
}
