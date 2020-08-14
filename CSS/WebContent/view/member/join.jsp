<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/join.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<div>
			<jsp:include page="/view/header.jsp"/>
		</div>
		
		<main>
			<h1>메인영역</h1>
			<div>
				<section id="join" class="view-width">
					<h1>회원가입 form</h1>
					<div class="field_head">
						<p class="page-tit">회원가입</p>
						<p class="sub">
							<span class="ico">*</span>
							필수입력사항
						</p>
					</div>
					<script type="text/javascript">
						var idResult_1=false;//패턴일치
						var idResult_2=false;//중복체크
						var pwResult_1=false;//패턴일치
						$(function(){
							//아이디체크
							$(".id-guide").hide();
							$("#id").keyup(function(){
								var in_str=$("#id").val().trim();
								$(".id-guide").show();
								idResult_1 = engNumMixCheck(in_str);
								if( idResult_1 ){
									$(".id-guide .case1").removeClass("bad");
									$(".id-guide .case1").addClass("good");
								}else{
									$(".id-guide .case1").removeClass("good");
									$(".id-guide .case1").addClass("bad");
								}
							});
							//////////////////////////////////////////////
							//비밀번호 체크
							$(".pw-guide").hide();
							$("#pw").keyup(function(){
								var in_str=$("#pw").val().trim();
								$(".pw-guide").show();
								pwResult_1 = engNumMixCheck(in_str);
								if( pwResult_1 ){
									$(".pw-guide .case1").removeClass("bad");
									$(".pw-guide .case1").addClass("good");
								}else{
									$(".pw-guide .case1").removeClass("good");
									$(".pw-guide .case1").addClass("bad");
								}
							});
							///////////////////
							//비밀번호 확인////////
							$(".pw2-guide").hide();
							$("#pw2").focusout(function(){
								$(".pw2-guide").show();
								var in_str1=$("#pw").val().trim();
								var in_str2=$("#pw2").val().trim();
								if(in_str1!="" && in_str1==in_str2){
									$(".pw2-guide .case1").removeClass("bad");
									$(".pw2-guide .case1").addClass("good");
								}else{
									$(".pw2-guide .case1").removeClass("good");
									$(".pw2-guide .case1").addClass("bad");
								}
							});
							////////////////
							$(".name-guide").hide();
							$("#name").focusout(function(){
								$(".name-guide").show();
								var in_str=$("#name").val().trim();
								
								if(in_str.length>0){
									$(".name-guide .case1").removeClass("bad");
									$(".name-guide .case1").addClass("good");
								}else{
									$(".name-guide .case1").removeClass("good");
									$(".name-guide .case1").addClass("bad");
								}
							});
							///////이메일체크/////////
							$(".email-guide").hide();
							$("#email").focusout(function(){
								var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
								$(".email-guide").show();
								var in_str=$("#email").val().trim();
								
								if( regExp.test(in_str) ){
									$(".email-guide .case1").removeClass("bad");
									$(".email-guide .case1").addClass("good");
								}else{
									$(".email-guide .case1").removeClass("good");
									$(".email-guide .case1").addClass("bad");
								}
							});
							


						});
						
						function engNumMixCheck( in_str ){
							if(in_str.length>=6){
								var checkNumber=/[0-9]/g;
								var checkEnglish=/[A-Za-z]/ig;
								var checkSpecial=/[^A-Za-z0-9]/ig;
								var checkAscii=/[^a-zA-Z0-9~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig;
								var result1=in_str.search( checkNumber );//0~ :숫자포함
								var result2=in_str.search( checkEnglish );//0~ :영문자포함
								var result3=in_str.search( checkSpecial );//-1 :특수문자체크
								var result4=in_str.search( checkAscii );//-1 :아스키체크
								//alert(result1 +":"+ result2 +":"+ result3 +":"+result4);
								if(result1 >=0 && result2>=0 && result3 ===-1 && result4 ===-1){
									return true;//허용하는 문자열
								}else{
									return false;//규칙위반
								}
							}else{
								return false;//자리수부족
							}
						}
						
					</script>
					<form class="join-form" action="member-join.me" method="post">
						<ul>
							<li>
								<ul class="row-align">
									<li>아이디<span class="ico">*</span></li>
									
									<li>
										<input id="id" type="text" name="id" maxlength="16" placeholder="6자이상의 영문 혹은 숫자들 조합(16자 제한)"/>
										<div class="id-guide guide">
											<p class="case1">
												6자 이상의 영문 혹은 숫자들 조합(16자 제한)
											</p>
											<p class="case2">
												아이디 중복확인
											</p>
										</div>
									</li>
								</ul>
							</li>
							<li>
								<ul class="row-align">
									<li>비밀번호<span class="ico">*</span></li>
									<li>
										<input id="pw" type="password" name="pw" placeholder="비밀번호를 입력해주세요"/>
										<div class="pw-guide guide">
											<p class="case1">
												6자 이상의 영문 혹은 숫자들 조합(16자 제한)
											</p>
										</div>
									</li>
								</ul>
							</li>
							<li>
								<ul class="row-align">
									<li>비밀번호확인<span class="ico">*</span></li>
									<li>
										<input id="pw2" type="password" placeholder="비밀번호를 한번 더 입력해주세요"/>
										<div class="pw2-guide guide">
											<p class="case1">
												비밀번호와 일치 하도록 입력하세요!
											</p>
										</div>
									</li>
								</ul>
							</li>
							<li>
								<ul class="row-align">
									<li>이름<span class="ico">*</span></li>
									<li>
										<input id="name" type="text" name="name" placeholder="이름을 입력해주세요"/>
										<div class="name-guide guide">
											<p class="case1">
												이름은 필수항목입니다.
											</p>
										</div>
									</li>
								</ul>
							</li>
							<li>
								<ul class="row-align">
									<li>이메일<span class="ico">*</span></li>
									<li>
										<input id="email" type="email" name="email" placeholder="예 : example@test.com"/>
										<div class="email-guide guide">
											<p class="case1">
												유효한 이메일을 입력하세요!
											</p>
										</div>
									</li>
								</ul>
							</li>
							<li class="join-submit">
								<input type="submit" value="가입하기">
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