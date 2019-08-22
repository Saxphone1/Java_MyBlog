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
						<div class="blogs">
							<c:forEach items="${list }" var="al">
								<h3>
									<a href="/">${al.a_title }发大水法</a>
								</h3>
								<figure> <img src="images/01.jpg" width="100"
									height="100"></figure>

								<p>${al.a_begin }</p>
								<a href="action.article?type=all&a_id=${al.a_id }"
									target="_blank" class="readmore">阅读全文${al.a_id }&gt;&gt;</a>

								<p class="autor">
									<span>作者：${al.a_adduser }</span><span>分类：【<a href="/">${al.a_type }</a>】
									</span><span>浏览（<a href="/">${al.a_visit }</a>）
									</span><span>评论（<a href="/">${al.a_comment}</a>）
									</span>
								</p>
								<div class="dateview" align="center">${al.a_addtime }</div>
								<div class="blogs">

									<figure> <img src="images/01.jpg" width="100"
										height="100"></figure>

									<p>
									<h3>
										<a href="/">犯错了怎么办？</a>
									</h3>
									是一个悲观者，感觉社会抛弃了他，脾气、性格在6年的时间里变化很大，很难适应这个社会。人生其实就是不断犯错的过程，在这个过程中不断的犯错，不断的吸取教训，不断的成长。也许日子里的惊涛骇浪，不过是人生中的水花摇晃，别用显微镜放大你的悲伤。
									</p>
									<a href="/" target="_blank" class="readmore">阅读全文&gt;&gt;</a>

									<p class="autor">
										<span>作者：杨青</span><span>分类：【<a href="/">日记</a>】
										</span><span>浏览（<a href="/">459</a>）
										</span><span>评论（<a href="/">30</a>）
										</span>
									</p>
									<div class="dateview">2014-04-08</div>
								</div>
								<div class="blogs">

									<figure> <img src="images/02.jpg" width="100"
										height="100"></figure>
									<p>
									<h3>
										<a href="/">个人博客模板（2014草根寻梦）</a>
									</h3>
									2014第一版《草根寻梦》个人博客模板简单、优雅、稳重果
									</p>
									<a href="/" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
									<p class="autor">
										<span>作者：杨青</span><span>分类：【<a href="/">个人博客模板</a>】
										</span><span>浏览（<a href="/">459</a>）
										</span><span>评论（<a href="/">30</a>）
										</span>
									</p>
									<div class="dateview">2014-02-19</div>
								</div>
								<div class="blogs">
									<h3>
										<a href="/">我的个人博客之——阿里云空间选择</a>
									</h3>
									<figure> <img src="images/03.png" width="100"
										height="100"></figure>
									<p>之前服务器放在电信机房，
										联通用户访问速度很不稳定，经常出现访问速度慢的问题，换到阿里云解决了之前的问题。很多人都问我的博客选得什么空间，一年的费用得多少钱，今天我列个表出来，供大家参考。</p>
									<a href="/" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
									<p class="autor">
										<span>作者：杨青</span><span>分类：【<a href="/">网站建设</a>】
										</span><span>浏览（<a href="/">459</a>）
										</span><span>评论（<a href="/">30</a>）
										</span>
									</p>
									<div class="dateview">2014-01-18</div>
								</div>
							</c:forEach>
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