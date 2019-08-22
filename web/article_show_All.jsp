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
<link href="css/style.css" rel="stylesheet">
<link href="css/media.css" rel="stylesheet">
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
					<div class="ibody">
						<article>
						<div class="index_about">
							<h2 class="c_titile">${article.a_id }斯蒂芬速度</h2>
							<p class="box_c">
								<span class="d_time">发布时间：2014-04-17</span><span>编辑：杨青</span><span>浏览（390）</span><span>评论览（14）</span>
							</p>
							<ul class="infos">
								<p>2014第二版黑色Html5个人博客模板主题《如影随形》，如精灵般的影子会给人一种神秘的感觉。一张剪影图黑白搭配，如果整个网站用黑白灰三色，会显得比较太过沉重，于是，在选择亮色方面，用以红为主色，蓝为辅色。这样就铺上了一些神秘甚至有些俏皮的元素。</p>
								<p>如果你更喜欢用蓝色或者绿色，这也不错，替换关键的颜色值就行了，推荐颜色值：
								<p>Html5响应式两栏布局，LOGO重点突出，首页推荐文章列表以Logo中轴线为时间轴，鼠标Hover触发时间轴左侧栏显示文章发布时间，文字banner动画均以css3代码来实现效果。</p>
							</ul>
							<div class="keybq">
								<p>
									<span>关键字词</span>：黑色,个人博客,时间轴,响应式
								</p>
							</div>
							<div class="nextinfo">
								<p>
									上一篇：<a href="/news/s/2013-09-04/606.html">程序员应该如何高效的工作学习</a>
								</p>
								<p>
									下一篇：<a href="/news/s/2013-10-21/616.html">柴米油盐的生活才是真实</a>
								</p>
							</div>
							<div class="otherlink">
								<h2>相关文章</h2>
								<ul>
									<li><a href="/news/s/2013-07-25/524.html"
										title="现在，我相信爱情！">现在，我相信爱情！</a></li>
									<li><a href="/newstalk/mood/2013-07-24/518.html"
										title="我希望我的爱情是这样的">我希望我的爱情是这样的</a></li>
									<li><a href="/newstalk/mood/2013-07-02/335.html"
										title="有种情谊，不是爱情，也算不得友情">有种情谊，不是爱情，也算不得友情</a></li>
									<li><a href="/newstalk/mood/2013-07-01/329.html"
										title="世上最美好的爱情">世上最美好的爱情</a></li>
									<li><a href="/news/read/2013-06-11/213.html"
										title="爱情没有永远，地老天荒也走不完">爱情没有永远，地老天荒也走不完</a></li>
									<li><a href="/news/s/2013-06-06/24.html" title="爱情的背叛者">爱情的背叛者</a></li>
								</ul>
							</div>
						</div>
						</article>
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