<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<style>
	
</style>
<body>
<%
	String sessionId = (String)session.getAttribute("sessionId");

%>
		<span style="padding: 20px;"><a class="mainname" href="index">PUPPY CAFE</a></span>
		
	
<nav role="navigation">
  <ul id="main-menu">
    <li class="main_menu"><a href="index">Home</a></li>
    <li ><a href="cafeInfo">카페소개</a>
      
    </li>
    <li><a href="reservedcal">예약하기</a>
      <ul id="sub-menu">
        
      </ul>
    </li>
    <li><a href="petInfo">PET소개</a>
      <ul id="sub-menu">
        <li><a href="#tag1" aria-label="subemnu">소형견</a></li>
        	
        <li><a href="#tag2" aria-label="subemnu">중형견</a> </li>
        	
        <li><a href="#tag3" aria-label="subemnu">대형견</a></li>
        	
      </ul>
    </li>
    <li><a href="community">자유게시판</a>
      
    </li>
      <%
    	if(sessionId == null){	
      %>		
    	<li><a href="login" aria-label="subemnu">로그인</a></li>
   	  <%	
    	}else{
      %>
        <li><a href="#">멤버쉽</a>
        <ul id="sub-menu">
        <li><a href="logout" aria-label="subemnu">로그아웃</a></li>
        <li><a href="memberModifyView" aria-label="subemnu">정보변경</a></li>
        <li><a href="memberDelete" aria-label="subemnu">회원탈퇴</a></li>
      <%
	  	}
      %>  
      </ul>
    </li>
  </ul>
</nav>
	<table width="100%" height="40px" border="0" cellspacing="0" cellpadding="0">
		<tr >
			&nbsp;
		</tr>
	</table>
</body>
</html>