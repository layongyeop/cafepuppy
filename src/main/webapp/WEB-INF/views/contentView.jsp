<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>** Gyojin's Profile **</title>
</head>
<body>	
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<span class="title01">반려견 맞춤 예약 서비스</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">저희 애견카페는 반려견의 행복한 사회화 교육과 놀이를 위하여 원하는 환경에서 <br><br>
									반려견과 견주가 지낼수 있도록 예약시스템을 준비하였습니다.</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="boardDelete" method="post" name="board_frm">
									<input type="hidden" value="${contentView.bnum }" name="bnum">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="bid" value="${contentView.bid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">글 제목 : </span></td>
										<td><input class="input_type01" type="text" name="btitle" value="${contentView.btitle }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">글 내용 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="bcontent" readonly="readonly">${contentView.bcontent}</textarea></td>
									</tr>									
									
									<tr>
										<td><span class="content_text01">등 록 일 : </span></td>
										<td><input class="input_type01" type="text" name="bdate" value="${contentView.bdate }" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="2">
										<%
											String bid = (String) request.getAttribute("bid");
										
											if((sessionId != null ) && (sessionId.equals(bid))) {		
										%>
											<input class="button_type01" type="button" value="수정" onclick="script:window.location='boardModifyView?bnum=${contentView.bnum}'">
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='boardDelete?bnum=${contentView.bnum}'">
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='community'">
										<%
											} else {
										%>
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='community'">
										<%
											}
										%>
										</td>
									</tr>
								</form>							
							</table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>