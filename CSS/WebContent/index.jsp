<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/myscript.js"></script>
	</head>
	<body>
		<div>
			<jsp:include page="/view/header.jsp"/>
		</div>
		<section id="visual">
			<h1>비주얼영역</h1>
			<div id="visual-area">
				<ul>
					<li class="bg1" value="1"></li>
					<li class="bg2" value="2"></li>
					<li class="bg3" value="3"></li>
					<li class="bg4" value="4"></li>
					<li class="bg5" value="5"></li>
				</ul>
			</div>
			<div id="btn-wrap" >
				<div class="btn view-width">
					<a href="#" id="prev"></a>
					<a href="#" id="next"></a>
				</div>
			</div>
			<div id="list-wrap" >
				<div class="list view-width">
					<a href="#" onclick="listClick('.bg1')"></a>
					<a href="#" onclick="listClick('.bg2')"></a>
					<a href="#" onclick="listClick('.bg3')"></a>
					<a href="#" onclick="listClick('.bg4')"></a>
					<a href="#" onclick="listClick('.bg5')"></a>
				</div>
			</div>
			
		</section>
		<main>
			<h1>메인영역</h1>
			<div>
				<section id="product" class="view-width">
					<h1>상품리스트</h1>
					<div class="product-wrap">
						<div class="goods-tit space-between">
							<div>이상품 어때요?</div>
							<div>더보기</div>
						</div>
						<div class="list-posi">
							<!-- 상품 표현할 영역 -->
							<div class="list-view">
								<!-- 총 8개의 상품정보 아래UL 태그 2개 묶음 -->
								<div class="product-list-wrap row-align">
									<!-- 첫번째 4개상품 표현할 ul -->
									
									<c:forEach var="index" items="${index }" begin="1" end="8">
										
										<ul class="row-align list1">
											<li class="goods">
													
													<a class="goods-img">
														<img alt="상품이미지" src="<%=request.getContextPath() %>/images/bg_150x195.png">								
													</a>
													
													<div class="column-align">
														<span class="name">${index.subject }</span>
														<span class="sale-price">${index.writer }</span>
																	<span class="price">${index.count }</span>
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
							<script type="text/javascript">
								function moreNext() {
									$(".product-list-wrap").css("margin-left",-1050);
									$(".more-right").hide();
									$(".more-left").show();
								}
								function morePrev() {
									$(".product-list-wrap").css("margin-left",0);
									$(".more-right").show();
									$(".more-left").hide();
								}
								
							</script>
							<div class="more-btn">
								<!-- 추가 상품 버튼 -->
								<button class="more-left" onclick="morePrev()">
									<img src="<%=request.getContextPath() %>/images/btn_prev_more.png">
								</button>
								<button class="more-right" onclick="moreNext()">
									<img src="<%=request.getContextPath() %>/images/btn_next_more.png">
								</button>
								
							</div>
						</div>
					</div>
			<!-- //////////////////////////////////////////////////////////////////////////////////////////////// -->
					<div class="product-wrap">
						<div class="goods-tit space-between">
							<div>이상품 어때요?</div>
							<div>더보기</div>
						</div>
						<div class="list-posi">
							<!-- 상품 표현할 영역 -->
							<div class="list-view">
								<!-- 총 8개의 상품정보 아래UL 태그 2개 묶음 -->
								<div class="product-list-wrap1 row-align">
									<!-- 첫번째 4개상품 표현할 ul -->
									
									<c:forEach var="index" items="${index }" begin="9" end="16">
										
										<ul class="row-align list1">
											<li class="goods">
													
													<a class="goods-img">
														<img alt="상품이미지" src="<%=request.getContextPath() %>/images/bg_150x195.png">								
													</a>
													
													<div class="column-align">
														<span class="name">${index.subject }</span>
														<span class="sale-price">${index.writer }</span>
																	<span class="price">${index.count }</span>
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
							<script type="text/javascript">
								function moreNext1() {
									$(".product-list-wrap1").css("margin-left",-1050);
									$(".more-right1").hide();
									$(".more-left1").show();
								}
								function morePrev1() {
									$(".product-list-wrap1").css("margin-left",0);
									$(".more-right1").show();
									$(".more-left1").hide();
								}
								
							</script>
							<div class="more-btn1">
								<!-- 추가 상품 버튼 -->
								<button class="more-left1" onclick="morePrev1()">
									<img src="<%=request.getContextPath() %>/images/btn_prev_more.png">
								</button>
								<button class="more-right1" onclick="moreNext1()">
									<img src="<%=request.getContextPath() %>/images/btn_next_more.png">
								</button>
								
							</div>
						</div>
					</div>
				</section>
			
				<section id="devivery">
					<h1>배송안내</h1>
					<div class="view-width">
						<img alt="배송안내보기" src="<%=request.getContextPath() %>/images/pc_img_delivery.png">
					</div>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>