package com.rk.entity;

import java.sql.Date;

/**
 * ���� entity
 * ����Ա��������
 * @author Mrruan
 *
 */
public class Notice {

	private Integer id;
	private Date cretime;
	//����������˵�ID
	private Integer creatorid;
	//��������
	private String notice;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getCretime() {
		return cretime;
	}
	public void setCretime(Date cretime) {
		this.cretime = cretime;
	}
	public Integer getCreatorid() {
		return creatorid;
	}
	public void setCreatorid(Integer creatorid) {
		this.creatorid = creatorid;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	
	
	
}
