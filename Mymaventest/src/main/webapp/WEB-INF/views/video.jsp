<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>影片觀看</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">


<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css"
	type="text/css" media="screen">


<link rel="stylesheet" href="css/video.css" type="text/css"
	media="screen">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap" rel="stylesheet">
<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
	if (window.name != "bencalie") {
		location.reload();
		window.name = "bencalie";
	} else {
		window.name = "";
	}
	$(document).ready(
			function() {

				// 
				let dms = [ "demo/p1.jpg" ];
				let xx =
<%=request.getParameter("video")%>
	

	function sss() {
					let ss = document.getElementsByClassName("demo");
					for (let x = 0; x < ss.length; x++) {

						for (let y = xx + 1; y <= xx + 6; y++) {

							ss[x].onmouseover = function() {
								ss[x].poster = "demo/videodemo"
										+ [ xx + x + 1 ] + ".gif";
							}
							ss[x].onmouseout = function() {
								ss[x].poster = dms[0];
							}
						}
					}
				}
				sss();
			}); //

	$(window).load(function() {
		//

	}); //
</script>
<style>
</style>
<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>      
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

</head>
<style>
.animation01 {
    position: absolute;
    width: 100%;
    height: 100%;

}

.animation01 .line_content {
    width: 100%;
    height: 50%;
    animation: animation01_content 0.3s ease-in forwards;
}

.animation01 .line_content01 {
    transform-origin: bottom;
}

.animation01 .line_content02 {
    transform-origin: top;
}

.animation01 .line_wrapper {
    width: 100%;
    height: 100%;
}

.animation01 .line_wrapper01 {
    transform-origin: bottom;
    animation: animation01_wrapper01 3.5s ease-in-out 0.2s forwards;
}

.animation01 .line_wrapper02 {
    transform-origin: top;
    animation: animation01_wrapper02 3.5s ease-in-out 0.2s forwards;
}

.animation01 .line01 {
    width: 100%;
    height: 50%;
    background-image: url(img/red.png);
}

.animation01 .line02 {
    width: 100%;
    height: 50%;
    background-image: url(img/s2.jpg);
}

@keyframes animation01_content {
    0% {
        transform: scale3d(1, 0, 1);
    }
    100% {
        transform: scale3d(1, 1, 1);
    }
}

@keyframes animation01_wrapper01 {
    0% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(-50vw);
    }
}

@keyframes animation01_wrapper02 {
    0% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(50vw);
    }
}

.animation04 {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    height: 100%;
    z-index: 9998;
}

.name_plate {

    width: 100%;
    height: 100%;
    

  
    animation: name_plate 1s cubic-bezier(0.165, 0.84, 0.44, 1) 2.8s forwards;
    opacity: 0;
}

@keyframes name_plate {
    0% {
        transform: scale3d(0, 1, 1);
        opacity: 1;
    }
    100% {
        transform: scale3d(1, 1, 1);
        opacity: 1;
    }
}

.name {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: #1d80e8;

    width:100%;
    height:100%;
    
    animation: name 0.8s cubic-bezier(0.165, 0.84, 0.44, 1) 1.8s forwards;
    opacity: 0;
}

