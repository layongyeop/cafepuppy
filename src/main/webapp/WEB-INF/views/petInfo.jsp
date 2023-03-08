<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<title>PUPPY CAFE</title>
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
				<table style="border-color: white" width="100%" border="1" cellspacing="0" cellpadding="10">
					<tr>
						<td class="imgtitle" colspan="3"><a name="tag1"><span class="title05">소형견</span></a></td>
						
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">포메라니안</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/포메라니안.jpg"></td>
						<td class="skillbox2"><span class="title04">당찬 성격을 가지고 있다. 자기보다 덩치가 큰 개 에게도 기죽지 않고 짖곤 한다.<br><br>
																	성격은 활발하고 학습의욕이 높다. 호기심이 많고 자기 영역에 대한 개념이 확실</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">푸들</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/푸들.jpg"></td>
						<td class="skillbox2"><span class="title04">지능이 높아 훈련을 빨리 익히는 편이다. 반복되는 일을 지겨워 한다.<br> <br>
																짓궂은 장난을 찾아내는 데 선수이며, 가끔 주인이 생각하지 못한 창의적인 사고를 칠 때도 있다.</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">비숑프리제</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/비숑프리제.jpg"></td>
						<td class="skillbox2"><span class="title04">독립심이 강해 혼자 집을 지키게 해도 얌전하며 낙천적이고 사교성도 좋다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">치와와</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/치와와.jpg"></td>
						<td class="skillbox2"><span class="title04">기분에 따라 주인에게 어리광을 부리거나 쌀쌀 맞게 행동한다.<br><br>
																	애정을 한 사람에게만 집중시키는 경향이 있어 질투가 심하다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">닥스훈트</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/닥스훈트.jpg"></td>
						<td class="skillbox2"><span class="title04">밝고 사람을 좋아해 초보자도 키우기 쉽다. 영리해 주인의 말을 잘 이해하지만<br><br>
																 짖거나 무는 성질이 있다. 또 배변 습관을 들이기 어려우므로 처음부터 단호하게 훈련시켜야 한다.  </span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">말티즈</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/말티즈.jpg"></td>
						<td class="skillbox2"><span class="title04">말티즈는 매우 침착하고 응석 꾸러기인 성격이라<br><br>
																	 주인이 안은 채 밖을 걸어도 날뛰지않고 얌전한 편입니다. </span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">시츄</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/시츄.jpg"></td>
						<td class="skillbox2"><span class="title04">자존심이 강하고 고집이 세다. 사람을 잘 따르는 편이다. 주인의 말은 잘 듣지만 <br><br>
																	한편으론 새침데기 같은 성격이 있다. 명령조로 가르치기보다는 칭찬하면서 버릇을 들여야 한다.</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">요크셔테리어</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/요크셔테리어.jpg"></td>
						<td class="skillbox2"><span class="title04">자기 주장이 강하고, 고집이 세다. 밝고, 어리광이 많다. <br><br>
																	주인이 오랫동안 집을 비우거나 다른 곳에 맡기면 풀이 죽고<br><br>
																	 스트레스가 쌓여 병이 나는 섬세한 성향을 가지고 있다.</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">스피츠</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/스피츠.jpg"></td>
						<td class="skillbox2"><span class="title04">주인에게 높은 충성심을 가지고 있으나 다른 사람에게는 높은 경계심과 폐쇄성을 가지고 있어<br><br>
																	 새로운 환경에 적응하는 것에 어려움을 느끼기도 합니다.</span></td>
					<tr>
						<td class="imgtitle" colspan="3"><a name="tag2"><span class="title05">중형견</span></a></td>
						
					</tr>				
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">시바견</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/포메라니안.jpg"></td>
						<td class="skillbox2"><span class="title04">주인에게 충성심과 친밀도가 높으나 그만큼 경계심이 강하다. 영리하여 훈련이 빠르다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><a name="tag2"><span class="title03">웰시코기</span></a></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/웰시코기.jpg"></td>
						<td class="skillbox2"><span class="title04">활기차고 발랄한 성향을 가지고 있습니다. 영리하기까지한데 사고를 쳐도 창의적으로 친다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">프렌치불독</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/프렌치불독.jpg"></td>
						<td class="skillbox2"><span class="title04">단단한 체격에 에너지가 넘친다. 애교가 많고 의외로 조용한 성격</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">비글</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/비글.jpg"></td>
						<td class="skillbox2"><span class="title04">관대하고 침착하며 친화력이 좋다. 하지만 활발한 성격때문에 얌전히 있질 못한다.</span></td>
					</tr>
					<tr>
						<td class="imgtitle" colspan="3"><a name="tag3"><span class="title05">대형견</span></a></td>
						
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">골든리트리버</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/골든리트리버.jpg"></td>
						<td class="skillbox2"><span class="title04"> 매우 차분하고 지능적이며 애정 어린 견종이다. 골든 리트리버는 장난스럽고 <br><br>
																	아이들과 친하게 지내며 다른 반려동물이나 낯선 사람들과 잘 어울리는 경향</span></td>
					
					</tr>
					<tr>
						<td class="skillbox"><a name="tag3"><span class="title03">레보라도리트리버</span></a></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/레보라도리트리버.jpg"></td>
						<td class="skillbox2"><span class="title04">친절하고 따뜻하며 주인을 아주 잘 따른다. 교감을 잘하며 인내심이 강하다<br><br>
															실내에서 키우는 시간이 많다면 생후 2세까지는 온 집안이 운동장이 될 것은 각오해야한다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">시베리안허스키</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/시베리안허스키.jpg"></td>
						<td class="skillbox2"><span class="title04">사람을 좋아하고 장난기가 많다. 고집쟁이이고 경계심이 강하다<br><br>
																털빠짐이 정말 심해, 최소 일주일에 2~3번은 털을 빗겨줄 필요가 있다</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">보더콜리</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/보더콜리.jpg"></td>
						<td class="skillbox2"><span class="title04">매우 영리하며 활동적이고 체력이 넘친다<br><br>	
																		속 털이 엉킬 수 있기 때문에 털 관리에 신경을 써줘야 하는 편이다.털 빠짐이 있어서<br><br>
																		신중히 고려한 뒤에 반려견으로 맞이하는 게 좋다.</span></td>
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">사모예드</span></td>
						<td><img class="img" src="${pageContext.request.contextPath }/resources/img/dog/사모예드.jpg"></td>
						<td class="skillbox2"><span class="title04">영리하고 독립적인 성향을 가지고 있다. 땅을 파는걸 좋아한다<br><br>
																	적응력이 빠르나 서열에 민감하고 사회화 훈련이 중요하다.</span></td>
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