package com.puppycafe.root.Dto;

public class ReservedViewDto {
	private int rstarthour;
	private String psspeciesname;
	private int puppycount;
	public ReservedViewDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservedViewDto(int rstarthour, String psspeciesname, int puppycount) {
		super();
		this.rstarthour = rstarthour;
		this.psspeciesname = psspeciesname;
		this.puppycount = puppycount;
	}
	public int getRstarthour() {
		return rstarthour;
	}
	public void setRstarthour(int rstarthour) {
		this.rstarthour = rstarthour;
	}
	public String getPsspeciesname() {
		return psspeciesname;
	}
	public void setPsspeciesname(String psspeciesname) {
		this.psspeciesname = psspeciesname;
	}
	public int getPuppycount() {
		return puppycount;
	}
	public void setPuppycount(int puppycount) {
		this.puppycount = puppycount;
	}
	
	
	
}
