<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/faq.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		
	</head>
	<body>
		<div>
			<jsp:include page="/view/header.jsp"/>
		</div>
		
		<main>
			<h1>메인영역</h1>
			<!-- ///1050px/// -->
			<div class="page-board view-width">
				<!-- ///200px// -->
				<!-- 사이드메뉴위치 -->
				<jsp:include page="/view/sideMenu.jsp"/>
				<!-- //820px/// -->
				<section id="faq">
					<h1>공지사항</h1>
					<div>
						<div>
							<p class="page-tit">자주하는 질문
								<span class="sub">
									고객님들께서 가장 자주하시는 질문을 모두 모았습니다.
								</span>
							</p>
						</div>
						
				<section id="product" class="view-width">
					<h1>상품리스트</h1>
					<div class="product-wrap">
						<div class="list-posi">
							<!-- 상품 표현할 영역 -->
							<div class="list-view">
								<!-- 총 8개의 상품정보 아래UL 태그 2개 묶음 -->
								<div class="product-list-wrap row-align">
									<!-- 첫번째 4개상품 표현할 ul -->
									
									<c:forEach var="faq" items="${faq }" begin="1" end="8">
										
										<ul class="row-align list1">
											<li class="goods">
													
													<a class="goods-img">
														<img alt="상품이미지" src="<%=request.getContextPath() %>/images/bg_150x195.png">								
													</a>
													
													<div class="column-align">
														<span class="name">${faq.subject }</span>
														<span class="sale-price">${faq.writer }</span>
																	<span class="price">${faq.count }</span>
													</div>
													<div class="sale-rate">
														<p>SAVE</p>
														<p class="rate">20%</p>
													</div>
												</li>
											
										</ul>
										
									</c:forEach>
					
								</div>
							</div>
							
						</div>
					</div>
			<!-- //////////////////////////////////////////////////////////////////////////////////////////////// -->
					<div class="product-wrap">
						<div class="list-posi">
							<!-- 상품 표현할 영역 -->
							<div class="list-view">
								<!-- 총 8개의 상품정보 아래UL 태그 2개 묶음 -->
								<div class="product-list-wrap row-align">
									<!-- 첫번째 4개상품 표현할 ul -->
									
									<c:forEach var="faq" items="${faq }" begin="9" end="16">
										
										<ul class="row-align list1">
											<li class="goods">
													
													<a class="goods-img">
														<img alt="상품이미지" src="<%=request.getContextPath() %>/images/bg_150x195.png">								
													</a>
													
													<div class="column-align">
														<span class="name">${faq.subject }</span>
														<span class="sale-price">${faq.writer }</span>
																	<span class="price">${faq.count }</span>
													</div>
													<div class="sale-rate">
														<p>SAVE</p>
														<p class="rate">20%</p>
													</div>
												</li>
											
										</ul>
										
									</c:forEach>
								
								</div>
							</div>
							
						</div>
					</div>
				</section>
					
					</div>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>