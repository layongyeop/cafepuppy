package com.puppycafe.root.Dto;

import java.sql.Timestamp;

public class BoardReplyDto {
	private int brnum; // 댓글달 글번호
	private String brid; // 댓글쓴 아이디
	private String brcontent; // 댓글 내용
	private Timestamp brdate; // 댓글 쓴 시간
	
	public BoardReplyDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardReplyDto(int brnum, String brid, String brcontent, Timestamp brdate) {
		super();
		this.brnum = brnum;
		this.brid = brid;
		this.brcontent = brcontent;
		this.brdate = brdate;
	}
	public int getBrnum() {
		return brnum;
	}
	public void setBrnum(int brnum) {
		this.brnum = brnum;
	}
	public String getBrid() {
		return brid;
	}
	public void setBrid(String brid) {
		this.brid = brid;
	}
	public String getBrcontent() {
		return brcontent;
	}
	public void setBrcontent(String brcontent) {
		this.brcontent = brcontent;
	}
	public Timestamp getBrdate() {
		return brdate;
	}
	public void setBrdate(Timestamp brdate) {
		this.brdate = brdate;
	}
	
	
}
