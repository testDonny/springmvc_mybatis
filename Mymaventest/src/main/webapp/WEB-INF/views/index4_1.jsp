<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>詳細資料</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/csWs">
	  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Rancho&effect=fire-animation|3d-float">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link href="css/index4_1.css" rel="stylesheet" type="text/css"
	media="screen">


<script>
if(window.name != "bencalie"){
    location.reload();
    window.name = "bencalie";
}
else{
    window.name = "";
}
window.onload = function () {

		var y=document.getElementById("order");
	  var x=document.getElementsByClassName("Commodityprice")[0];
  	function order(){
    		y.onmouseover=function(){
				x.style.visibility="visible";

    		};
    		y.onmouseout=function(){
    			x.style.visibility="hidden";
    		};

    	};
     	order();
     	

    }
    
</script>


</head>

<body class="container">

	<div class="page-header">
		<div class="carr">
			<h1 class="animate__hinge ">
				<span class="car">歡迎來到購物車</span>
				<div style="float: right; cursor: pointer;">
					<a id="order" href="${pageContext.request.contextPath}/toindexshop">
						<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span
							class="badge badge-notify my-cart-badge"> ${shop}</span>
					</a> <br> <br> <br> <br> <br>
				</div>
		</div>
	</div>


	<div class="boxs">

		<div class="inner">
			<span><a
				href="${pageContext.request.contextPath}/toindex4_1?value=1"><img
					src="images/pxx1.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=2"><img
					src="images/pxx2.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=3"><img
					src="images/pxx3.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=4"><img
					src="images/pxx4.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=5"><img
					src="images/pxx5.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=6"><img
					src="images/pxx6.jpg"></a> <a
				href="${pageContext.request.contextPath}/toindex4_1?value=7"><img
					src="images/pxx7.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=8"><img
					src="images/pxx8.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=9"><img
					src="images/pxx9.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=10"><img
					src="images/pxx10.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=11"><img
					src="images/pxx11.jpg"></a><a
				href="${pageContext.request.contextPath}/toindex4_1?value=12"><img
					src="images/pxx12.jpg"></a> </span>

		</div>

	</div>

	<div class="Commodityprices">
		<table class="table table-sm table-dark Commodityprice">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">名稱</th>
					<th scope="col">價錢</th>
					<th scope="col">數量</th>
					<th scope="col">總額</th>
				</tr>
			</thead>
			<tbody>

				<%
					if (request.getSession().getAttribute("buy") != null) {
				%>
				<%
					for (int x = 1; x <= 12; x++) {

					if (request.getSession().getAttribute("ids" + x) == null) {
						continue;
					} else {
				%>
				<tr>
					<th><%=request.getSession().getAttribute("ids" + x)%></th>
					<td><%=request.getSession().getAttribute("names" + x)%></td>
					<td><%=request.getSession().getAttribute("price" + x)%></td>
					<td><%=request.getSession().getAttribute("sum" + x)%></td>
					<td><%=request.getSession().getAttribute("result" + x)%></td>
				</tr>
				<tr>


					<%
						}
					}
					%>
				
				<tr>
					<td></td>
					<td></td>
					<td colspan="2">總共金額 &nbsp;&nbsp;&nbsp;${finalResul}</td>
					<td></td>
					<%
						}
					%>
				
			</tbody>
		</table>
	</div>
	<div id="carbon-block" align="center" style="margin: 30px auto;"></div>
	<div align="center" style="margin: 30px auto;">
		<script type="text/javascript">
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>


		<div id="content">
			<div class="container">
				<div class="row">
					<div class="span12">
						<figure>

							<%
								if (request.getParameter("value").equals("1")) {
							%>


							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgs" src="images/p1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgs" src="images/p1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgs" src="images/p1.jpg">
									</div>
									<div class="right ">
										<img class="imgs" src="images/p1.jpg">
									</div>
								</div>
							</div>


							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id1} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name1} <br>
									${content1 } <br>商品價格: ${price1}
								</p>
							</div>
							<%
								for (int x = 1; x <= 6; x++) {
							%>


							<img style="width: 10%;" src="images/vv<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("2")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/t1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/t1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/t1.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/t1.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id2} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name2} <br>
									${content2 } <br>商品價格: ${price2}
								</p>
							</div>
							<br>
							<%
								for (int x = 1; x <= 9; x++) {
							%>
							<img src="images/c<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("3")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgs" src="images/v1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgs" src="images/v1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgs" src="images/v1.jpg">
									</div>
									<div class="right ">
										<img class="imgs" src="images/v1.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id3} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name3} <br>
									${content3 } <br>商品價格: ${price3}
								</p>
							</div>
							<br>
							<%
								for (int x = 2; x <= 6; x++) {
							%>
							<img style="width: 10%" src="images/v<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("4")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/x11.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/x11.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/x11.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/x11.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id4} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name4} <br>
									${content4 } <br>商品價格: ${price4}
								</p>
							</div>
							<%
								for (int x = 2; x <= 6; x++) {
							%>
							<img src="images/xx<%=x%>.jpg">

							<%
								}
							} else if (request.getParameter("value").equals("5")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/z11.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/z11.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/z11.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/z11.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id5} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name5} <br>
									${content5 } <br>商品價格: ${price5}
								</p>
							</div>
							<%
								for (int x = 1; x <= 8; x++) {
							%>
							<img src="images/zz<%=x%>.jpg">

							<%
								}
							} else if (request.getParameter("value").equals("6")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/tt1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/tt1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/tt1.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/tt1.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id6} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name6} <br>
									${content6 } <br>商品價格: ${price6}
								</p>
							</div>
							<%
								for (int x = 1; x < 8; x++) {
							%>
							<img src="images/y<%=x%>.jpg">


							<%
								}
							} else if (request.getParameter("value").equals("7")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/m1.png">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/m1.png">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/m1.png">
									</div>
									<div class="right ">
										<img class="imgss" src="images/m1.png">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id7} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name7} <br>
									${content7 } <br>商品價格: ${price7}
								</p>
							</div>
							<%
								for (int x = 1; x <= 4; x++) {
							%>
							<img src="images/mm<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("8")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/ww1.png">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/ww1.png">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/ww1.png">
									</div>
									<div class="right ">
										<img class="imgss" src="images/ww1.png">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id8} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name8} <br>
									${content8 } <br>商品價格: ${price8}
								</p>
							</div>
							<%
								for (int x = 2; x <= 6; x++) {
							%>
							<img src="images/ww<%=x%>.jpg">

							<%
								}
							} else if (request.getParameter("value").equals("9")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/k1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/k1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/k1.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/k1.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id9} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name9} <br>
									${content9 } <br>商品價格: ${price9}
								</p>
							</div>

							<%
								for (int x = 1; x <= 3; x++) {
							%>

							<img src="images/ee<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("10")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgsss" src="images/o1.png">
									</div>
									<div class="back1 ">
										<img class="imgsss" src="images/o1.png">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgsss" src="images/o1.png">
									</div>
									<div class="right ">
										<img class="imgsss" src="images/o1.png">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id10} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name10} <br>
									${content10 } <br>商品價格: ${price10}
								</p>
							</div>
							<br>
							<%
								for (int x = 1; x <= 10; x++) {
							%>
							<img src="images/a<%=x%>.jpg">
							<%
								}
							} else if (request.getParameter("value").equals("11")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss2ss" src="images/kk1.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss2ss" src="images/kk1.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss2ss" src="images/kk1.jpg">
									</div>
									<div class="right ">
										<img class="imgss2ss" src="images/kk1.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id11} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name11} <br>
									${content11 } <br>商品價格: ${price11}
								</p>
							</div>
							<%
								for (int x = 1; x <= 10; x++) {
							%>
							<img src="images/bb<%=x%>.jpg">

							<%
								}
							} else if (request.getParameter("value").equals("12")) {
							%>
							<div class="scene">
								<div class="cube">
									<div class="front ">
										<img class="imgss" src="images/h3.jpg">
									</div>
									<div class="back1 ">
										<img class="imgss" src="images/h3.jpg">
									</div>
									<!-- <div class="top">上</div>
          <div class="bottom">下</div> -->
									<div class="left ">
										<img class="imgss" src="images/h3.jpg">
									</div>
									<div class="right ">
										<img class="imgss" src="images/h3.jpg">
									</div>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="back">
								<p class="title">
									商品編號: ${id12} &nbsp;&nbsp;&nbsp;&nbsp;商品名稱: ${name12} <br>
									${content12 } <br>商品價格: ${price12}
								</p>
							</div>
							<%
								for (int x = 1; x <= 9; x++) {
							%>
							<img src="images/hh<%=x%>.jpg">

							<%
								}
							}
							%>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 text-center">
			<br>
			<!-- <form method="post" action="controller/cc.php?value=<?=$_GET["value"]?>"> -->
			<form method="post" action="${pageContext.request.contextPath}/shop">

				<input type="hidden" name="value" value="${param.value}"></input> <input
					type="hidden" name="buy" value="buy"></input> <br> <span
					class="font">你要購買</span>
				<button type="button" class="btn btn-petal" onclick="decQuantity(0)">&lt;</button>
				<input style="width: 50px;" name="sum" class="num" type="number"
					value="1" oninput="if(value>20)value=20;if(value<1)value=1;">
				<button type="button" class="btn btn-petal" onclick="incQuantity(0)">&gt;</button>
				<span class="font">個公仔</span> <input type="submit" name="c"
					value="加入購物車" class="btn btn-info"> </input> <strong><a
					class="font" href="${pageContext.request.contextPath}/toindex4"><img
						id="exit" src="images/exit.jpg"> </a></strong>
			</form>

		</div>

		<div class="col-md-3 text-center">
			</a> <br> <br>

		</div>

	</div>

	<script>
function decQuantity(index) {
    let obj = document.getElementsByClassName('num')[index];
    let num = obj.value;
    if (num > 1 && num < 21) {
        obj.value = parseInt(obj.value) - 1;
    } else {
        obj.value = 1;
    }
}
function incQuantity(index) {
    let obj = document.getElementsByClassName('num')[index];
    let num = obj.value;
    if (num < 20 && num > 0) {
        obj.value = parseInt(obj.value) + 1;
    } else {
        obj.value = 20;
    }
}
</script>




	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



</body>



</html>