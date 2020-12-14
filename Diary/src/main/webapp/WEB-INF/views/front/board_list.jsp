<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>

<head>
<title>The Free Photo-On Website Template | Blog :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
			var result = '<c:out value="${result}"/>';

			checkModel(result);

			history.replaceState({}, null, null);

			function checkModel(result) {
				if (result == '' || history.state) {
						return;
					}
				if(parseInt(result) > 0) {
						$(".modal-body").html("게시판" + parseInt(result) + "번이 등록되었습니다.");
					}
					$("#myModal").modal("show");
				} 
			$("#regBtn").on("click", function() {
				self.location = "/front/board_list"
				});
			var actionForm = $("#actionForm");

			$(".paginate_button a").on("click", function(e) {
				e.preventDefault();
				console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
				});

			// 상세보기 클릭 이벤트
			$(".move").on("click",function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='num' value='" + $(this).attr("href")	+ "'>");
				actionForm.attr("action", "/front/details");
				actionForm.submit();
			});
		});
</script>
<div class="wrap">
<div class="header-right">
	<div class="logo">
		<a href="../../front/index"><img src="../resources/images/logo.png" alt="" /> </a>
	</div>
	<div class="menu">
		<ul class="nav">
			<li><a href="../../front/index">Home</a></li> 
			<li class="active"><a href="../../front/board_list?pageNum=1&amount=10">Board</a></li>
			<li><a href="../../front/down_load">Download</a></li>	
			<li><a href="../../front/contact">Contact</a></li>
		</ul>
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

		<table class="type08">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${board_list}" var="board"> 
							<tr>
								<td><c:out value="${board.num}"/></td>
								<td><a class='move' href='<c:out value="${board.num}"/>'><c:out value="${board.title}"/></a></td>
								<td><c:out value="${board.content}"/></td>
								<td><c:out value="${board.user_id}"/></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.date}" /></td>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="page_wrap">
   					<div class="page_nation">
   					
   					<c:if test="${pageMaker.prev}">
							<li class="paginate_button arrow prev"><a href="${pageMaker.startPage -1}"><</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""}">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button arrow next"><a href="${pageMaker.endPage +1}">></a></li>
						</c:if>
   					
   					
   						
   					</div>
				</div>
				<form id='actionForm' action="/front/board_list" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>
				
				
			<div class="readmore">
				<a href="../../front/Writes"><button class="btn btn-3 btn-3e icon-arrow-right">새글쓰기</button></a>
			</div>
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