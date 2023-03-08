package com.puppycafe.root.Dto;

public class Criteria {
	
	private int pageNum=1;//현재 페이지 번호
	private int amount=10;//한 페이지에 출력표시될 글의 수
	private int startNum;//현재 선택된 페이지에서 시작할 글 번호
	
	public String getQueryString() { //페이지 파라미터 값을 넘김
		return String.format("page=%d&pageSize=%d", pageNum, amount);		
	}

	public Criteria() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Criteria(int pageNum, int amount, int startNum) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
		this.startNum = startNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	
	
}
