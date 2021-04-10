<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>商品介紹</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">

<meta name="google-signin-client_id"
	content="263007432658-q703ah0tco3lbdtob98r73niglqhsa8f.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async
	defer></script>
<script src="js/googlelogout.js" type="text/javascript"></script>


<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="css/touchTouch.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/isotope.css" type="text/css"
	media="screen">

<link rel="stylesheet" href="css/animate.css" media="screen">
<link rel="stylesheet" href="css/loading.css" media="screen">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="js/touchTouch.jquery.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


<script>
	if (window.name != "bencalie") {
		location.reload();
		window.name = "bencalie";
	} else {
		window.name = "";
	}
	$(document).ready(function() {
<%if (request.getSession().getAttribute("googlelogin") != null) {%>
	signOut();
		onLoad();
<%}%>
	function alertTest() {
			Swal.fire({
				title : "感謝購買", //標題 
				text : "感謝老闆購買!", //訊息內容(可省略)
				imageUrl : "images/shopok.gif",
				imageWidth : 400,
				imageHeight : 200,

			});
		}
<%System.out.println(" v " + request.getParameter("v"));%>
	
<%if (request.getParameter("v") != null) {%>
	alertTest();
<%}%>
	}); //
	$(window)
			.load(
					function() {
						// isotop
						var $container = $('#isotope-items'), $optionSet = $('#isotope-options'), $optionSets = $('#isotope-filters'), $optionLinks = $optionSets
								.find('a');
						$container.isotope({
							filter : '*',
							layoutMode : 'fitRows'
						});
						$optionLinks.click(function() {
							var $this = $(this);
							// don't proceed if already selected 
							if ($this.hasClass('selected')) {
								return false;
							}
							$optionSet.find('.selected')
									.removeClass('selected');
							$this.addClass('selected');

							var selector = $(this).attr('data-filter');
							$container.isotope({
								filter : selector
							});
							return false;
						});
						$(window).on("resize", function(event) {
							$container.isotope('reLayout');
						});

						// touchTouch
						$('.thumb-isotope .thumbnail a').touchTouch();

					}); //
</script>
<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>      
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
<link rel="stylesheet" href="css/index4.css" media="screen">

</head>

<body class="main">



	<div id="main">

		<!-- <img src="images/fire1.png" alt="" class="fire1">

<img src="images/guitar1.png" alt="" class="guitar1">

<img src="images/guitar2.png" alt="" class="guitar2"> -->


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
														<li><a
															href="${pageContext.request.contextPath}/toindex">首頁</a></li>
														<li><a
															href="${pageContext.request.contextPath}/toindex1">故事</a></li>
														<li class="sub-menu sub-menu-1"><a href="#">影片</a>
															<ul>

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
													<li class="active"><a
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
													<!-- <li><a href="index-5.html">使用者</a></li> -->
													<!-- <li><a href="index-6.html">Contact Us</a></li> -->
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
																<span style="font-weight: bold;" class="font-effect-fire-animation">商品簡介</span>
															</h1>
														</div>
														<div class="box2_inner sss">

															<div id="isotope-options">
																<ul id="isotope-filters" class="clearfix">
																	<li><a href="#" class="order btn order1 ld "
																		data-filter="*"><br>
																			<p class="d">所有商品</p></a></li>
																	<li><a href="#" data-filter=".isotope-filter1"
																		class="order btn order1 ld "><br>
																			<p class="d">竈門禰豆子</p></a></li>
																	<li><a href="#" data-filter=".isotope-filter2"
																		class="order btn order1 ld "><br>
																			<p class="d">竈門炭治郎</p></a></li>
																	<li><a href="#" data-filter=".isotope-filter3"
																		class="order btn order1 ld "><br>
																			<p class="d">其他</p></a></li>
																</ul>
															</div>

															<ul class="thumbnails thumbnails-iisotope"
																id="isotope-items">
																<li class="isotope-element isotope-filter3">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/p1.jpg">
																				<figure>
																					<img src="images/p1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=1"
																			class="btn btn-info commodity "><p
																				class="ld ld-bounce c">鬼滅之皮__詳細資料</p></a>

																	</div>
																</li>
																<li class="isotope-element isotope-filter3">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/t1.jpg">
																				<figure>
																					<img src="images/t1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=2"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">伊之助__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter1">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/v1.jpg">
																				<figure>
																					<img src="images/v1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>

																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=3"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門禰豆子1__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter3">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/x11.jpg">
																				<figure>
																					<img src="images/x11.jpg " class="carimg  " alt="">
																					<em></em>
																				</figure>

																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=4"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">我妻善逸__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter2">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/z11.jpg">
																				<figure>
																					<img src="images/z11.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=5"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門炭治郎1__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter1">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/tt1.jpg">
																				<figure>
																					<img src="images/tt1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=6"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門禰豆子2__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter1">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/m1.jpg">
																				<figure>
																					<img src="images/m1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=7"
																			class="btn btn-info commodity"><p
																				class="
																				ld ld-bounce c">竈門禰豆子3__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter2">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/ww1.png">
																				<figure>
																					<img src="images/ww1.png" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=8"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門炭治郎2__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter3">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/k1.jpg">
																				<figure>
																					<img src="images/k1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=9"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">水柱 富岡義勇__詳細資料</p></a>

																	</div>
																</li>
																<li class="isotope-element isotope-filter3">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/o1.png">
																				<figure>
																					<img src="images/o1.png" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=10"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">蟲柱 胡蝶忍__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter2">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/kk1.jpg">
																				<figure>
																					<img src="images/kk1.jpg" class="carimg  " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=11"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門炭治郎3__詳細資料</p></a>
																	</div>
																</li>
																<li class="isotope-element isotope-filter1">
																	<div class="thumb-isotope">
																		<div class="thumbnail clearfix">
																			<a href="images/h3.jpg">
																				<figure>
																					<img src="images/h3.jpg" class="carimg " alt="">
																					<em></em>
																				</figure>
																			</a>
																		</div>
																		<a
																			href="${pageContext.request.contextPath}/toindex4_1?value=12"
																			class="btn btn-info commodity"><p
																				class="ld ld-bounce c">竈門禰豆子4__詳細資料</p></a>
																	</div>
																</li>

															</ul>



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
															<a href="index.html" class="logo2"><img id="logo3"
																src="images/car2.jpg" alt=""></a>
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

</html>