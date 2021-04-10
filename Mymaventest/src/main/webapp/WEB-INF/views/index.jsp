<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
<title>鬼滅之刃</title>
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
<link rel="stylesheet" href="css/jplayer2.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">
<!-- 修改背景圖 -->
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/loading.css">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
    <link rel="stylesheet" href="css/test.css" type="text/css"
	media="screen">
	    <link rel="stylesheet" href="css/ff.css" type="text/css"
    media="screen">
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
<script type="text/javascript" src="js/jquery.jplayer.playlist.js"></script>
<script type="text/javascript" src="js/playlist2.js"></script>

<script type="text/javascript" src="js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="js/index.js" type="text/javascript"></script>
<script src="js/googlelogout.js" type="text/javascript"></script>
  <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

<script>
	if (window.name != "bencalie") {
		location.reload();
		window.name = "bencalie";
	} else {
		window.name = "";
	}
	window.onload = function() {

		var speed = 2;
		var img = document.getElementById("img");
		var imgul = img.getElementsByTagName("ul")[0];
		var imgli = imgul.getElementsByTagName("li");
		imgul.innerHTML = imgul.innerHTML + imgul.innerHTML;

		imgul.style.width = imgli[0].offsetWidth * imgli.length + "px";

		function move() {
			if (imgul.offsetLeft > 0) {
				imgul.style.left = -imgul.offsetWidth / 2 + 'px';

			}
			imgul.style.left = imgul.offsetLeft + speed + 'px';
		};

		var even1 = document.getElementsByTagName("table")[0];
		var right = document.getElementById("right");

		setInterval(move, 160);

	}
</script>

<script>
	// $(function () {
	//   $(window).scroll(function () {
	//     var scrollVal = $(this).scrollTop();
	//     $("span.qScrollTop").text(scrollVal);
	// 	if(scrollVal > 500){
	// 		$("#ss").html("<img id='testt' src='images/test1.png'>");
	// 		document.getElementById("test");
	// 		// alert("ss");
	//   /* 如果滾動的物件捲動 > 500 則觸發指定的動作。*/
	// }
	//   });
	// });

	$(document).ready(

			function() {
				$("#swal2-title").addClass("font-effect-fire-animation");

<%if (request.getParameter("eq")!=null) {%>
	alertT();
<%}%>
<%if (request.getParameter("msg")!=null) {%>
msg();
<%}%>
<%if (request.getAttribute("eqs")!=null) {%>
alertTs();
<%}%>
	
<%if (request.getAttribute("relogin") != null) {%>
	alertTest();
<%}
if (request.getAttribute("plaselogin") != null) {%>
	alertTest1();
<%}
if (request.getAttribute("no") != null) {%>
	alertTest2();
<%}
if (request.getAttribute("no1") != null) {%>
	alertTest();
<%}
if (request.getAttribute("what") != null) {%>
	alertTest3();
<%}
if (request.getAttribute("plaselogins") != null) {%>
	alertTest4();
<%}
if (request.getAttribute("plaseloginss") != null) {%>
	alertTest5();
<%}
				if (request.getAttribute("shopss") != null) {%>
	alertTest6();
<%}
				if (request.getSession().getAttribute("googlelogin") != null) {%>
	signOut();
				onLoad();
<%}else{

}%>
	// camera
				$('#camera_wrap').camera({
					//thumbnails: true
					alignment : 'center',
					autoAdvance : true,
					mobileAutoAdvance : true,
					//fx					: 'simpleFade',
					height : '37%',
					hover : false,
					loader : 'none',
					navigation : true,
					navigationHover : false,
					mobileNavHover : false,
					playPause : false,
					pauseOnClick : false,
					pagination : false,
					time : 7000,
					transPeriod : 1000,
					minHeight : '200px'
				});

				//	carouFredSel
				$('#slider3 .carousel.main ul').carouFredSel({
					auto : {
						timeoutDuration : 8000
					},
					responsive : true,
					prev : '.prev3',
					next : '.next3',
					width : '100%',
					scroll : {
						items : 1,
						duration : 1000,
						easing : "easeOutExpo"
					},
					items : {
						width : '310',
						height : 'variable', //	optionally resize item-height			  
						visible : {
							min : 1,
							max : 4
						}
					},
					mousewheel : false,
					swipe : {
						onMouse : true,
						onTouch : true
					}
				});
				$(window).bind("resize", updateSizes_vat).bind("load",
						updateSizes_vat);
				function updateSizes_vat() {
					$('#slider3 .carousel.main ul').trigger("updateSizes");
				}
				updateSizes_vat();

			}); //

	// $(window).load(function () {
	// 	//

	// }); //
