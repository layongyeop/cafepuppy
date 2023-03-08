package com.puppycafe.root.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.puppycafe.root.Dao.PCDao;
import com.puppycafe.root.Dto.Criteria;
import com.puppycafe.root.Dto.PageDto;
import com.puppycafe.root.Dto.ReservedCellDto;
import com.puppycafe.root.Dto.ReservedDto;
import com.puppycafe.root.Dto.ReservedViewDto;

@Controller
public class PCController {

	@Autowired
	SqlSession sqlSession;
	// 메인
	@RequestMapping(value = "/")
	public String main() {
		
		return "index";
	}
	//메인
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index";
	}
	//카페 소개
	@RequestMapping(value = "/cafeInfo")
	public String cafeInfo() {
		
		return "cafeInfo";
	}

	//펫종류
	@RequestMapping(value = "/petInfo")
	public String pet() {
		
		return "petInfo";
	}
	//커뮤니티
	@RequestMapping(value = "/community")
	public String community(HttpServletRequest request, Model model,Criteria cri) {
		
		int pageNumInt = 0;
		if(request.getParameter("pageNum") == null) {
			pageNumInt = 1;
			cri.setPageNum(pageNumInt);
			
		} else {
			pageNumInt = Integer.parseInt(request.getParameter("pageNum"));
			cri.setPageNum(pageNumInt);
		}
		PCDao dao = sqlSession.getMapper(PCDao.class);
		
		int totalRecord = dao.boardAllCount();
		
		cri.setStartNum(cri.getPageNum()-1 * cri.getAmount());//해당 페이지의 시작번호를 설정
		PageDto pageDto = new PageDto(cri, totalRecord);
		model.addAttribute("pageMaker", pageDto);
		
		model.addAttribute("currPage", pageNumInt);
		
		model.addAttribute("boardDto", dao.boardList(cri));
		return "community";
	}
	//로그인
	@RequestMapping(value = "/login")
	public String login() {
		
		
		return "login";
	}
	//로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
	//회원가입
	@RequestMapping(value = "/join")
	public String join() {
		
		return "join";
	}
	//회원가입Ok
	@RequestMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request) {
		 String mid = request.getParameter("mid");
		 String mpw = request.getParameter("mpw");
		 String mpw_check = request.getParameter("mpw_check");
		 String mname = request.getParameter("mname");
		 String mphone = request.getParameter("mphone");
		 String pmname = request.getParameter("pmname");
		 String pmcharacter = request.getParameter("pmcharacter");
		 String pmspecies = request.getParameter("pmspecies");
		 String pmage = request.getParameter("pmage");
		 String pmbirth = request.getParameter("pmbirth");
		 if(mpw.equals(mpw_check)) {
			 PCDao dao = sqlSession.getMapper(PCDao.class);
			 dao.memberInsert(mid, mpw, mname, mphone);
			 dao.puppyInsert(mid, pmname, pmcharacter, pmspecies, pmage, pmbirth);
			 return "login";
		 }else {
			 return "join";
		 }
		
	}
	// 로그인 Ok
	@RequestMapping(value = "/loginOk") 
	public String loginOk(HttpServletRequest request, Model model) {
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		PCDao dao = sqlSession.getMapper(PCDao.class);
		int loginCheck = dao.loginOk(mid, mpw);
		if(loginCheck == 1) {
			HttpSession sessionId = request.getSession();
			sessionId.setAttribute("sessionId", mid);
		}else {
			return "login";
		}
		
		return "index";
	}

	//회원정보 수정내용보기
	@RequestMapping(value = "/memberModifyView")	
	public String memberModify(HttpServletRequest request, Model model) {
		String mid = (String) request.getSession().getAttribute("sessionId");
		
		PCDao dao = sqlSession.getMapper(PCDao.class);
	
		model.addAttribute("MemberDto", dao.memberModify(mid));
		model.addAttribute("PMemberDto", dao.pmemberModify(mid));
		
		return "memberModifyView";
	}
	//회원정보 수정완료	
	@RequestMapping(value = "/memberModifyOk") 
	public String memberModifyOk(HttpServletRequest request, Model model) {
		 String mid = request.getParameter("mid");
		 String mpw = request.getParameter("mpw");
		 String mpw_check = request.getParameter("mpw_check");
		 String mname = request.getParameter("mname");
		 String mphone = request.getParameter("mphone");
		 String pmname = request.getParameter("pmname");
		 String pmcharacter = request.getParameter("pmcharacter");
		 String pmspecies = request.getParameter("pmspecies");
		 String pmage = request.getParameter("pmage");
		 String pmbirth = request.getParameter("pmbirth");
		 System.out.println(mid + mphone + pmage );
		 PCDao dao = sqlSession.getMapper(PCDao.class);
		 dao.memberModifyOk(mid, mpw, mname, mphone);
		 dao.puppyModifyOk(mid, pmname, pmcharacter, pmspecies, pmage, pmbirth);
		return "index";
	}
	//게시판 글내용보기
	@RequestMapping(value = "/contentView")
	public String contentView(HttpServletRequest request, Model model) {
		
		
		String bnum = request.getParameter("bnum");
		
		
		
		
		PCDao dao = sqlSession.getMapper(PCDao.class);
		model.addAttribute("bid", dao.contentView(bnum).getBid());
		model.addAttribute("contentView", dao.contentView(bnum));
		
		return "contentView";
	}
	//게시판 글 내용 수정view
	@RequestMapping(value = "/boardModifyView")
	public String boardModify(HttpServletRequest request, Model model) {
		String bnum = request.getParameter("bnum");
		
		PCDao dao = sqlSession.getMapper(PCDao.class);
		
		model.addAttribute("contentView", dao.contentView(bnum));
		
		return "boardModifyView";
	}
	
	//게시판 글 내용 수정 Ok
		@RequestMapping(value = "/boardModifyOk")
		public String boardModifyOk(HttpServletRequest request, Model model) {
			String bnum = request.getParameter("bnum");
			String btitle = request.getParameter("btitle");
			String bcontent = request.getParameter("bcontent");
			PCDao dao = sqlSession.getMapper(PCDao.class);
			
			dao.boardModifyOk(bnum, btitle, bcontent);
			
			return "redirect:community";
		}
	//게시판 글 쓰기 view
		@RequestMapping(value = "/boardInsert")
		public String boardInsert(HttpServletRequest request, Model model) {
			String mid = (String) request.getSession().getAttribute("sessionId");
			
			model.addAttribute("mid", mid);
			return "boardInsert";
		}
		
	//게시판 글 쓰기 Ok
		@RequestMapping(value = "/boardInsertOk")
		public String boardInsertOk(HttpServletRequest request, Model model) {
			String bid = request.getParameter("bid");
			String btitle = request.getParameter("btitle");
			String bcontent = request.getParameter("bcontent");
			PCDao dao = sqlSession.getMapper(PCDao.class);
			dao.boardInsertOk(bid, btitle, bcontent, 0);		
				
			return "redirect:community";
		}
	//예약 달력 보기
		@RequestMapping(value = "/reservedcal")
		public String res(HttpServletRequest request, Model model) {
			java.util.Calendar cal=java.util.Calendar.getInstance(); //Calendar객체 cal생성
			  int currentYear=cal.get(java.util.Calendar.YEAR); //현재 연도 기억
			  int currentMonth=cal.get(java.util.Calendar.MONTH)+1;//현재 달
			  System.out.println(currentMonth);
			String syear = currentYear+"";
			String smonth = null;
			

		
			
			if(currentMonth<9) {smonth="0"+currentMonth;}
			else {smonth = (currentMonth)+"";}
			
			System.out.println(smonth);
			PCDao dao = sqlSession.getMapper(PCDao.class);
			ArrayList<ReservedCellDto> rcellDto = dao.ReservedCell(syear+"-"+smonth);
			model.addAttribute("rcellDtos", rcellDto);
			return "reservedcal";
			
		}
		//예약 상세보기
		@RequestMapping(value = "/reservedView")
		public String reservedView(HttpServletRequest request, Model model) {
			String sessionId = (String) request.getSession().getAttribute("sessionId");
			String syear = request.getParameter("year");
			String smonth = request.getParameter("month");
			String sday = request.getParameter("day");

			int month = Integer.parseInt(smonth)+1;
			int day = Integer.parseInt(sday);
			
			if(month<9) {smonth="0"+month;}
			else {smonth = month+"";}
			if(day<10) {sday="0"+day;}
			
			String rdate = syear +"-" +smonth +"-"+ sday;
			
			PCDao dao = sqlSession.getMapper(PCDao.class);
			
			
			ArrayList<ReservedDto> rDto = dao.reservedInfo(rdate); 
			
			ArrayList<ReservedViewDto> rviewDto = dao.reserved(rdate);
			
			ArrayList<ReservedCellDto> rcellDto = dao.ReservedCell(syear+"-"+smonth);
			
			ArrayList<Integer> hourcheck = dao.dbhour(sessionId);
			
			model.addAttribute("rvdtos", rviewDto);
			model.addAttribute("rdate", rdate);
			model.addAttribute("rdtos", rDto);
			model.addAttribute("rcellDtos", rcellDto);
			model.addAttribute("hourcheck",hourcheck);
			
			
			System.out.println(sessionId);
			return "reservedView";
		}
		//예약하기
		@RequestMapping(value = "/reserved")
		public String reserved(HttpServletRequest request,HttpSession session, Model model) {
			String sessionId = (String) session.getAttribute("sessionId");
			System.out.println(sessionId);
			String rdate = request.getParameter("rdate");
			String[] checks=request.getParameterValues("check");
			PCDao dao = sqlSession.getMapper(PCDao.class);
			for(String check : checks) {
				int rstarthour= Integer.parseInt(check);
				int dbcheck = dao.dbcheck(sessionId,rstarthour);
				int rendhour = rstarthour+2;
				if(dbcheck ==0) {
					dao.cafeReserved(sessionId, rdate, rstarthour,rendhour);
				}
				else {
					break;
				}
			}
			
			return "redirect:reservedcal";
		}
		@RequestMapping(value = "/boardDelete")
		public String boardDelete(HttpServletRequest request) {
			String bnum = request.getParameter("bnum");
		    String bid = request.getParameter("bid");
		    String sessionId = (String) request.getSession().getAttribute("sessionId");
			
		    if(bid.equals(sessionId)) {
		    	PCDao dao = sqlSession.getMapper(PCDao.class);	
		    }else {
		    	
		    }
		    
			return "boardDelete";
		}
		
}
