package com.rk.entity;

import java.sql.Date;

/**
 * ���� ���˷���������Ϣ(����)
 * ע����û����Խ�������
 * @author Mrruan
 *
 */
public class Comment {
	
	private Integer id;
	private Integer userid;
	private Integer infoid;
	
	private String title;
	private String comment;
	private Date commenttime;
	
	
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
	public Integer getInfoid() {
		return infoid;
	}
	public void setInfoid(Integer infoid) {
		this.infoid = infoid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getCommenttime() {
		return commenttime;
	}
	public void setCommenttime(Date commenttime) {
		this.commenttime = commenttime;
	}
}