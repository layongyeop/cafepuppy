<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>PUPPY CAFE</title>
</head>
<body>	
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="100%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<span class="title01">반려견 맞춤 예약 서비스</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">저희 애견카페는 반려견의 행복한 사회화 교육과 놀이를 위하여 원하는 환경에서 <br><br>
									반려견과 견주가 지낼수 있도록 예약시스템을 준비하였습니다.
									</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="100%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="boardInsertOk" method="post" name="board_frm">
									
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="bid" value="${mid }"></td>
										
									</tr>
									<tr>
										<td><span class="content_text01">글 제목 : </span></td>
										<td><input class="input_type01" type="text" name="btitle"></td>
									</tr>
									<tr>
										<td><span class="content_text01">글 내용 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="bcontent"></textarea></td>
									</tr>									
									<tr>
										<td colspan="2">
											<div style="text-align: right;">
											<input class="button_type01" type="submit" value="완료">
											<input class="button_type01" type="button" value="취소" onclick="script:window.location='community'">
											</div>
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