</script>

<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>      
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

<link rel="stylesheet" href="css/index.css">

<!--引用順序而已-->
</head>

<body class="main">


	 <div id="img">

		<ul>
			<li><img src="images/test1.png" /></li>
			<li><img src="images/test2.png" /></li>
			<li><img src="images/test3.png" /></li>
			<li><img src="images/test4.png" /></li>
		</ul>
	</div> 



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
											
											<div class="nav-collapse nav-collapse_ collapse">
												<ul class="nav sf-menu clearfix">

													</li>
													<div class="nav-collapse nav-collapse_ collapse">
														<ul class="nav sf-menu clearfix">
															<li class="active"><a
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
														<li><a
															href="${pageContext.request.contextPath}/toindexshop">
																<img style="width: 60px;" src="images/s5.gif">購物車
														</a></li>
														<li><p id="inn">${username}${administrator}${logout}${googlelogin}
																<%
																	if (request.getSession().getAttribute("googlelogin") != null) {
																%><a style="display: inline;" class="g-signout2 logout"
																	href="#" id="Out">Sign out</a>
																<%
																	} 
																%>

																<%
																	if (request.getSession().getAttribute("username") == null && request.getSession().getAttribute("administrator") == null
																		&& request.getSession().getAttribute("logout") == null&&request.getSession().getAttribute("googlelogin") == null) {
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
																if (request.getSession().getAttribute("administrator") != null) {
																%>
																<a style="display: inline;" class="logout"
																	href="${pageContext.request.contextPath}/administratorlogout">11&nbsp;</a>
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

		<div class="top3_wrapper">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="top3">
							<div class="top3_inner clearfix">

								<div id="slider_wrapper">
									<div id="slider" class="clearfix">
										<div id="camera_wrap">
											<div data-src="images/g1.gif">
												<div class="camera_caption fadeIn">
													<div class="txt1">Welcome to my home</div>
												</div>
											</div>
											<div data-src="images/g2.gif">
												<div class="camera_caption fadeIn">
													<div class="txt1">歡迎來到我的小窩</div>
												</div>
											</div>
											<div data-src="images/g3.gif">
												<div class="camera_caption fadeIn">
													<div class="txt1">我が家へようこそ</div>
												</div>
											</div>
										</div>
									</div>
									<img src="images/kv1.png" alt="" class="kv1">
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div id="content">
			<div class="container">

				<div class="row">
					<div class="span7">
						<div class="box1">
							<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">鬼滅之刃最高人氣角色</span>
								</h2>
							</div>
							<div class="box1_inner ss">

								<div class="thumb1 last">
									<div class="thumbnail clearfix">
										<div class="door">
											<div class="door-l"></div>
											<figure class="">
												<img src="" alt="">
											</figure>
											<div class="door-r"></div>
										</div>

										<div class="caption">

											<p class="fonts">
												竈門祢豆子，漫畫《鬼滅之刃》及其衍生作品中的女主角。竈門炭治郎的妹妹，因鬼舞辻無慘的血液變成了鬼。平日躲藏在炭治郎身後的箱子裡，以理性抑制著作為鬼的本能與炭治郎一同戰鬥。並在決戰篇重新變成了人
												。<br> <br>
											</p>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="span5">
						<div class="box1">
							<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">鬼滅之刃歌曲</span>
								</h2>
							</div>
							<div class="box1_inner m">
								<div class="jplayer_inner">
									<div class="jplayer">
										<div id="jquery_jplayer_1" class="jp-jplayer"></div>
										<div id="jp_container_1" class="jp-audio">
											<div class="jp-type-playlist">
												<div class="jp-gui jp-interface">
													<ul class="jp-controls">
														<li><a href="javascript:;" class="jp-previous"
															tabindex="1">previous</a></li>
														<li><a href="javascript:;" class="jp-play"
															tabindex="1">play</a></li>
														<li><a href="javascript:;" class="jp-pause"
															tabindex="1">pause</a></li>
														<li><a href="javascript:;" class="jp-next"
															tabindex="1">next</a></li>
														<li><a href="javascript:;" class="jp-stop"
															tabindex="1">stop</a></li>
														<li><a href="javascript:;" class="jp-mute"
															tabindex="1" title="mute">mute</a></li>
														<li><a href="javascript:;" class="jp-unmute"
															tabindex="1" title="unmute">unmute</a></li>
														<li><a href="javascript:;" class="jp-volume-max"
															tabindex="1" title="max volume">max volume</a></li>
													</ul>
													<div class="jp-progress">
														<div class="jp-seek-bar">
															<div class="jp-play-bar"></div>
														</div>
													</div>
													<div class="jp-volume-bar">
														<div class="jp-volume-bar-value"></div>
													</div>
													<div class="jp-time-holder">
														<div class="jp-current-time"></div>
														<div class="jp-duration"></div>
													</div>
													<ul class="jp-toggles">
														<li><a href="javascript:;" class="jp-shuffle"
															tabindex="1" title="隨機放歌">隨機放歌</a></li>
														<li><a href="javascript:;" class="jp-shuffle-off"
															tabindex="1" title="隨機放歌 關閉">隨機放歌 關閉</a></li>
														<li><a href="javascript:;" class="jp-repeat"
															tabindex="1" title="重複播放">重複播放</a></li>
														<li><a href="javascript:;" class="jp-repeat-off"
															tabindex="1" title="重複播放 關閉">重複播放 關閉</a></li>
													</ul>
												</div>
												<div class="jp-playlist">
													<div class="playlist-scroll-pane">
														<ul>
															<li></li>
														</ul>
													</div>
													
												</div>

											</div>
										</div>
									</div>
								</div>

							</div>
							<br><br>
							    <div class="c">
        <div class="i">
          <img class="big img" src="images/backs1.jpg"> 
        </div>
        <div class="s1"></div>
        <div class="s2"></div>
        <div class="s3"></div>
        
          </div>

							
						</div>
					</div>
					
				</div>


				<div class="row">
					<div class="span4">
						<div class="box1">
							<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">竈門炭治郎</span>
								</h2>
							</div>
							<div class="box1_inner">

								<div class="thumb1 last">
									<div class="thumbnail clearfix">
										<figure class="">
											<img src="images/g5.gif" alt="">
										</figure>
										<div class="caption">

											<p class="font">
												本作主人公，鬼殺隊劍士。 善良溫柔的少年，重視家人、個性認真頑固有擔當的長男。<br> <br> <br>
												<br>
											</p>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="span4">
						<div class="box1">
							<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">伊之助</span>
								</h2>
							</div>
							<div class="box1_inner">

								<div class="thumb1 last">
									<div class="thumbnail clearfix">
										<figure class="">
											<img  src="images/g8.gif" alt="">
										</figure>
										<div class="caption">

											<p class="font">
												炭治郎同期的鬼殺隊劍士。 赤裸上身，戴著野豬頭的雙刀流少年，渾身肌肉卻長著一張女孩子般精緻漂亮的臉蛋。<br>
												<br> <br>
											</p>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="span4">
						<div class="box1">
							<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">愛哭的善逸</span>
								</h2>
							</div>
							<div class="box1_inner">

								<div class="thumb1 last">
									<div class="thumbnail clearfix">
										<figure class="">
											<img src="images/g7.gif" alt="">
										</figure>
										<div class="caption">

											<p class="font">
												炭治郎同期的鬼殺隊劍士。 消極的膽怯少年，對自己作為劍士的實力完全沒自信，害怕並逃避與鬼的戰鬥<br> <br>
												<br>
											</p>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="span">

						<div class="">
							<div class="box1">
								<div class="box1_top">
									<h2>
										<span class="myf font-effect-fire-animation">角色人氣排名</span>
									</h2>
								</div>
								<div>

									<div class="thumb1 last">
										<div class="thumbnail clearfix">
											<figure class="">
												<div class="container">
													<h1>角色人氣統計表</h1>

													<div class="row">
														<div class="col-sm-8" id="chart">
															<!-- 統計圖畫在這裡 -->
															<canvas id="chartCanvas"></canvas>
														</div>
													</div>
												</div>

												<script>
													$(document)
															.ready(
																	function() {

																		var cityPopulationList = [
																				3999,
																				2187,
																				1544,
																				1022,
																				567 ];
																		var cityNameList = [
																				"1.竈門祢豆子",
																				"2.竈門炭治郎",
																				"3.我妻善逸",
																				"4.嘴平伊之助",
																				"5.栗花落香奈乎" ];

																		// Lab 練習的程式寫在這裡

																		var ctx = document
																				.getElementById("chartCanvas");
																		var pieChart = new Chart(
																				ctx,
																				{
																					type : "doughnut",

																					data : {
																						labels : cityNameList,

																						datasets : [ {
																							data : cityPopulationList,
																							backgroundColor : [
																									"#3e95cd",
																									"#8e5ea2",
																									"#3cba9f",
																									"#e8c3b9",
																									"#c45850" ]

																						} ]
																					},
																					options : {

																						title : {
																							display : true,
																							
																							fontSize : 20
																						},
																						legend : {
																							labels : {
																								
																								fontColor : '#A96360',
																								fontSize : 22
																							}
																						}

																					}
																				})

																	})
												</script>
											</figure>
											<div class="caption">



					

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

		<div id="slider3_wrapper">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="slider3">

							<a class="prev3" href="#"></a> <a class="next3" href="#"></a>
							<div class="carousel-box row">
								<div class="inner span12">
									<div class="carousel main">
										<ul>
											<li>
												<div class="banner banner1">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c11.png" alt=""
															class="img wei-image6">
															<div class="txt1 top water">水柱 富岡義勇</div>
															<div class="txt6 pp water ">比誰都能冷靜判斷的斬鬼之人。富岡義勇（CV.
																櫻井孝宏）水之呼吸的使用者。沉著冷靜不苟言笑，故事一開始發現炭治郎和彌豆子的人，推薦炭治郎拜自己的師傅鱗瀧左近次為師。

															</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner2">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c22.png" alt=""
															class="img img wei-image6">
															<div class="txt1 top insect">蟲柱 胡蝶忍</div>
															<div class="txt5 pp insect">比誰都輕盈飛舞的下毒之人。胡蝶忍（CV.
																早見沙織），蟲之呼吸的使用者。帶著蝴蝶髮飾，說話輕柔的馬尾少女，也是唯一無法砍下鬼的腦袋的柱。除了精湛的製毒技術，也因為精通藥學，所以經營名為「蝶屋敷」的醫療設施，救治重傷的隊員。

															</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner3">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c33.png" alt=""
															class="img wei-image6">
															<div class="txt1 top sound">音柱 宇髄天元</div>
															<div class="txt3 pp sound">比誰都華麗地奔向戰場之人。宇髄天元（CV.
																小西克幸），音之呼吸的使用者。身材壯碩，頭巾上有著許多鑽珠的男子，卸妝後意外地美型。口頭禪是「華麗」，自稱「祭典之神」，忍者家族末裔。
															</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner4">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c44.png" alt=""
															class="img wei-image6">
															<div class="txt1 top afterglow">霞柱 時透無一郎</div>
															<div class="txt4 pp afterglow">
																比誰都擁有劍技才華之人。時透無一郎（CV.
																河西健吾），霞之呼吸的使用者。穿著寬鬆隊服，留著黑色長髮，看起來總是在發單的少年，其實是拿刀
																2個月就當上柱的天才。</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner1">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c99.png" alt=""
															class="img wei-image6">
															<div class="txt1 top fire">炎柱 煉獄 杏壽郎</div>
															<div class="txt6 pp fire">
																比誰都要火熱，擁有高傲精神之人。煉獄杏壽郎（CV.
																日野聰），炎之呼吸的使用者。留著黃紅色相間的長髮，性格樂天，熱情如火，不太聽人說話，卻擁有出色的領導力和判斷力。
															</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner1">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c55.png" alt=""
															class="img wei-image6">
															<div class="txt1 top wind">風柱 不死川實彌</div>
															<div class="txt5 pp wind">
																比誰都懷有強烈滅鬼意志之人。，風之呼吸的使用者。銀白色刺蝟頭，性格粗暴，身上和臉上有許多傷痕，喜愛露肌肉而把衣服敞開。

															</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner2">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c66.png" alt=""
															class="img wei-image6">
															<div class="txt1 top love">戀柱 甘露寺蜜璃</div>
															<div class="txt4 pp love">比誰都容易因悸動而興奮之人。甘露寺蜜璃（CV.
																花澤香菜），戀之呼吸的使用者。留著櫻色長髮，髮尾轉成綠色，紮成三股辮，左右眼下都有一顆淚痣，總是臉紅不止。</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner3">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c77.png" alt=""
															class="img wei-image6">
															<div class="txt1 top snake">蛇柱 伊黑小芭內</div>
															<div class="txt3 pp snake">
																眼神比誰都銳利，足以穿透鬼之人。伊黑小芭內（CV.
																鈴村健一），蛇之呼吸的使用者。用繃帶綁住嘴、擁有異色眼的中長髮男子，身邊帶著名為鏑丸的白色雄蛇。</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner4">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/c88.png" alt=""
															class="img wei-image6">
															<div class="txt1 top rock">岩柱 悲鳴嶼行冥</div>
															<div class="txt4 pp rock">比誰都要會流下慈悲眼淚之人。悲鳴嶼行冥（CV.
																杉田智和），岩之呼吸的使用者。僧侶風格的巨漢男性，額頭上有一條極長的傷痕，雙眼全盲。</div>
														</a>
													</div>
												</div>
											</li>
											<li>
												<div class="banner banner1">
													<div class="banner_inner wei-grid-special1">
														<a href="#"> <img src="images/f8.jpg" alt=""
															class="img wei-image6">
															<div class="txt1 top flower">栗花落 香奈乎</div>
															<div class="txt4 pp flower">
																與炭治郎同期的鬼殺隊員，擁有側單馬尾髮型、紫色瞳孔，笑臉迎人但寡言的女劍士，決戰後所戴髮飾是恩人胡蝶香奈惠的遺物。

															</div>
														</a>
													</div>
												</div>
											</li>

										</ul>
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
					<div class="box1_top">
								<h2>
									<span class="myf font-effect-fire-animation">鬼滅之刃經典場景</span>
								</h2>
							</div>
						<div class="bot1 clearfix">


				

	    <div class="cont s--inactive">
        <!-- cont inner start -->
        <div class="cont__inner">
          <!-- el start -->
          <div class="el">
            <div class="el__overflow">
              <div class="el__inner">
                <div class="el__bg"></div>
                <div class="el__preview-cont">
                  <h2 class="el__heading">決戰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                </div>
                <div class="el__content">
                  <div class="el__text">無限城</div>
                  <div class="el__close-btn"></div>
                </div>
              </div>
            </div>
            
          </div>
          <!-- el end -->
          <!-- el start -->
          <div class="el">
            <div class="el__overflow">
              <div class="el__inner">
                <div class="el__bg"></div>
                <div class="el__preview-cont">
                  <h2 class="el__heading">鬼殺隊&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                </div>
                <div class="el__content">
                  <div class="el__text">產屋敷家</div>
                  <div class="el__close-btn"></div>
                </div>
              </div>
            </div>
       
          </div>
          <!-- el end -->
          <!-- el start -->
          <div class="el">
            <div class="el__overflow">
              <div class="el__inner">
                <div class="el__bg"></div>
                <div class="el__preview-cont">
                  <h2 class="el__heading">考核&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                </div>
                <div class="el__content">
                  <div class="el__text">劈開巨石</div>
                  <div class="el__close-btn"></div>
                </div>
              </div>
            </div>
          
          </div>
          <!-- el end -->
          <!-- el start -->
          <div class="el">
            <div class="el__overflow">
              <div class="el__inner">
                <div class="el__bg"></div>
                <div class="el__preview-cont">
                  <h2 class="el__heading">紫藤花&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                </div>
                <div class="el__content">
                  <div class="el__text">紫藤花</div>
                  <div class="el__close-btn"></div>
                </div>
              </div>
            </div>
       
          </div>
          <!-- el end -->
          <!-- el start -->
          <div class="el">
            <div class="el__overflow">
              <div class="el__inner">
                <div class="el__bg"></div>
                <div class="el__preview-cont">
                  <h2 class="el__heading">產屋敷家</h2>
                </div>
                <div class="el__content">
                  <div class="el__text">產屋敷家庭院</div>
                  <div class="el__close-btn"></div>
                </div>
              </div>
            </div>
      
          </div>
          <!-- el end -->
        </div>
        <!-- cont inner end -->
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
								<a href="index.html" class="logo2" id="logo3"><img
									src="images/car2.jpg" alt=""></a>
							</div>

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
<script type="text/javascript" src="js/indexa.js"></script>



</body>

</html>