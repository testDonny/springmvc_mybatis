<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>購物車</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">


<meta name="google-signin-client_id"
	content="263007432658-q703ah0tco3lbdtob98r73niglqhsa8f.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async
	defer></script>


<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="css/camera.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/jplayer.css" type="text/css"
	media="screen">

<!-- 修改背景圖 -->
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/loading.css">


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="js/camera.js"></script>
<script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>

<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/mwheelIntent.js"></script>
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>

<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>


<script type="text/javascript" src="js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">
<script>
	$(window).load(function() {
		if (window.name != "bencalie") {
			location.reload();
			window.name = "bencalie";
		} else {
			window.name = "";
		}
<%if (request.getSession().getAttribute("googlelogin") != null) {%>
	signOut();
		onLoad();
<%}%>
	});
</script>

<script>
	$(function() {

		$("#shopout")
				.click(
						function() {
							//confirm dialog範例
							function confirmTest() {
								Swal.fire(
												{
													title :"<br><br><br>商品總共"+${finalResul}+"元<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>你確定要購買嗎",
													text : "請點選你想按的按鈕",
													html : "<form action='${pageContext.request.contextPath}/shopss' method='post'><input type='hidden' name='v' value='v'><input type='submit' value=''  id='check'></form>",
													confirmButtonText : '取消!',
													background: 'url(images/nn.jpg)',
													allowOutsideClick : false

												}).then(function(result) {
											if (result.value) {
												Swal.fire("您選則了取消");
											}

										});
							}
							confirmTest();
						});
	});
</script>
<link rel="stylesheet" href="css/indexshop.css" media="screen">
<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>      
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

</head>