@keyframes name {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
    </style>
</head>
<body>

        <div class="animation01">
            <div class="line_content line_content01">
                <div class="line_wrapper line_wrapper01">
                    <div class="line01"></div>
                    <div class="line02"></div>
                </div>
            </div>
            <div class="line_content line_content02">
                <div class="line_wrapper line_wrapper02">
                    <div class="line02"></div>
                    <div class="line01"></div>
                </div>
            </div>
        </div>
        <div class="animation02">
            <div class="square">
                <span class="square_item square_item01"></span>
                <span class="square_item square_item02"></span>
                <span class="square_item square_item03"></span>
                <span class="square_item square_item04"></span>
                <span class="square_item square_item05"></span>
                <span class="square_item square_item06"></span>
                <span class="square_item square_item07"></span>
                <span class="square_item square_item08"></span>
                <span class="circle_item01"></span>
                <span class="circle_item02"></span>
                <span class="circle_item03"></span>
                <span class="circle_item04"></span>
                <span class="circle_item05"></span>
                <span class="circle_item06"></span>
                <span class="circle_item01_1"></span>
                <span class="circle_item02_2"></span>
                <span class="circle_item03_3"></span>
                <span class="circle_item04_4"></span>
                <span class="circle_item05_5"></span>
                <span class="circle_item06_6"></span>
            </div>
        </div>
        <div class="animation03">

        </div>
        <div class="animation04">
            <div class="name_plate"></div>
            <div class="name"><body class="main">

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
                                                                <li class="sub-menu sub-menu-1 "><a href="#">登入與註冊</a>
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
                                                                            } else {
                                                                        %>
            
                                                                        <%
                                                                            if (request.getSession().getAttribute("username") == null && request.getSession().getAttribute("administrator") == null
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
                                                                            }
                                                                        if (request.getSession().getAttribute("administrator") != null) {
                                                                        %>
                                                                        <a style="display: inline;" class="logout"
                                                                            href="${pageContext.request.contextPath}/administratorlogout">11&nbsp;</a>
                                                                        <%
                                                                            }
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
                                                            <div class="span9">
                                                                <div class="box2">
                                                                    <div class="box2_top">
                                                                        <h1>
                                                                            <span class=" top font-effect-fire-animation">鬼滅之刃影片觀看</span>
                                                                        </h1>
                                                                    </div>
                                                                    <%
                                                                        for (int x = 1; x <= 26; x++) {
                                                                        int y = x - 1;
            
                                                                        if (request.getParameter("video").equals("" + x)) {
                                                                    %>
                                                                    <div class="box2_inner">
            
                                                                        <div class="thumb1 last">
                                                                            <div class="thumbnail clearfix">
            
                                                                                <div class="caption">
                                                                                    <div class="row row-centered">
                                                                                        <p>
                                                                                            <span id="ps" class="logo-1 ps">【繁】✡ 鬼滅之刃・0<%=x%>・殘酷
                                                                                                - 四月新番✡<br>
                                                                                                <div id="looks">
                                                                                                    <br> <span class="f">大正時代，竈門炭治郎繼承亡父留下的炭業工作，支撐一家七口，在山上過著樸實的生活。某日他做完生意返家後發現全家遭鬼王鬼舞辻無慘屠殺，而大妹禰豆子變成了鬼。鬼殺隊富岡義勇見狀後本欲斬殺禰豆子，但他在見識到兄妹倆的親情後，推薦炭治郎拜鱗瀧左近次為師，經過兩年訓練，炭治郎學會對抗鬼的呼吸法與劍術，通過考驗加入鬼殺隊。<br>
                                                                                                    <br>
                                                                                                    <br></span>&nbsp;&nbsp;<span class="logo-1 pss"><img src="img/lookst.png">觀看次數:&nbsp;<%=request.getSession().getAttribute("look" + y)%></span></span>
                                                                                    </div>
                                                                                    <br>
            
                                                                                    </p>
                                                                                    <div class="s">
            
            
                                                                                        <video class="myvideo" controls poster="demo/p1.jpg">
                                                                                            <source
                                                                                                src="${pageContext.request.contextPath}/video/no<%=x%>.mp4"
                                                                                                type="video/mp4">
            
                                                                                        </video>
            
                                                                                        <%
                                                                                            }
            
                                                                                        }
                                                                                        %>
            
                                                                                        <div class="edit input-group input-group-md"></div>
            
            
            
                                                                                    </div>
            
                                                                                </div>
            
            
                                                                            </div>
                                                                        </div>
                                                                    </div>
            
                                                                </div>
                                                            </div>
            
                                                        </div>
                                                        <div class="span3">
                                                            <div class="box2_top">
                                                                <h1>
                                                                    <span class=" top font-effect-fire-animation">相關影片</span>
                                                                </h1>
                                                            </div>
                                                            <div class="box1_inner sss" style="padding-bottom:140%;">
            
                                                                <%
                                                                    for (int y = 1; y <= 26; y++) {
                                                                    if (request.getParameter("video").equals("" + y)) {
                                                                        for (int z = y; z <= y + 5; z++) {
            
                                                                    if (z >= 26) {
                                                                        break;
                                                                    }
                                                                %>
            
                                                                <a
                                                                    href="${pageContext.request.contextPath}/tovideo?video=<%=z+1%>">
                                                                    <video class="demo" poster="demo/p1.jpg">
            
                                                                    </video>
            
            
                                                                    <div class="caption">
            
                                                                        <p class="myp ">
                                                                            【繁】✡ 鬼滅之刃・0<%=z + 1%>・殘酷 - 四月新番✡
                                                                        </p>
            
                                                                    </div>
                                                                </a>
            
                                                                <%
                                                                    }
                                                                }
                                                                }
                                                                %>
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
           </div>
        </div>

</body>

</html>

