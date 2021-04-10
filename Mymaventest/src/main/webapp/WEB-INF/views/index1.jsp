<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>故事介紹</title>
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
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">

<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/loading.css">
<link rel="stylesheet" href="css/test.css" type="text/css"
	media="screen">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/index1.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>

<link rel="stylesheet" href="css/contentfont.css">
<script>
	$('[data-text]').on('keyup', function() {
		$(this).attr('data-text', $(this).text());
	});
</script>
<script>
	$(document).ready(function() {
<%if (request.getSession().getAttribute("googlelogin") != null) {%>
	signOut();
		onLoad();
<%}%>
	}); //
	$(window).load(function() {
		//
		if (window.name != "bencalie") {
			location.reload();
			window.name = "bencalie";
		} else {
			window.name = "";
		}

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
												<a class="btn btn-navbar btn-navbar_" data-toggle="collapse"
													data-target=".nav-collapse_"> <span class="icon-bar"></span>
													<span class="icon-bar"></span> <span class="icon-bar"></span>
												</a>
												<div class="nav-collapse nav-collapse_ collapse">
													<ul class="nav sf-menu clearfix">
														<li><a
															href="${pageContext.request.contextPath}/toindex">首頁</a></li>
														<li class="active"><a
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
												<div class="span8">
													<div class="box2">
														<div class="box2_top">
															<h1>
																<span style="font-weight: bold;"
																	class=" ld font-effect-fire-animation">故事介紹</span>
															</h1>
														</div>
														<div class="box3_inner">
															<figure class="">
																<img id="myimg" src="images/i1.png" alt="">
															</figure>
															<div class="thumb1 last">
																<div class="thumbnail clearfix">

																	<div class="text-effect">
																		<!-- Select the text in the preview and type in your own -->
																		<h1 class="neon"
																			data-text="本在大正時代的日本，傳說太陽下山後，有「惡鬼」出沒會吃人，亦有「獵鬼人」斬殺惡鬼、保護人們。然而在某一天起了變化，一名賣炭少年全家被鬼殺害，在獵鬼人的指引下，為了尋求唯一倖存但被鬼化卻尚存理智的妹妹變回人的方法，踏上了斬鬼之旅的純和風劍戟奇譚。 「「鬼」是以人類為主食的類人生物，是由鬼的始祖之血而創造的異變生物。處於飢餓狀態下的鬼異常凶暴，甚至會吃掉自己的親人。鬼擁有極強的力氣和肉體再生能力，吃的人越多力量就越強，讓原本只擅長肉搏戰的普通鬼成為「異能鬼」，有別於普通鬼的不死能力與怪力，能使用讓自己身體產生變化的能力「血鬼術」。弱點是懼怕陽光，被陽光照射會導致鬼的肉體崩壞、粉碎而死，因此只在夜晚中行動。有着討厭紫藤花的習性，對鬼來說是一種毒，有些保護獵鬼人的家族會以藤花的家紋作為結界讓自己或住家免受鬼的攻擊。除了日輪刀以外的一般武器無論強弱都無法殺死他們。 鬼的始祖旗下實力強大的十二隻鬼會被授予「十二鬼月」（じゅうにきづき）的位置，又分為「上弦」與「下弦」各六位，眼睛上刻有字樣與號碼（壹貳叄肆伍陸），上弦的鬼雙眼都有刻字，下弦的鬼則只有單眼有刻字。兩階級間的實力差距不是同一次元，113年間上弦成員都不曾改變，實力強弱依號碼次序排列。 人類為了對抗「鬼」而組成「鬼殺隊」（きさつたい），也是故事的核心，人數約為百人以上，雖是不被政府公認的組織，但自古至今進行着獵鬼工作。隊中以天干（甲～癸）分為十個階級，另有最高等級的劍士「柱」，階級越高所得就越高。新手會先由各地的「培育者」所訓練，並藉最終選拔中存活下來獲得鬼殺隊的資格，獲得資格者會獲得玉鋼石、隊服以及一隻用於連絡用會說人話的鎹鴉。鬼殺隊的隊服外型為詰襟，隊服背後寫着「滅」字，是用特殊纖維製作，使弱小的鬼的爪牙無法輕易撕開。因不被政府正式認可，上街與搭乘交通工具時都不能隨意佩帶刀，但政府卻默許他們獵鬼工作。 隊士使用「日輪刀」作為武器，利用內含陽光之力的鋼鐵「猩猩緋沙鐵」和「猩猩緋礦石」所打造的刀，會依據持有者的不同而改變刀刃的顏色。針對一般武器無法造成傷害的鬼所造，只要用其斬斷鬼的頸部就能確實將鬼殺死，只有柱級劍士的日輪刀刀身會刻有「惡鬼滅殺」的刀銘。"
																			contenteditable>本在大正時代的日本，傳說太陽下山後，有「惡鬼」出沒會吃人，亦有「獵鬼人」斬殺惡鬼、保護人們。然而在某一天起了變化，一名賣炭少年全家被鬼殺害，在獵鬼人的指引下，為了尋求唯一倖存但被鬼化卻尚存理智的妹妹變回人的方法，踏上了斬鬼之旅的純和風劍戟奇譚。
																			「「鬼」是以人類為主食的類人生物，是由鬼的始祖之血而創造的異變生物。處於飢餓狀態下的鬼異常凶暴，甚至會吃掉自己的親人。鬼擁有極強的力氣和肉體再生能力，吃的人越多力量就越強，讓原本只擅長肉搏戰的普通鬼成為「異能鬼」，有別於普通鬼的不死能力與怪力，能使用讓自己身體產生變化的能力「血鬼術」。弱點是懼怕陽光，被陽光照射會導致鬼的肉體崩壞、粉碎而死，因此只在夜晚中行動。有着討厭紫藤花的習性，對鬼來說是一種毒，有些保護獵鬼人的家族會以藤花的家紋作為結界讓自己或住家免受鬼的攻擊。除了日輪刀以外的一般武器無論強弱都無法殺死他們。
																			鬼的始祖旗下實力強大的十二隻鬼會被授予「十二鬼月」（じゅうにきづき）的位置，又分為「上弦」與「下弦」各六位，眼睛上刻有字樣與號碼（壹貳叄肆伍陸），上弦的鬼雙眼都有刻字，下弦的鬼則只有單眼有刻字。兩階級間的實力差距不是同一次元，113年間上弦成員都不曾改變，實力強弱依號碼次序排列。
																			人類為了對抗「鬼」而組成「鬼殺隊」（きさつたい），也是故事的核心，人數約為百人以上，雖是不被政府公認的組織，但自古至今進行着獵鬼工作。隊中以天干（甲～癸）分為十個階級，另有最高等級的劍士「柱」，階級越高所得就越高。新手會先由各地的「培育者」所訓練，並藉最終選拔中存活下來獲得鬼殺隊的資格，獲得資格者會獲得玉鋼石、隊服以及一隻用於連絡用會說人話的鎹鴉。鬼殺隊的隊服外型為詰襟，隊服背後寫着「滅」字，是用特殊纖維製作，使弱小的鬼的爪牙無法輕易撕開。因不被政府正式認可，上街與搭乘交通工具時都不能隨意佩帶刀，但政府卻默許他們獵鬼工作。
																			隊士使用「日輪刀」作為武器，利用內含陽光之力的鋼鐵「猩猩緋沙鐵」和「猩猩緋礦石」所打造的刀，會依據持有者的不同而改變刀刃的顏色。針對一般武器無法造成傷害的鬼所造，只要用其斬斷鬼的頸部就能確實將鬼殺死，只有柱級劍士的日輪刀刀身會刻有「惡鬼滅殺」的刀銘。</h1>
																		<div class="gradient"></div>
																		<div class="spotlight"></div>
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
																<span class=" top ld font-effect-fire-animation">看來像是復仇劇的少年漫畫</span>
															</h2>
														</div>

														<div class="box1_inner">
															<div class="date1 font  ld ">鬼和人之間的羈絆</div>
															
																<!-- Select the text in the preview and type in your own -->


																<img src="images/s1.gif">
																<div class="text-effect">
																<h1 class="neons"
																	data-text="						左近次下了暗示，讓禰豆子認為人類是家人，必須要保護人，但是為了不讓人害怕和防止傷人，她嘴上裝上口枷。有人流血也不會讓禰豆子想吃人，在第一次碰到鬼殺隊的當家時，風柱不死川故意流血和刺傷她，引誘禰豆子攻擊人，她也是閉眼忍耐別過頭去不理會眼前的人血。"
																	contenteditable>
																	左近次下了暗示，讓禰豆子認為人類是家人，必須要保護人，但是為了不讓人害怕和防止傷人，她嘴上裝上口枷。有人流血也不會讓禰豆子想吃人，在第一次碰到鬼殺隊的當家時，風柱不死川故意流血和刺傷她，引誘禰豆子攻擊人，她也是閉眼忍耐別過頭去不理會眼前的人血。</h1>
																<div class="gradient"></div>
																<div class="spotlight"></div>
															</div>



															<div class="line1"></div>
															<div class="date1 font  ld ">不停製鬼的鬼及鬼變人的方法</div>
															
																<!-- Select the text in the preview and type in your own -->


																<img src="images/s4.gif">
																<div class="text-effect">
																<h1 class="neons"
																	data-text="鬼吃人維生，吃越多人越強，力量、速度回復能力皆高於人類，身體可以變形，但不能在日光下出沒，必須用日輪刀斬首或讓鬼曝曬在陽光才能讓鬼死亡，否則鬼的傷口可以快速復元，或是被斬首把頭接在脖子上都能快速再生。所以一路上炭治郎必須不停成長，否則不能打敗鬼，也不能問出變回人的情報。"
																	contenteditable>
																	鬼吃人維生，吃越多人越強，力量、速度回復能力皆高於人類，身體可以變形，但不能在日光下出沒，必須用日輪刀斬首或讓鬼曝曬在陽光才能讓鬼死亡，否則鬼的傷口可以快速復元，或是被斬首把頭接在脖子上都能快速再生。所以一路上炭治郎必須不停成長，否則不能打敗鬼，也不能問出變回人的情報。</h1>
																<div class="gradient"></div>
																<div class="spotlight"></div>
															</div>


															<div class="line1"></div>
															<div class="date1 font  ld ">殺鬼組織─鬼滅隊和柱</div>
														
																<!-- Select the text in the preview and type in your own -->


																<img src="images/s3.gif">
																<div class="text-effect">
																<h1 class="neons"
																	data-text="柱殺鬼能力很高，有單獨的住所，也有較好的待遇，每天都很忙，一般來說不會和下層的隊友有接觸。柱也會退休（左近次就是退休當老師）或死亡，通常由前任的柱培養“繼子”，繼子作為繼承者通常實力也很好，不過這些柱也多半因為鬼而家破人亡，對自我和人性多有否定，或對鬼有復仇之心也不在少數。"
																	contenteditable>
																	柱殺鬼能力很高，有單獨的住所，也有較好的待遇，每天都很忙，一般來說不會和下層的隊友有接觸。柱也會退休（左近次就是退休當老師）或死亡，通常由前任的柱培養“繼子”，繼子作為繼承者通常實力也很好，不過這些柱也多半因為鬼而家破人亡，對自我和人性多有否定，或對鬼有復仇之心也不在少數。</h1>
																<div class="gradient"></div>
																<div class="spotlight"></div>
															</div>
															<div class="line1"></div>
															<div class="c">
																<div class="i">
																	<img class="img" style="width: 300px; height: 219px;"
																		src="img/tg.jpg">
																</div>
																<div class="s1"></div>
																<div class="s2"></div>
																<div class="s3"></div>

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
															class="logo2"><img id="logo3" src="images/car2.jpg"
															alt=""></a>
													</div>

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
					</div>
					<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>