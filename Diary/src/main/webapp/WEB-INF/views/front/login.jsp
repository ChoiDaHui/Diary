<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Photo-On Website Template | 404 :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
<div class="wrap">
<div class="header-right">
	<div class="logo">
		<a href="../../front/index"><img src="../resources/images/logo.png" alt="" /> </a>
	</div>
	<div class="menu">
		<ul class="nav">
			<li class="active"><a href="../../front/index">Home</a></li> 
			<li><a href="../../front/board_list">Board</a></li>
			<li><a href="../../front/down_list">Download</a></li>	
			<li><a href="../../front/contact">Contact</a></li>
		</ul>
		<br>
		<ul>
			<li><a href="../../front/login"><button class="btn btn-3 btn-3e icon-arrow-right">Login</button></a></li>
			<br>
			<li><a href="../../front/join_mem"><button class="btn btn-3 btn-3e icon-arrow-right">Join_member</button></a>
		</ul>
	</div>
	<div class="clear"></div>
</div>
<div class="header-left">
<div class="main" style="margin-top: 0">
<form method="post">
<div class="page"><!-- 메인 화면, 로그인 폼을 만들고  -->
            <div class="box_login">
                 <h2>로그인</h2>
                 <br>
               	<div class="legend">아이디</div>
                <input type="userid" id="loginId" name="loginId" >
                <br>
				<div class="legend">비밀번호</div>
                <input type="password" id="loginPw" name="password">
            </div>
            <br>
            <button type="submit" class="btn btn-3 btn-3e icon-arrow-center">로그인</button>
            <div class="login_append">
            <br>
                <div class="inp_chk"> <!-- 체크시 checked 추가 -->
                <input type="checkbox" id="keepLogin" class="inp_radio"  name="keepLogin">
            
            <label for="keepLogin" class="lab_g">
        <span class="img_top ico_check"></span>
        <span class="txt_lab" style="color: white">로그인 상태 유지</span>
        	</label>
                </div>
                <br>
                <span class="txt_find">
                <a href="../../search/loginId" class="link_find">아이디</a>
                    / 
                <a href="../../search/password" class="link_find">비밀번호 찾기</a>
                </span>
            </div>

</div>
</form>
	<div class="clear"></div>
</div>
</div>
<div class="clear"></div>
</div>
<div class="footer-bg">
<div class="wrap"> 
<div class="f-main">
<div class="f-icons">
<h4>Follow Us</h4>
	<nav>
	<ul>
		<li><a href="#"><img src="images/fb.png" title="facebook" alt=""></a></li>
		<li><a href="#"><img src="images/twitter.png" title="twitter" alt=""></a></li>
		<li><a href="#"><img src="images/gplus.png" title="gplus" alt=""></a></li>
		<li><a href="#"><img src="images/feed.png" title="feed" alt=""></a></li>
		<li><a href="#"><img src="images/plus.png" title="pinterest" alt=""></a></li>
	</ul>
	</nav>
</div>
<div class="f-grid">
	<h4>Features</h4>
	<nav>	
		<ul>
			<li><a href="">Website Features</a></li>
			<li><a href="">Small Gallery Websited</a></li>
			<li><a href=""> Premium Galleries</a></li>
			<li><a href="">Features Blogs</a></li>
			<li><a href="">Free Example Sites</a></li>
		</ul>
	</nav>
</div>
<div class="f-grid">
	<h4>Latest News</h4>
	<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.many variations of passages  make a type .</p>
	<a href="">4 hours ago</a>&nbsp;<span>by</span>&nbsp;<a href="">Smith</a>
	<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies ,</p>
		<a href="">8 hours ago</a>&nbsp;<span>by</span>&nbsp;<a href="">Smith</a>
</div>
<div class="clear"></div>
</div>
</div>
</div>
<div class="ftr-bg">
	<div class="wrap"> 
		<div class="footer">
				<p class="w3-link"><span>&copy; 2013 photo_on. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>
</div>
</body>
</html>