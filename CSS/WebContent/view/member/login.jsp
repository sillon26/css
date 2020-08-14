<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/login.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<div>
			<jsp:include page="/view/header.jsp"/>
		</div>
		
		<main>
			<h1>메인영역</h1>
			<div>
				<section id="login" class="view-width">
					<h1>로그인 form</h1>
					<div class="field_head">
						<p class="page-tit">로그인</p>
					</div>
					
					<form class="login-form" action="login.me" method="post">
						<c:if test="${!empty userName }">
							<span class="msg"><strong>${userName }</strong>님!회원가입을 축하합니다.!
							<br>로그인후 이용가능합니다.</span>
						</c:if>
						<ul >
							<li>
								<input id="id" type="text" name="id" maxlength="16" placeholder="아이디"/>
								<div class="id-guide guide">
									<p class="case1">
									</p>
								</div>
							</li>
							<li>
								<input id="pw" type="password" name="pw" placeholder="비밀번호"/>
								<div class="pw-guide guide">
									<p class="case1">
									</p>
								</div>
							</li>
							<li class="check-box">
								<div>
									<input type="checkbox"><span>보안접속</span>
								</div>
								<div>
									<a href="#">아이디찾기</a>|<a href="#">비밀번호 찾기</a>
								</div>
							</li>
							<li>
								<span style="color:red">${log_msg }</span>
							<li>
							<li>
								<input type="submit" value="로그인">
							</li>
							<li>
								<input type="button" value="회원가입"> 
							</li>
						</ul>
					</form>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>