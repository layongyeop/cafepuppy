package com.puppycafe.root.Dao;

import java.util.ArrayList;

import com.puppycafe.root.Dto.BoardDto;
import com.puppycafe.root.Dto.Criteria;
import com.puppycafe.root.Dto.MemberDto;
import com.puppycafe.root.Dto.PMemberDto;
import com.puppycafe.root.Dto.ReservedCellDto;
import com.puppycafe.root.Dto.ReservedDto;
import com.puppycafe.root.Dto.ReservedViewDto;

public interface PCDao {
	//회원 가입
	public void memberInsert(String mid, String mpw, String mname, String mphone);
	//반려견 가입
	public void puppyInsert(String pmid, String pmname, String pmcharacter, 
							String pmspecies, String pmage, String pmbirth);
	
	//로그인Ok
	public int loginOk(String mid, String mpw);
	//회원정보 수정 내용보기
	public MemberDto memberModify(String mid);
	public PMemberDto pmemberModify(String pmid);
	
	//회원정보 수정완료
	public void memberModifyOk(String mid, String mpw, String mname, String mphone);
	public void puppyModifyOk(String pmid, String pmname, String pmcharacter, 
			String pmspecies, String pmage, String pmbirth);
	
	//자유게시판 글목록
	public ArrayList<BoardDto> boardList(Criteria cri);
	
	//자유게시판 글보기
	public BoardDto contentView(String bnum);
	
	//자유게시판 글내용수정ok
	public void boardModifyOk(String bnum, String btitle, String bcontent);
	
	//자유게시판 글쓰기
	public void boardInsertOk(String bid, String btitle, String bcontent, int bhit);
	
	//날짜별 예약현황 불러오기
	public ArrayList<ReservedDto> reservedInfo(String rdate);
	//자유 게시판 모든 글 수
	public int boardAllCount();
	//자유게시판 글삭제
	public void boardDelete(String bnum);
	
	//예약 현황 보기
	public ArrayList<ReservedViewDto> reserved(String rdate);
	//달력 예약 현황 찍기
	public ArrayList<ReservedCellDto> ReservedCell(String yyyymm);
	// 예약하기
	public void cafeReserved(String sessionId, String rdate, int rstarthour, int rendhour);
	//중복체크
	public int dbcheck(String sessionId, int rstarthour);
	//중복 시간 
	public ArrayList<Integer> dbhour(String seesionId);
	
}
