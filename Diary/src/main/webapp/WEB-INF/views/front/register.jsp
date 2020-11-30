<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Photo-On Website Template | 404 :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script>
//썸네일 파일명을 가져오는 함수
function getThumbFileName(fullFilePath) {
	var arrString = fullFilePath.split("/");
	console.log(arrString);
	arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
	return arrString.join("/");
}
</script>


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
			<li><a href="../../front/down_load">Download</a></li>	
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
<div class="page_form">
		 <form role="form" action="/front/register" method="post" enctype="multipart/form-data">
        	 <!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> -->
        	<!--
        	controller에서 파라미터 수집시 upload file은 uploadFile 이름으로 server로 넘어간다.(binary data로)
        	하지만 BoardVO에서는 file_1,file_2,file_3의 이름으로 setter를 해줘야 한다.
        	따라서 file_1,file_2,file_3를 hidden으로 넘겨서 controller에서 file이 upload가 안됐을 경우에도
        	파라미터 수집이 되도록(값은 null로 됨) 하기위해 hidden으로 값을 넘긴다.
        	-->
			<!-- <input type="hidden" name="img_file" value=""> -->
			
			<div class="form-group">
			<label>Number</label><br><input class="form-control" name='num' value='<c:out value="${board.num}"/>' readonly="readonly">
			</div>
			
          <div class="form-group">
            <label>Title</label><br> <input class="form-control" name='title' value='<c:out value="${board.title }"/>' readonly="readonly">
          </div>
			<br>
          <div class="form-group">
            <label>Text area</label><br>
            <textarea class="form-control"cols="80" rows="10" name='content' ><c:out value="${board.content}"/></textarea>
          </div>
			<br>
          <div class="form-group">
            <label>Writer</label> <br>
  			<input class="form-control" name='user_id'
    			value='<c:out value="${board.user_id}"/>' readonly="readonly">
          </div>
          <br>
          <div class="form-group">
            <label>이미지 파일</label> <input type="file" class="form-control" name='img_file'>
          </div>
          <br>
          <br><br>
          <button type="submit" class="btn btn-default" data-oper=''>수정</button>
          <button type="submit" class="btn btn-default" data-oper='remove'>삭제</button>
          <button type="reset" class="btn btn-default" onclick="location.href='board_list'">글 목록</button>
        </form>
	</div>
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
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form");

	$('button').on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		console.log(operation);

		if(operation == 'remove'){
				formObj.attr("action", "/front/remove");
			} else if(operation == 'list'){
					self.location="/front/board_list";
					return;
				}
		formObj.submit();
		})
})
</script>
</html>