<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    

<header class="main-header">
	<h1>상단영역</h1>
	<script src="<%=request.getContextPath() %>/js/gnb-drop.js"></script>
	<div id="header-wrap" class="view-width">
		<section id="user-deliver">
			<h1>유저메뉴&amp;택배지역검색</h1>
			<div>
				<%-- <section id="delivery-info">
					<h1>택배서비스안내</h1>
					<div>
						<img src="<%=request.getContextPath() %>/images/delivery.gif">
					</div>
				</section> --%>
				<nav id="user-menu">
					<h1>유저메뉴</h1>
					<div>
						<ul>
							<li class="menu pipe"><a href="<%=request.getContextPath() %>/view/member/join.jsp">회원가입</a></li>
							<li class="menu pipe">
								<c:choose>
									<c:when test="${empty logInfo }">
										<a href="<%=request.getContextPath() %>/view/member/login.jsp">로그인</a>
									</c:when>
									<c:otherwise>
										<a href="#">${logInfo.name }님!</a>
										<a href="logout.me">로그아웃</a>
									</c:otherwise>
								</c:choose>
							</li>
							<li class="menu pipe"><a href="notice.bo?side=1&ea=10">고객센터</a></li>
							<!-- <li class="menu"><a href="#">배송지역 검색</a></li> -->
						</ul>
					</div>
				</nav>
			</div>
		</section>
		<section id="logo-top">
			<h1>메인로고영역</h1>
			<div>
				<a href="index.bo">
					<img src="<%=request.getContextPath() %>/images/logo.png">
				</a>
			</div>
		</section>
			<div id="gnb-search row-align">
			
				<section id="menu-bottom">
      					<h1>menu-bottom</h1>
      					<div class="menu-bottom-wrap view-width">
	   						<ul class="space-between" >
	   							<li id="gnb" class="column-center-align">
		   							<span class="bar-wrap">
										<i class="bar1"></i>
										<i class="bar2"></i>
										<i class="bar3"></i>
									</span>
	   							</li>
	   							<li><a href="list.bo">밀스</a></li>
	   							<li><a href="faq.bo">아침간편식</a></li>
	   							<li><a href="notice.bo">한끼</a></li>
	   							<li><a href="#">슈가로로</a></li>
	   							<li><a href="#">간식/음료</a></li>
	   							<li id="search">
	   								<div>
										<form class="search-form" action="search.bo">
												<input id="ch-writer" type="hidden" name="writer" >
												<input id="ch-subject" type="hidden" name="subject">
												<input id="ch-content" type="hidden" name="content">
												<input id="input_ea" type="hidden" name="ea" value="10" />
											<input id="txt" type="search" name="search" value="${param.search }" placeholder="검색어를 입력하세요">
											<button type="submit">SEARCH</button>
										</form>
									</div>
								</li>
	   							<!-- <li><a href="#">다이어트/건강</a></li>
	   							<li><a href="#">이벤트</a></li>
	   							<li><a href="#">고객센터</a></li> -->
	   						</ul>
   						</div>
   						<!-- after가 생성이되는 위치 -->
   						
   						<div class="drop-menu">
   							<div class="view-width">
	   							<ul id="drop-menu" class="view-width row-align">
	   								<li>
	   									<p class="tit"><a href="">밀스</a></p>
	   									<ul>
	   										<li>밀스 오리지널(400kcal)</li>
	   										<li>밀스 라이트(190kcal)</li>
	   										<li>밀스 바이트(170kcal)</li>
	   										<li>밀스 방탄(ketogenic)</li>
	   									</ul>
									</li>
		   							<li>
		   								<p class="tit"><a href="">아침간편식</a></p>
		   								<ul>
	   										<li>모닝죽</li>
	   										<li>모닝스프</li>
	   										<li>모닝 쉐이크</li>
	   									</ul>
									</li>
		   							<li>
		   								<p class="tit"><a href="">한끼</a></p>
		   								<ul>
	   										<li>커리맛집</li>
	   										<li>이노센트</li>
	   										<li>조미료</li>
	   										<li>보리굴비</li>
	   									</ul>
		   							</li>
		   							<li>
		   								<p class="tit"><a href="">슈가로로</a></p>
		   								<ul>
	   										<li>곤약젤리(5kcal)</li>
	   										<li>스파클링(5kcal)</li>
	   										<li>과일청(5kcal)</li>
	   									</ul>
		   							</li>
		   							<li>
		   								<p class="tit"><a href="">간식/음료</a></p>
		   								<ul>
	   										<li>닥터넛츠</li>
	   										<li>시리얼바</li>
	   										<li>음료</li>
	   										<li>브리드엑시트</li>
	   									</ul>
		   							</li>
		   							<!-- <li>
		   								<p class="tit"><a href="">다이어트/건강</a></p>
		   								<ul>
	   										<li>CHC/다이어트 보조제</li>
	   										<li>다이어트 스낵</li>
	   										<li>건강기능식품</li>
	   									</ul>
		   							</li>
		   							<li>
		   								<p class="tit"><a href="">이벤트</a></p>
		   								<ul>
	   										<li>이벤트</li>
	   									</ul>
	   								</li>
		   							<li>
		   								<p class="tit"><a href="">고객센터</a></p>
		   								<ul>
	   										<li>공지사항</li>
	   										<li>FAQ</li>
	   										<li>1:1문의</li>
	   									</ul>
		   							</li> -->
	   							</ul>
   							</div>
   						</div>
      				</section>
				
				
				<%-- <section id="search">
					<h1>검색</h1>
					<div>
						<form class="search-form" action="list.bo">
								<input id="ch-writer" type="hidden" name="writer" >
								<input id="ch-subject" type="hidden" name="subject">
								<input id="ch-content" type="hidden" name="content">
								<input id="input_ea" type="hidden" name="ea" value="10" />
							<input id="txt" type="search" name="search" value="${param.search }" placeholder="검색어를 입력하세요">
							<button type="submit">SEARCH</button>
						</form>
					</div>
						
				</section> --%>
			</div>
			</div>	
				<%-- <section id="cart">
					<h1>카트</h1>
					<div>
						<a href="#"><img src="<%=request.getContextPath() %>/images/ico_cart_x2_v2.png"></a>
					</div>
				</section> --%>
			
		
</header>