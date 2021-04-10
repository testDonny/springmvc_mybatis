<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>影片</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="css/jplayer.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">

<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/loading.css">
<link rel="stylesheet" href="css/index2.css">




<meta name="google-signin-client_id"
	content="263007432658-q703ah0tco3lbdtob98r73niglqhsa8f.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async
	defer></script>
<script src="js/googlelogout.js" type="text/javascript"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/mwheelIntent.js"></script>
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>


<script type="text/javascript" src="js/video.js"></script>
<script>
	$(document).ready(function() {
<%if (request.getSession().getAttribute("googlelogin") != null) {%>
	signOut();
		onLoad();
<%}%>
	//     <script>
		// let dm=["demo/videodemo1.gif","demo/videodemo2.gif","demo/videodemo3.gif","demo/videodemo4.gif"
		// ,"demo/videodemo5.gif","demo/videodemo6.gif","demo/videodemo7.gif","demo/videodemo8.gif","demo/videodemo9.gif",
		// "demo/videodemo10.gif"];

		sss();

	}); //
	$(window).load(function() {
		if (window.name != "bencalie") {
			location.reload();
			window.name = "bencalie";
		} else {
			window.name = "";
		}
		//

	}); //
</script>


<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>      
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>

<body class="main">
	<div id="main">

		<div id="inner">

			<div class="top1_wrapper">
				<div class="container">
					<div class="row">
						<div class="span12">
							<div class="top1">
								<div class="top1_inner clearfix">

									<header>
										<div class="logo_wrapper">
											<a href="${pageContext.request.contextPath}/tochar?chara=c01"
												class="logo"><img id="top1" src="images/logos.png"
												alt=""></a>
										</div>
									</header>



								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="top2_wrapper">
				<div class="container">
					<div class="row">
						<div class="span12">
							<div class="top2">
								<div class="top2_inner clearfix">

									<div class="menu_wrapper">
										<div class="navbar navbar_">
											<div class="navbar-inner navbar-inner_">

												<div class="nav-collapse nav-collapse_ collapse">
													<ul class="nav sf-menu clearfix">

														</li>
														<div class="nav-collapse nav-collapse_ collapse">
															<ul class="nav sf-menu clearfix">
																<li class=""><a
																	href="${pageContext.request.contextPath}/toindex">首頁</a></li>
																<li><a
																	href="${pageContext.request.contextPath}/toindex1">故事</a></li>
																<li class="sub-menu sub-menu-1 active"><a href="#">影片</a>
																	<ul>
																		<!-- <li><a href="index-3.html">Releases</a></li> -->
																		<li class="sub-menu sub-menu-2"><a href="#">影片<em></em></a>
																			<ul>
																				<li><a
																					href="${pageContext.request.contextPath}/toindex2">觀看影片</a>
																				</li></li>
																	</ul></li>
															</ul>
															<li class="sub-menu sub-menu-1"><a href="#">登入與註冊</a>
																<ul>
																	<li class="sub-menu sub-menu-2"><a href="#">使用者<em></em></a>
																		<ul>
																			<li><a
																				href="${pageContext.request.contextPath}/toindex321">註冊</a>
																			</li>
																			<li><a
																				href="${pageContext.request.contextPath}/toindex322">登入</a></li>
																			<li><a
																				href="${pageContext.request.contextPath}/toindex323">忘記密碼</a></li>
																			<li><a
																				href="${pageContext.request.contextPath}/toselect">購買紀錄</a></li>
																			<li><a
																				href="${pageContext.request.contextPath}/tomsg">留言給我</a>

																			</li>
																			<li><a
																				href="${pageContext.request.contextPath}/responsereceive">客服回覆</a></li>

																		</ul></li>
																	<li class="sub-menu sub-menu-2"><a href="#">管理員專區<em></em></a>
																		<ul>
																			<li><a
																				href="${pageContext.request.contextPath}/toadministrator">管理員登入</a>
																			</li>
																			<li><a
																				href="${pageContext.request.contextPath}/toshipment">商品出貨管理</a>
																			</li>
																			<li><a
																				href="${pageContext.request.contextPath}/tofeedback">問題回覆</a></li>
																		</ul></li>
																</ul></li>
															<li><a
																href="${pageContext.request.contextPath}/toindex4">購物</a></li>
															<li><a
																href="${pageContext.request.contextPath}/toindexshop">
																	<img style="width: 60px;" src="images/s5.gif">購物車
															</a></li>
															<li><p id="inn">${username}${administrator}${logout}${googlelogin}
																	<%
																		if (request.getSession().getAttribute("username") == null && request.getSession().getAttribute("administrator") == null
																			&& request.getSession().getAttribute("logout") == null
																			&& request.getSession().getAttribute("googleEmail") == null) {
																	%>
																	歡迎您:遊客
																	<%
																		}
																	%>
																	<%
																		if (request.getSession().getAttribute("username") != null) {
																	%>

																	<a style="display: inline;" class="logout"
																		href="${pageContext.request.contextPath}/logout">11&nbsp;</a>

																	<%
																		}
																	if (request.getSession().getAttribute("googlelogin") != null) {
																	%>
																	<a style="display: inline;" class="g-signout2 logout"
																		href="#" id="Out">Sign out</a>
																	<%
																		}
																	%>
																</p></li>
													</ul>
												</div>
											</div>
										</div>
									</div>





									<div id="content">
										<div class="container">
											<div class="row">
												<div class="span12">
													<div class="box2">
														<div class="box2_top">
															<h1>
																<span style="font-weight: bold;"
																	class="font-effect-fire-animation">鬼滅之刃影片</span>
															</h1>
														</div>
														<div class="box2_inner">

															<ul class="thumbnails thumbnails1 ss">
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=1">
																				<video class="demo" poster="demo/p1.jpg">

																				</video> <!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 1話.mp4" type="video/mp4">
													</video> -->

																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video0}</span> <span>觀看次數: ${look0}</span>
																					</h1>



																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=2">
																				<video class="demo" poster="demo/p1.jpg">

																				</video> <!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 2話.mp4" type="video/mp4">
													</video> -->
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video1}</span> <span>觀看次數: ${look1}</span>
																					</h1>





																				</div>
																			</a>
																		</div>
																	</div>

																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=3">
																				<video class="demo" poster="demo/p1.jpg">

																				</video> <!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 3話.mp4" type="video/mp4">
													</video> -->
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video2}</span> <span>觀看次數: ${look2}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=4">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video3}</span> <span>觀看次數:${look3}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=5">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video4}</span> <span>觀看次數:${look4}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=6">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video5}</span> <span>觀看次數:${look5}</span>
																					</h1>

																				</div>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=7">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video6}</span> <span>觀看次數:${look6}</span>
																					</h1>



																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=8">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>

																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video7}</span> <span>觀看次數:${look7}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=9">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video8}</span> <span>觀看次數:${look8}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=10">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video9}</span> <span>觀看次數:${look9}</span>
																					</h1>



																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=11">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video10}</span> <span>觀看次數:${look10}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=12">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video11}</span> <span>觀看次數:${look11}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=13">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video12}</span> <span>觀看次數:${look12}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=14">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video13}</span> <span>觀看次數:${look13}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=15">
																				<!-- <video width="320" height="250" controls>
														<source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
													</video> --> <video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video14}</span> <span>觀看次數:${look14}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=16">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video15}</span> <span>觀看次數:${look15}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=17">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video16}</span> <span>觀看次數:${look16}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=18">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video17}</span> <span>觀看次數:${look17}</span>
																					</h1>


																				</div>
																			</a>

																		</div>
																	</div>
																</div>

																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=19">
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video18}</span> <span>觀看次數:${look18}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=20">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video19}</span> <span>觀看次數:${look19}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=21">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video20}</span> <span>觀看次數:${look20}</span>
																					</h1>


																				</div>
																			</a>

																		</div>
																	</div>
																</div>

																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=22">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video21}</span> <span>觀看次數:${look21}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=23">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video22}</span> <span>觀看次數:${look22}</span>
																					</h1>


																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=24">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 6話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video23}</span> <span>觀看次數:${look23}</span>
																					</h1>


																				</div>
																			</a>

																		</div>
																	</div>
																</div>


																<div class="row">
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=25">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 4話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video24}</span> <span>觀看次數:${look24}</span>
																					</h1>

																				</div>
																			</a>
																		</div>
																	</div>
																	<div class="span1"></div>
																	<div class="span3">
																		<div class="box1">
																			<a
																				href="${pageContext.request.contextPath}/tovideo?video=26">
																				<!-- <video width="320" height="250" controls>
                                                                <source src="video/鬼滅の刃 5話.mp4" type="video/mp4">
                                                            </video> -->
																				<video class="demo" poster="demo/p1.jpg">

																				</video>
																				<div class="caption">
																					<h1 class="home-title">
																						<span>${video25}</span> <span>觀看次數:${look25}</span>
																					</h1>

																				</div>
																			</a>

																		</div>
																	</div>







																</div>
														</div>






														</ul>
													</div>


												</div>
												<!-- <a style="position: relative; left: 30%; font-size:20px;" href="index-2.html">1</a>
							<a style="position: relative; left: 40%; font-size:20px;" href="index-2_1.html">2</a> -->
											</div>

										</div>



									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="bot1_wrapper">
						<div class="container">
							<div class="row">
								<div class="span12">
									<div class="bot1 clearfix">

										<div class="logo2_wrapper">
											<a href="${pageContext.request.contextPath}/toindex"
												class="logo2"><img id="logo3" src="images/car2.jpg"
												alt=""></a>
										</div>

										<div class="menu_bot">
											<ul id="menu_bot" class="clearfix">
												<li><a
													href="${pageContext.request.contextPath}/toindex">首頁</a></li>
												<li><a
													href="${pageContext.request.contextPath}/toindex1">故事</a></li>
												<li><a
													href="${pageContext.request.contextPath}/toindex2">影片</a></li>
												<!-- <li><a href="index-3.html">Discography</a></li> -->
												<li><a
													href="${pageContext.request.contextPath}/toindex4">購物</a></li>
												<!-- <li><a href="index-5.html">Events</a></li>
														<li><a href="index-6.html">Contact Us</a></li> -->
											</ul>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
<script>
	
</script>

</html>