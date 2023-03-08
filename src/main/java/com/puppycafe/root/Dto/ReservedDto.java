package com.puppycafe.root.Dto;



public class ReservedDto {
	private int rnum; // 예약번호
	private String rid; // 예약할 아이디
	private String rdate; // 예약할 날짜
	private int rstarthour; // 예약 시작 시간 
	private int rendhour; // 예약끝
	private int rspeciesnum; // 종
	
	
	
	public ReservedDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservedDto(int rnum, String rid, String rdate, int rstarthour, int rendhour , int rspeciesnum) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.rdate = rdate;
		this.rstarthour = rstarthour;
		this.rendhour = rendhour;
		this.rspeciesnum = rspeciesnum;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getRstarthour() {
		return rstarthour;
	}
	public void setRstarthour(int rstarthour) {
		this.rstarthour = rstarthour;
	}
	public int getRendhour() {
		return rendhour;
	}
	public void setRendhour(int rendhour) {
		this.rendhour = rendhour;
	}
	public int getRcount() {
		return rspeciesnum;
	}
	public void setRcount(int rspeciesnum) {
		this.rspeciesnum = rspeciesnum;
	}
	
	
}
