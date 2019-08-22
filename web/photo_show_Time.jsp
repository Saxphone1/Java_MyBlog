<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@page import="com.yang.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>rain_blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
	<div class="main">

		<jsp:include page="/menu/head.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<div class="blogs">

							<h2>
								<div align="center">
									<a href="" title="根据上传时间显示照片">Show_Time</a>&nbsp;&nbsp; <a
										href="" title="根据相册名显示照片">Show_Type</a>
								</div>
							</h2>

							<%
								List<Photo> list = (List<Photo>) request.getAttribute("list");
								for (Photo p : list) {
							%>
							<div class="mainbar">
								<div class="article">
									<%
										String s[] = p.getP_addtime().toString().split(" ");
									%>
									<p>
										<span class="date"><%=s[0]%></span><%=p.getP_name()%></p>
									<!--  <h2><span> </span></h2>-->

									<div class="clr"></div>
									<img src="<%=p.getP_src()%>" width="400" height="205"
										alt="image" />
									<p>
										上传人：<%=p.getP_adduser()%></p>
								</div>

							</div>

							<%
								}
							%>

						</div>
					</div>

				</div>
				<div class="sidebar">
					<div class="searchform">
						<form id="formsearch" name="formsearch" method="post" action="">
							<span><input name="editbox_search" class="editbox_search"
								id="editbox_search" maxlength="80" value="Search our ste:"
								type="text" /></span> <input name="button_search"
								src="images/search_btn.gif" class="button_search" type="image" />
						</form>
					</div>
					<div class="gadget">
						<h2 class="star">
							<span>Blog_</span> Menu
						</h2>
						<div class="clr"></div>
						<ul class="sb_menu">
							<jsp:include page="/menu/head2.jsp"></jsp:include>
						</ul>
					</div>
					<div class="gadget">
						<h2 class="star">
							<span>Introduce</span>
						</h2>
						<div class="clr"></div>
						<ul class="ex_menu">
							<jsp:include page="/menu/professional_menu.jsp"></jsp:include>
							<div class="about_c"></div>
						</ul>
					</div>
				</div>
				<div class="clr"></div>
			</div>
		</div>

		<jsp:include page="/menu/foot.jsp"></jsp:include>
	</div>
</body>
</html>