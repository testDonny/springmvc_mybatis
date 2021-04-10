<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>管理員登入</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="screen">
	<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css"
	type="text/css" media="screen">

	
<link rel="stylesheet" href="css/administrator.css" type="text/css"
	media="screen">	


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
	if (window.name != "bencalie") {
		location.reload();
		window.name = "bencalie";
	} else {
		window.name = "";
	}
	$(document).ready(function() {
		// 		

	}); //

	$(window).load(function() {
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
		<!-- 
		<img src="images/fire1.png" alt="" class="fire1">

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

									<div class="social_wrapper clearfix">
										<ul class="social clearfix">
											<li><a href="#"><img src="images/social_ic1.png"></a></li>
											<li><a href="#"><img src="images/social_ic2.png"></a></li>
											<li><a href="#"><img src="images/social_ic3.png"></a></li>
										</ul>
									</div>

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
												<a class="btn btn-navbar btn-navbar_" data-toggle="collapse"
													data-target=".nav-collapse_"> <span class="icon-bar"></span>
													<span class="icon-bar"></span> <span class="icon-bar"></span>
												</a>
												<div class="nav-collapse nav-collapse_ collapse">
													<ul class="nav sf-menu clearfix">
														<li><a
															href="${pageContext.request.contextPath}/toindex">首頁</a></li>
														<li><a
															href="${pageContext.request.contextPath}/toindex1">故事</a></li>
														<li class="sub-menu sub-menu-1"><a href="#">影片</a>
															<ul>
																<!-- <li><a href="index-3.html">Releases</a></li> -->
																<li class="sub-menu sub-menu-2"><a href="#">影片<em></em></a>
																	<ul>
																		<li><a
																			href="${pageContext.request.contextPath}/toindex2">觀看影片</a>
																		</li></li>
															</ul></li>
													</ul>
													<li class="sub-menu sub-menu-1 active"><a href="#">登入與註冊</a>
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
													<li><p id="inn">${username}${logout}
															<%
																if (request.getSession().getAttribute("username") == null && request.getSession().getAttribute("administrator") == null
																	&& request.getSession().getAttribute("administrator") == null
																	&& request.getSession().getAttribute("logout") == null) {
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
																} else if (request.getSession().getAttribute("logout") != null) {
															%>

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
												<div class="span6">
													<div class="box2">
														<div class="box2_top">
															<h1>
																<span class=" top font-effect-fire-animation">管理員專用</span>
															</h1>
														</div>
														<div class="box2_inner">

															<div class="thumb1 last">
																<div class="thumbnail clearfix">

																	<div class="caption">
																		<div class="row row-centered">
																			<div class="ss">

																				<!-- <h1 class="textcolor ld ld-bounce fontcolor">
																					welcome to register</h1> -->
																				<div class="edit input-group input-group-md">
																				</div>

																				<form
																					action="${pageContext.request.contextPath}/administratorlogin"
																					method="post">

																					<!-- 輸入id -->

																					<div class="input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon1">
																							<i class="glyphicon glyphicon-user"
																							aria-hidden="true"></i>
																						</span><span>帳號</span> <input type="text"
																							class="form-control  texts" name="administrator"
																							id="administrator" value="administratortest"
																							placeholder="請輸入帳號" />

																					</div>

																					<!-- 輸入密碼 -->
																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-lock"></i>
																						</span> <span>密碼&nbsp;</span><input type="password"
																							class="form-control texts" name="passWord"
																							id="passWord" value="administrator123"
																							placeholder="請輸入密碼" /> <br> <input
																							type="submit" class="form-control  texts log"
																							value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;">

																					</div>
																					<p>${msg}</p>
																					<br>

																					<!-- <h1 class=" ld ld-bounce text-secondary bg-warning text-white"  style="color:red;  font-size:30px;"></h1> -->

																					<br> <input type="reset"
																						class="btn btn-success top" name="submit"
																						value="重置"></input>

																				</form>

																			</div>

																		</div>


																	</div>
																</div>
															</div>

														</div>
													</div>

												</div>
												<div class="span6">
	<div class="box2_top">
															<h1>
																<span class=" top font-effect-fire-animation">管理員功能簡介</span>
															</h1>
														</div>
													<div class="box1_inner">

														<!-- 
															<h4><a href="#">Aenean semper aliquet libero</a></h4>-->
			<span class="sa">管理員功能,管理員能夠管理會員購買商品的出貨功能,以及回覆會員所發出的疑問,歡迎管理員使用該功能。</span>




														<!-- <h4><a href="#">Convallis non cursus sed</a></h4>-->


														<!-- <div class="line1"></div>
						
															<img src="images/s4.gif">
															<p>
															
															</p> -->

														<!-- 						
															<div class="text-right"><a href="#" class="button1">news archive</a></div> -->

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
														<div class="menu_bot">
															<ul id="menu_bot" class="clearfix">
																<li><a
																	href="${pageContext.request.contextPath}/toindex">首頁</a></li>
																<li><a
																	href="${pageContext.request.contextPath}/toindex1">故事介紹</a></li>
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