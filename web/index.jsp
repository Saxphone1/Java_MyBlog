<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>rain_blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="/js/cufon-yui.js"></script>
<script type="text/javascript" src="/js/arial.js"></script>
<script type="text/javascript" src="/js/cuf_run.js"></script>
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
						<p>
							<span class="date">sep 11, 2016</span> 感觉
						</p>
						<h2>
							<span>NY & Rain</span>
						</h2>
						<div class="clr"></div>
						<img src="images/img1.jpg" width="625" height="205" alt="image" />
						<p>最好的生活是用心甘情愿的态度，过随遇而安的生活。</p>
					</div>
					<div class="article">
						<p>
							<span class="date">aug 29, 2010</span> 阿斯大法
						</p>
						<h2>
							<span>Future</span> technology
						</h2>
						<div class="clr"></div>
						<img src="images/img2.jpg" width="625" height="205" alt="image" />
						<p>发放的撒旦发生大法的事发生大幅沙敦府</p>
						<p class="spec">
							<a href="action.article" class="rm">更多文章 &raquo;</a>
						</p>
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