<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>** Gyojin's Profile **</title>
</head>
<body style="background-color: #D2DBE9">
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
									반려견과 견주가 지낼수 있도록 예약시스템을 준비하였습니다.</span>
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
								<form action="memberModifyOk" method="post" name="join_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="mid" readonly="readonly" value="${MemberDto.mid }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호 : </span></td>
										<td><input class="input_type01" type="password" name="mpw" value="${MemberDto.mpw }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호체크 : </span></td>
										<td><input class="input_type01" type="password" name="mpw_check" value="${MemberDto.mpw }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </span></td>
										<td><input class="input_type01" type="text" name="mname" value="${MemberDto.mname }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">전화번호 : </span></td>
										<td><input class="input_type01" type="text" name="mphone" value="${MemberDto.mphone }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견이름 : </span></td>
										<td><input class="input_type01" type="text" name="pmname" value="${PMemberDto.pmname }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견성격 : </span></td>
										<td><input class="input_type01" type="text" name="pmcharacter" value="${PMemberDto.pmcharacter }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견종류 : </span></td>
										<td><select style="font-size: 20px" name="pmspecies" value="${PMemberDto.pmspecies }">
												
												<option value="1">포메라니안</option>
												<option value="2">푸들</option>
												<option value="3">비숑프리제</option>
												<option value="4">치와와</option>
												<option value="5">닥스훈트</option>
												<option value="6">말티즈</option>
												<option value="7">시츄</option>
												<option value="8">요크셔테리어</option>
												<option value="9">스피츠</option>
												<option value="10">시바견</option>
												<option value="11">웰시코기</option>
												<option value="12">프렌치불독</option>
												<option value="13">비글</option>
												<option value="14">골든리트리버</option>
												<option value="15">레보라도리트리버</option>
												<option value="16">시베리안허스키</option>
												<option value="17">보더콜리</option>
												<option value="18">사모예드</option>
											</select>
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견나이 : </span></td>
										<td><input class="input_type01" type="text" name="pmage" value="${PMemberDto.pmage }"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견생일 : </span></td>
										<td><input class="input_type01" type="text" name="pmbirth" placeholder="(예)2020-08-15" value="${PMemberDto.pmbirth }"></td>
									</tr>
									<tr>
										<td colspan="2">
										<div style="text-align: right;">
											<input class="button_type01" type="submit" value="수정완료" >
											<input class="button_type01" type="button" value="수정취소" onclick="script:window.location='index'">
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