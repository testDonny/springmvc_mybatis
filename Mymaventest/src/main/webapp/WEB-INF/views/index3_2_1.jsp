<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>註冊</title>
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
<link rel="stylesheet" href="css/style2.css" type="text/css"
	media="screen">
	<link rel="stylesheet" href="css/index3_2_1.css" type="text/css"
	media="screen">
	

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>





<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript">
$(document).ready(function () {
	

    $("#form1").submit(function () {
        var countTest = 0;
        
        $("#randomError").html("&nbsp;");
        $("#nameError").html("&nbsp;");
        $("#PhoneError").html("&nbsp;");
        $("#passwordError").html("&nbsp;");
        $("#relpasswordError").html("&nbsp;");
        $("#EmailError").html("&nbsp;");
        $("#PhoneError").html("&nbsp;");
        $("#idError").html("&nbsp;");
        var test = [" ", "$", "%", "#"];
        var name = $("#username").val();
        if (name.length < 6 || name.length > 10 || name.trim(name.length) == 0) {
            $("#nameError").html("帳號長度錯誤");
            countTest++;
        }
        var password = $("#password").val();
        if (password.trim(password.length) == 0||password.length<6) {
            $("#passwordError").html("密碼長度錯誤");
            countTest++;
        }
        var relpassword = $("#relpassword").val();
        if (relpassword.trim(relpassword.length) == 0) {
            $("#relpasswordError").html("確認密碼不能為空");
            countTest++;
        } else if (password != relpassword) {
            $("#relpasswordError").html("確認密碼不正確,請從新輸入");
            countTest++;
        }

        var Email = $("#email").val();
        if (Email.trim(Email.length) == 0) {
            $("#EmailError").html("信箱不可為空");
            countTest++;
        }

        var phone = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
        var Phone = $("#phone").val();
        if (Phone.length != 10) {
            $("#PhoneError").html("電話長度不正確");
            countTest++;
        }
        var count = 0;
        for (var x = 0; x < Phone.length + 1; x++) {
            if (count == 10) {
                $("#PhoneError").html("電話請輸入阿拉伯數字");
                countTest++;
                break;
            }
            count = 0;
            for (var y = 0; y < phone.length; y++) {
                if (Phone[x] != phone[y]) {
                    count++;
                }
            }
        }
        var id = $("#id").val();
        if (id.length != 10) {
            $("#idError").html("身分證長度錯誤");
            countTest++;
        }
        var first = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "j"
            , "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
            "V", "W", "X", "Y", "Z"];
        for (var x = 0; x < first.length + 1; x++) {
            if (x == 26) {
                $("#idError").html("身分證字首錯誤");
                countTest++;
                break;
            }
            if (id[0] == first[x]) {
                break;
            }
        }
        if (id[1] != 1 && id[1] != 2) {
            $("#idError").html("身分證格式有誤");
            countTest++;
        }

        var Firstcalculation;
        switch (id[0]) {
            case "A": Firstcalculation = 10; break;
            case "B": Firstcalculation = 11; break;
            case "C": Firstcalculation = 12; break;
            case "D": Firstcalculation = 13; break;
            case "E": Firstcalculation = 14; break;
            case "F": Firstcalculation = 15; break;
            case "G": Firstcalculation = 16; break;
            case "H": Firstcalculation = 17; break;
            case "I": Firstcalculation = 34; break;
            case "J": Firstcalculation = 18; break;
            case "K": Firstcalculation = 19; break;
            case "L": Firstcalculation = 20; break;
            case "M": Firstcalculation = 21; break;
            case "N": Firstcalculation = 22; break;
            case "O": Firstcalculation = 35; break;
            case "P": Firstcalculation = 23; break;
            case "Q": Firstcalculation = 24; break;
            case "R": Firstcalculation = 25; break;
            case "S": Firstcalculation = 26; break;
            case "T": Firstcalculation = 27; break;
            case "U": Firstcalculation = 28; break;
            case "V": Firstcalculation = 29; break;
            case "W": Firstcalculation = 32; break;
            case "X": Firstcalculation = 30; break;
            case "Y": Firstcalculation = 31; break;
            case "Z": Firstcalculation = 33; break;
        }
        var one = parseInt(Firstcalculation / 10);
        var two = Firstcalculation % 10;
        two = two * 9;
        var total = parseInt(one) + parseInt(two) + parseInt(id[1]) * 8 + parseInt(id[2]) * 7 + parseInt(id[3]) * 6 +
            parseInt(id[4]) * 5 + parseInt(id[5]) * 4 + parseInt(id[6]) * 3 + parseInt(id[7]) * 2 + parseInt(id[8]) + parseInt(id[9]);
        if (total % 10 != 0) {
            $("#idError").html("身分證格式有誤");
            countTest++;
        }
        for (var x = 0; x < name.length; x++) {
            for (var i = 0; i < test.length; i++) {
                if (name[x] == test[i]) {
                    $("#nameError").html("帳號不可含有特殊符號");
                    countTest++;
                }
            }
        }
        var emailCount = 0;
        var emailCheck = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "j"
            , "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
            "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i"
            , "j,", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
            "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
        var c = 0;
        for (var x = 0; x < name.length; x++) {
            for (var i = 0; i < emailCheck.length + 1; i++) {
                if (emailCount == 62) {
                    $("#username").html("帳號請輸入英文或阿拉伯數字")
                }
                if (name[x] != emailCheck[i]) {
                    emailCount++;

                }
            }
        }

        for (var x = 0; x < password.length; x++) {
            for (var i = 0; i < test.length; i++) {
                if (password[x] == test[i]) {
                    $("#relpasswordError").html("密碼不可含有特殊符號");
                    countTest++;
                }
            }
        }
        var y = 0;
        for (var x = 0; x < Email.length; x++) {

            if (Email[x] == "@") {
                y++;
            }
        }
        //@只允許一個
        if (y != 1) {
            $("#EmailError").html("信箱格式錯誤");
            countTest++;
        }
        else if (y == 1) {

            Emailsplit = Email.split("@");
            // alert(Emailsplit[0] + " " + Emailsplit[1]);

            if (Emailsplit[0].length < 6 || Emailsplit[0].length > 15 || Emailsplit[0].length == 0 || Email.trim(Email.length) == 0) {
                $("#EmailError").html("長度請輸入6~15字");
                countTest++;
            }
            // alert(Emailsplit[1]);
            if (Emailsplit[1] != "gmail.com" && Emailsplit[1] != "yahoo.com.tw" && Emailsplit[1] != "yam.com" && Emailsplit[1] != "yahoo.com" && Emailsplit[1] != "msn.com") {
                $("#EmailError").html("信箱格式錯誤或者為不支援的信箱");
                countTest++;

            } if (countTest == 0) {
                Email = Emailsplit[0] + "@" + Emailsplit[1];
            }

        }
        var random=<%=request.getAttribute("random")%>
        console.log(random);
        var randoms = $("#random").val();
        
        if(random!=randoms){
        	$("#randomError").html("驗證碼輸入錯誤");
        	countTest++;
        }
        
        if (countTest > 0) {
            return false;
        }
        

        
        


    });
	$("#ss")
	.click(
			function() {
				$("#username").val("patter");
				$("#email").val("x33778899@gmail.com");
				$("#id").val("A123456789");
				$("#phone").val("0912345678");
			
			});
	$("#sss")
	.click(
			function() {
				$("#username").val("tommer");
				$("#email").val("x33778899@gmail.com");
				$("#id").val("A143373530");
				$("#phone").val("0911671234");
			
			});

});	


	$(window).load(function() {
		if(window.name != "bencalie"){
		    location.reload();
		    window.name = "bencalie";
		}
		else{
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
												<a class="btn btn-navbar btn-navbar_" data-toggle="collapse"
													data-target=".nav-collapse_"> <span class="icon-bar"></span>
													<span class="icon-bar"></span> <span class="icon-bar"></span>
												</a>
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
															<li class="sub-menu sub-menu-2 active"><a href="#">使用者<em></em></a>
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
																if (request.getSession().getAttribute("username") == null
																	&& request.getSession().getAttribute("administrator") == null
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
												<div class="span6">
													<div class="box2">
														<div class="box2_top">
															<h1>
																<span class=" top font-effect-fire-animation">歡迎來到註冊</span>
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
																					action="${pageContext.request.contextPath}/register"
																					method="post" id="form1">
																					<!-- 輸入id -->

																					<div class="input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon1">
																							<i class="glyphicon glyphicon-user"
																							aria-hidden="true"></i>
																						</span> <span class="myfont">帳號&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input
																							type="text" class="form-control  texts"
																							name="username" id="username" placeholder="請輸入帳號" />
																						<br>
																						<div class="check" id="nameError">&nbsp;</div>
																					</div>

																					<!-- 輸入密碼 -->
																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-lock"></i>
																						</span><span class="myfont">密碼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
																						<input type="password" class="form-control texts required"
																							name="password" id="password" placeholder="請輸入密碼" />
																						<br>
																						<div class="check" id="passwordError">&nbsp;
																						</div>
																					</div>



																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-lock"></i>
																						</span> <span class="myfont">確認密碼</span><input
																							type="password" class="form-control texts required1" 
																							name="relpassword" id="relpassword"
																							placeholder="請再輸入一次密碼" /><br>
																						<div class="check" id="relpasswordError">&nbsp;
																						</div>
																					</div>

																					
																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-user"></i>
																						</span> <span class="myfont">身分證&nbsp;&nbsp;&nbsp;</span><input
																							type="text" class="form-control texts" name="id"
																							id="id" placeholder="請輸入身分證" /><br>
																						<div class="check" id="idError">&nbsp;</div>
																					</div>

																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-user"></i>
																						</span> <span class="myfont">電話&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input
																							type="text" class="form-control texts"
																							name="phone" id="phone"
																							placeholder="請輸入電話例:0912345678" /><br>
																						<div class="check" id="PhoneError">&nbsp;</div>
																					</div>

																					<div class="edit input-group input-group-md">
																						<span class="input-group-addon" id="sizing-addon2">
																							<i class="glyphicon glyphicon-user"></i>
																						</span><span class="myfont">信箱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
																						<input type="text" class="form-control texts"
																							name="email" id="email" placeholder="請輸入電子信箱" /><br>
																						<div class="check" id="EmailError">&nbsp;</div>
																					</div>
																					<div id="ran">
																						<div id="rr">
																							<br> 驗證碼:<%=request.getAttribute("random")%>
																						</div>
																					</div>
																					<div class="edit input-group input-group-md">
																						<br> <span class="input-group-addon"
																							id="sizing-addon2"> <i
																							class="glyphicon glyphicon-user"></i>
																						</span><span class="myfont">驗證碼&nbsp;&nbsp;&nbsp;</span>
																						<input type="text" class="form-control texts"
																							name="random" id="random" placeholder="請輸入驗證碼" /><br>
																						<div class="check" id="randomError">&nbsp;</div>
																					</div>
																					<br> <input type="submit" class="" id="r"
																						name="r" value="註冊"> <input type="reset"
																						id="res" class="" name="res" value="重置">

														
																				</form>
																												<input type="button" id="ss" value="測試重複">
																													<input type="button" id="sss" value="測試正確">

																			</div>

																		</div>


																	</div>
																</div>
															</div>

														</div>
													</div>

												</div>
												<div class="span6">
													<div class="box1"></div>
													<div class="box1_inner"
														style="border-color: blanchedalmond;">

														<p class="Introduction">
															<span class="context font-effect-fire-animation">服務條款</span><br> 1.1<br>
															歡迎使用本平台 (下稱「本網站」)。使用本網站或開設本帳戶 (下稱「帳戶」)
															前請詳細閱讀以下服務條款，以瞭解您對於 (個別及統稱為、「我們」或「我們的」)
															的法律權利與義務。我們提供的服務（下稱「本服務」）包括 (a) 本網站、(b)
															本網站及透過本網站提供使用之本用戶端軟體所提供的服務，以及 (c)
															透過本網站或其相關服務所提供的所有資訊、連結網頁、功能、資料、文字、影像、相片、圖形、音樂、聲音、影片、訊息、標籤、內容、程式設計、軟體、應用程式服務
															(包括但不限於任何行動應用服務)
															(下稱「內容」)。本服務的任何新增或增強功能亦應受本服務條款的約束。這些服務條款規範您對於我們本所提供之服務的使用行為。
															<br>1.2<br>在成為本網站的使用者之前，您必須閱讀並接受本服務條款所包含、及連結至本服務條款之所有條款，且您必須同意隱私權政策（連結至本服務條款）中有關於處理您的個人資料之規定。
														</p>

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