<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script type="text/javascript">
		var regexPhone = /^01[01679]-[0-9]{3,4}-[0-9]{4}$/;
		var regExp=/^[a-zA-Z!@#$%^&*/]+[a-zA-Z0-9!@#$%^&*/]{5,17}/g;
			$(function(){
				$("#in").focusout(function(){
					//var result=regExp.test($(this).val().trim());
					var result=$(this).val().trim().match(regExp);
					if(result==null){
						alert("불일치");
					}else{
						alert("매치");
					}
				});
			});
		</script>
		<style type="text/css">
			@font-face{
				font-family: "myfont";
				src:url('font/SCDREAM9.OTF');
			}
			*{
				margin: 0;
				padding: 0;
			}
			.row-align{
				display: flex;
			}
			.bar:after {
				content: "";
				border-left: 1px solid #777;
				font-size: 12px;
				
			}
			.menu a{
				font-size: 15px;
				padding: 0.5em 1em;
			}
			li{
				list-style: none;
				font-family: "myfont";
				
			}
			a{
				color: #000;
			}
			span.bar-wrap{
				position: absolute;
			    display: block;
			    width: 19px;
			    height: 19px;
			    top: 0px;
			    left: 0px;
			    overflow: hidden;
			}
			i{
		    box-sizing: border-box;
		    display: block;
		    position: absolute;
		    left: 0;
		    width: 100%;
		    border-top: 1px solid #000;
		    transition: all .2s ease;
			}
			a.gnb{
				position : relative;
				width: 50px;
				height: 50px;
				display: block;
				padding: 0;
				top:0px;
				left: 0px;
			}
			a.gnb:hover i.bar1{
				top:3px;
				left:3.3px;
				transform: rotate(45deg);
				
			}
			a.gnb:hover i.bar2{
				top:9px;
				transform: rotate(-180deg);
			}
			a.gnb:hover i.bar3{
				top:15px;
				left:3.3px;
				transform: rotate(-45deg);
			}
			
			a.gnb i.bar1{
				top:3px;
			}
			a.gnb i.bar2{
				top:9px;
			}
			a.gnb i.bar3{
				top:15px;
			}
			 
			ul{
			margin: 10px;
			}
		</style>
	</head>
	<body>
		<input type="text" id="in">
		<div>
			<ul class="row-align">
				<li class="menu">
					<a class="gnb" href="#">
						<span class="bar-wrap">
							<i class="bar1"></i>
							<i class="bar2"></i>
							<i class="bar3"></i>
						</span>
					</a>
				</li>
				<li class="menu bar">
					
				<a href="#">메뉴1</a>
				<li class="menu bar"><a href="#">메뉴2</a>
				<li class="menu bar"><a href="#">메뉴3</a>
				<li class="menu"><a href="#">메뉴4</a>
			</ul>
			<div>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/j_r7K3pbSvY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div>
				<input type="search" value="이름">
			</div>
			
		</div>
		
	</body>
</html>