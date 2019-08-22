<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="css/index.css" rel="stylesheet">
<!-- CuFon ends -->
</head>
<body>
	<div class="main">

		<jsp:include page="/menu/head.jsp"></jsp:include>
		<br> <br> <br> <br>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<div class="article"></div>
						<div class="article">
							<div class="clr" align="center">
								<h2>
									<span>Message</span>
								</h2>
							</div>
							<form action="action.message?type=submit" method="post"
								id="sendemail">
								<ol>
									<li><label for="name"><span style="color: red">*</span>你的ID</label>
										<input id="name" name="m_name" class="text" /></li>
									<li><label for="message"><span style="color: red">*</span>你的留言</label>
										<textarea id="message" name="m_text" rows="8" cols="50"></textarea>
									</li>
									<li><input type="image" name="imageField" id="imageField"
										src="images/submit.gif" class="send" />
										<div class="clr"></div></li>
								</ol>
							</form>
						</div>

						<br>
						<br>
						<br>
						<h2>
							<span>${count }</span> Responses
						</h2>
						<div class="clr"></div>
						<c:forEach items="${list }" var="ml">
							<div class="comment">
								<a href="#"><img src="images/userpic.gif" width="40"
									height="40" alt="user" class="userpic" /></a>
								<p>
									<a href="#">${ml.m_name }</a> &nbsp;留言时间:<br />${ml.m_addtime }
								</p>
								<p>${ml.m_text }.</p>
							</div>
						</c:forEach>

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