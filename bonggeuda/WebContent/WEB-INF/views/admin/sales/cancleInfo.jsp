<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<style>
div.tab, div.tab-content {
	margin-left: 25%;
	margin-right: 5%;
}
</style>

<title>OwnerInfo Detail</title>
<link
	href="${pageContext.servletContext.contextPath}/resources/admin/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.servletContext.contextPath}/resources/admin/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script
	src="${pageContext.servletContext.contextPath}/resources/admin/js/scripts.js"></script>
<link
	href="${pageContext.servletContext.contextPath}/resources/admin/css/styles.css"
	rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link
	href="${pageContext.servletContext.contextPath}/resources/admin/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body style="background: white;">
	<!--header-->

	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="index.html">Bonggeuda</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<li><span ><a  href="${ pageContext.servletContext.contextPath }/user/list">???????????????</a></span></li>
            <li onclick="location.href='${pageContext.servletContext.contextPath}/owner/list'"><a>????????????</a></li>
            <li><a  href="${ pageContext.servletContext.contextPath }/user/booklist">????????????</a></li>
            <li onclick="location.href='${pageContext.servletContext.contextPath}/sales/paylist'"><a>????????????</a></li>
            <li><a  href="${ pageContext.servletContext.contextPath }/qna/list">??????&??????</a></li>
            <li><a  href="${ pageContext.servletContext.contextPath }/notice/list">??????&?????????</a></li>
				</ul>

			</div>
		</div>


	</div>
	<div class="clearfix"></div>
	</div>
	</div>
	<!--//-->
	<!-- <div class=" banner-buying">
		<div class=" container">
			<h3>
				<span>?????? ??????</span>
			</h3>

			<div class="clearfix"></div>
		</div>
	</div> -->
	<!--//header-->
	<!--blog-->
	<div class="blog">
		<div class="container">
			<div class="blog-list">
				<nav>
					<div class="col-md-3 blog-sidebar">
						<ul>
							<li class="blog-list" onclick="location.href='${pageContext.servletContext.contextPath}/sales/canclelist'"><a style="color: #6eceda; font-size: 1.3em; font-weight: 600;">?????? ?????? ??????</a></li>
							<li class="blog-list" onclick="location.href='${pageContext.servletContext.contextPath}/sales/stlrequest'"><a>????????????</a></li>
							<li class="blog-list" onclick="location.href='${pageContext.servletContext.contextPath}/sales/paylist'"><a>?????????
									?????? ??????</a></li>
							<li class="blog-list" onclick="location.href='${pageContext.servletContext.contextPath}/sales/taxrequest'"><a>?????? ????????? ??????</a></li>
						</ul>
				</nav>

				<table class="table table-bordered" style="width: 800px;">
					<div class="tab">
						<span class="tab_btn active" data-toggle="tab">???????????? ?????? ??????</span>
					</div>
					<thead></thead>
					<tbody>

						<tr id="target_host">
							<th style="text-align: center; padding-top: 14px;">?????????</th>
							<td><c:out value="${cancle.userName }"></c:out></td>
						</tr>
						<tr id="target_host">
							<th style="text-align: center; padding-top: 14px;">????????? ??????</th>
							<td><c:out value="${cancle.phone }"></c:out></td>
						</tr>

						<!-- ????????? -->
						<tr id="target_host">
							<th style="text-align: center; padding-top: 14px;">?????????</th>
							<td><c:out value="${cancle.accomoName }"></c:out></td>
						</tr>
						<tr id="target_host">
							<th style="text-align: center; padding-top: 14px;">?????????</th>
							<td><c:out value="${cancle.roomName }"></c:out></td>
						</tr>
						
						<tr>
							<th style="text-align: center; padding-top: 14px;">???????????????</th>
							<td><c:out value="${cancle.cancleDate }"></c:out></td>
						</tr>
						
						<tr>
							<th style="text-align: center; padding-top: 14px;">????????????</th>
							<td><c:out value="${cancle.cancleReason }"></c:out></td>
						</tr>
						
						<tr>
							<th style="text-align: center; padding-top: 14px;">?????? ?????? ??????</th>
							<td><c:choose>
												<c:when test="${cancle.refundStatus eq 'N'}">
												????????????
        										</c:when>
												<c:otherwise>
												????????????
         									</c:otherwise>
											</c:choose></td>
						</tr>
						
						<tr>
							<th style="text-align: center; padding-top: 14px;">????????????</th>
							<td><c:out value="${cancle.paymentAmount }"></c:out></td>
						</tr>
						
						<tr>
							<th style="text-align: center; padding-top: 14px;">????????????</th>
							<td><c:out value="${cancle.refundPrice }"></c:out></td>
						</tr>

						<tr>
							<th style="text-align: center; padding-top: 14px;">????????????</th>
							<td><c:out value="${cancle.paymentMethod }"></c:out></td>
						</tr>

						<tr>
							<th style="text-align: center; padding-top: 14px;">?????????</th>
							<td><c:out value="${cancle.paymentTime }"></c:out></td>
						</tr>

					</tbody>
				</table>
				</form>


				
				<div class="submit-layer" style="display: flex;">
					<button onclick="location.href='${pageContext.servletContext.contextPath}/sales/canclelist'" style="margin-left: 60%; width: 50px; height: 30px; margin-top: 1%">
						??????
					</button>
				</div>

			</div>


			<div class="clearfix"></div>

		</div>

	</div>
</body>
</html>