package com.puppycafe.root.Dto;

import java.sql.Timestamp;

public class BoardDto {
	private int bnum; // 게시판번호
	private String bid; // 글쓴아이디
	private String btitle; // 글제목
	private String bcontent; // 글내용 
	private String bdate; // 글적은시간
	private int bhit; // 조회수
	private int bcomment; //댓글수
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDto(int bnum, String bid, String btitle, String bcontent, String bdate, int bhit, int bcomment) {
		super();
		this.bnum = bnum;
		this.bid = bid;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.bhit = bhit;
		this.bcomment = bcomment;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getBhit() {
		return bhit;
	}
	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	public int getBcomment() {
		return bcomment;
	}
	public void setBcomment(int bcomment) {
		this.bcomment = bcomment;
	}
	
	
	
}
