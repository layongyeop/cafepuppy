package com.puppycafe.root.Dto;

import java.sql.Timestamp;

public class PMemberDto {
	private String pmid; // 강아지 주인 아이디
	private String pmname; // 강아지 이름
	private String pmcharacter; // 강아지 성격 / 특성(?) 등등
	private int pmspecies; // 강아지 종
	private int pmage; // 강아지 나이
	private String pmbirth; // 강아지 생일
	
	public PMemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PMemberDto(String pmid, String pmname, String pmcharacter, int pmspecies, int pmage, String pmbirth) {
		super();
		this.pmid = pmid;
		this.pmname = pmname;
		this.pmcharacter = pmcharacter;
		this.pmspecies = pmspecies;
		this.pmage = pmage;
		this.pmbirth = pmbirth;
	}
	public String getPmid() {
		return pmid;
	}
	public void setPmid(String pmid) {
		this.pmid = pmid;
	}
	public String getPmname() {
		return pmname;
	}
	public void setPmname(String pmname) {
		this.pmname = pmname;
	}
	public String getPmcharacter() {
		return pmcharacter;
	}
	public void setPmcharacter(String pmcharacter) {
		this.pmcharacter = pmcharacter;
	}
	public int getPmspecies() {
		return pmspecies;
	}
	public void setPmspecies(int pmspecies) {
		this.pmspecies = pmspecies;
	}
	public int getPmage() {
		return pmage;
	}
	public void setPmage(int pmage) {
		this.pmage = pmage;
	}
	public String getPmbirth() {
		return pmbirth;
	}
	public void setPmbirth(String pmbirth) {
		this.pmbirth = pmbirth;
	}
	
	
	
}
