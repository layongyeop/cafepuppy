package com.puppycafe.root.Dto;

public class PspeciesDto {
	private int psnum; // 강아지 종 번호
	private int psspecies; // 강아지 종(소/중/대)형
	private String psspeciesname; // 강아지 구체적 종류(ex 진돗개)
	
	public int getPsnum() {
		return psnum;
	}
	public void setPsnum(int psnum) {
		this.psnum = psnum;
	}
	public int getPsspecies() {
		return psspecies;
	}
	public void setPsspecies(int psspecies) {
		this.psspecies = psspecies;
	}
	public String getPsspeciesname() {
		return psspeciesname;
	}
	public void setPsspeciesname(String psspeciesname) {
		this.psspeciesname = psspeciesname;
	}
	public PspeciesDto(int psnum, int psspecies, String psspeciesname) {
		super();
		this.psnum = psnum;
		this.psspecies = psspecies;
		this.psspeciesname = psspeciesname;
	}
	public PspeciesDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