<body class="main">
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
											class="logo"><img id="top1" src="images/logos.png" alt=""></a>
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
												<li class="active"><a
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
														if (request.getSession().getAttribute("username") != null) {
														%>

														<a style="display: inline;" class="logout"
															href="${pageContext.request.contextPath}/logout">11&nbsp;</a>

														<%
															}
														if (request.getSession().getAttribute("administrator") != null) {
														%>
														<a style="display: inline;" class="logout"
															href="${pageContext.request.contextPath}/administratorlogout">11&nbsp;</a>
														<%
															}
														if (request.getSession().getAttribute("googlelogin") != null) {
														%><a style="display: inline;" class="g-signout2 logout"
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

								<img src="images/menu_shadow1.png" alt="" class="menu_shadow1">

							</div>
						</div>
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
									<span class=" top font-effect-fire-animation">準備結帳摟</span>
								</h1>
							</div>
							<div class="box2_inner">

								<div class="thumb1 last">
									<div class="Commodityprices">


										<%
											int c = 0;
										for (int x = 1; x <= 12; x++) {
											if (request.getSession().getAttribute("ids" + x) == null) {
												c++;
											}
										%>

										<%
											}
										if (c == 12) {
										%>
										<p class="nop">沒有任何資料</p>


										<%
											} else {
										%>
										<table class="table table-sm table-dark Commodityprice">
											<thead>
												<tr>
													<th scope="col">&nbsp;</th>
													<th class="tit" scope="col">ID</th>
													<th class="tit" scope="col">&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;稱</th>
													<th class="tit" scope="col">單價</th>
													<th class="tit" scope="col">數量</th>
													<th class="tit" scope="col">&nbsp;&nbsp;總額</th>
													<th class="tit tits" scope="col">刪除訂單</th>
													<th scope="col">&nbsp;</th>
													<th scope="col">&nbsp;</th>
												</tr>
											</thead>
											<tbody>

												<%
													if (request.getSession().getAttribute("ids1") != null) {
												%><tr>
													<th><img class="imgs" src="images/p1.jpg"></th>


													<td class="sfont textarea"><br>${ids1}</td>
													<td><textarea class="sfonts textarea" readonly>${names1}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price1 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum1}</td>
													<td class="sfont textarea"><br>&nbsp;${result1}</td>
													<td class="sfont textarea"><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">

															<input type="hidden" name="value" value="1"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids2") != null) {
												%><tr>
													<th><img class="imgs" src="images/t1.jpg"></th>


													<td class="sfont textarea"><br>${ids2}</td>
													<td><textarea class="sfonts textarea" readonly>${names2}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price2 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum2}</td>
													<td class="sfont textarea"><br>&nbsp;${result2}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="2"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids3") != null) {
												%><tr>
													<th><img class="imgs" src="images/v1.jpg"></th>


													<td class="sfont textarea"><br>${ids3}</td>
													<td><textarea class="sfonts textarea" readonly>${names3}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price3 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum3}</td>
													<td class="sfont textarea"><br>&nbsp;${result3}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="3"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids4") != null) {
												%><tr>
													<th><img class="imgs" src="images/x11.jpg"></th>


													<td class="sfont textarea"><br>${ids4}</td>
													<td><textarea class="sfonts textarea" readonly>${names4}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price4 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum4}</td>
													<td class="sfont textarea"><br>&nbsp;${result4}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="4"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids5") != null) {
												%><tr>
													<th><img class="imgs" src="images/z11.jpg"></th>


													<td class="sfont textarea"><br>${ids5}</td>
													<td><textarea class="sfonts textarea" readonly>${names5}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price5 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum5}</td>
													<td class="sfont textarea"><br>&nbsp;${result5}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="5"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids6") != null) {
												%><tr>
													<th><img class="imgs" src="images/tt1.jpg"></th>


													<td class="sfont textarea"><br>${ids6}</td>
													<td><textarea class="sfonts textarea" readonly>${names6}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price6 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum6}</td>
													<td class="sfont textarea"><br>&nbsp;${result6}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="6"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids7") != null) {
												%><tr>
													<th><img class="imgs" src="images/m1.jpg"></th>


													<td class="sfont textarea"><br>${ids7}</td>
													<td><textarea class="sfonts textarea" readonly>${names7}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price7 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum7}</td>
													<td class="sfont textarea"><br>&nbsp;${result7}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="7"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids8") != null) {
												%><tr>
													<th><img class="imgs" src="images/ww1.jpg"></th>


													<td class="sfont textarea"><br>${ids8}</td>
													<td><textarea class="sfonts textarea" readonly>${names8}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price8 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum8}</td>
													<td class="sfont textarea"><br>&nbsp;${result8}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="8"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids9") != null) {
												%><tr>
													<th><img class="imgs" src="images/k1.jpg"></th>


													<td class="sfont textarea"><br>${ids9}</td>
													<td><textarea class="sfonts textarea" readonly>${names9}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price9 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum9}</td>
													<td class="sfont textarea"><br>&nbsp;${result9}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="9"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids10") != null) {
												%><tr>
													<th><img class="imgs" src="images/o1.jpg"></th>


													<td class="sfont textarea"><br>${ids10}</td>
													<td><textarea class="sfonts textarea" readonly>${names10}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price10 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum10}</td>
													<td class="sfont textarea"><br>&nbsp;${result10}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="10"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids11") != null) {
												%><tr>
													<th><img class="imgs" src="images/kk1.jpg"></th>


													<td class="sfont textarea"><br>&nbsp;${ids11}</td>
													<td><textarea class="sfonts textarea" readonly>${names11}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${price11 }</td>
													<td class="sfont textarea"><br>&nbsp;${sum11}</td>
													<td class="sfont textarea"><br>${result11}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="11"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<%
													if (request.getSession().getAttribute("ids12") != null) {
												%><tr>
													<th><img class="imgs" src="images/h3.jpg"></th>


													<td class="sfont textarea"><br>${ids12}</td>
													<td><textarea class="sfonts textarea" readonly>${names12}</textarea></td>
													<td class="sfont textarea"><br>&nbsp;${price12 }</td>
													<td class="sfont textarea"><br>&nbsp;&nbsp;${sum12}</td>
													<td class="sfont textarea"><br>&nbsp;${result12}</td>
													<td><form
															action="${pageContext.request.contextPath}/shopdelete"
															method="post">
															<input type="hidden" name="value" value="12"> <input
																class="delete" type="submit" value="              ">
														</form></td>
												</tr>
												<%
													}
												%>
												<tr>

													<td><form
															action="${pageContext.request.contextPath}/shopss"
															method="post">

															<input type="button" value="" id="shopout">
														</form></td>

													<td></td>
													<td colspan=2><a
														href="${pageContext.request.contextPath}/toindex4"> <img
															id="rollback" src="images/u1.png"></a></td>


													<td></td>
													<td colspan=2 class="tit">總共金額: ${finalResul}</td>
											</tbody>
										</table>
										<%
											}
										%>
									</div>
									<div class="caption">
										<div class="row row-centered">
											<div class="">
												<div class="edit input-group input-group-md"></div>

											</div>

										</div>

									</div>
								</div>
							</div>

						</div>
					</div>

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
								class="logo2"><img id="logo3" src="images/car2.jpg" alt=""></a>
						</div>

						<div class="menu_bot">
							<div class="menu_bot">
								<ul id="menu_bot" class="clearfix">
									<li><a href="${pageContext.request.contextPath}/toindex">首頁</a></li>
									<li><a href="${pageContext.request.contextPath}/toindex1">故事介紹</a></li>
									<li><a href="${pageContext.request.contextPath}/toindex2">影片</a></li>
									<!-- <li><a href="index-3.html">Discography</a></li> -->
									<li><a href="${pageContext.request.contextPath}/toindex4">購物</a></li>
									<!-- <li><a href="index-5.html">Events</a></li>
														<li><a href="index-6.html">Contact Us</a></li> -->
								</ul>
							</div>