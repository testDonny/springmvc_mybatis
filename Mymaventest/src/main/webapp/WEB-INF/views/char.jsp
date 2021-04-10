<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="css/css3.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/css1.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/css2.css" type="text/css"
	media="screen">
<script src="https://www.aniplex.co.jp/js/aniplex.imgdownload.min.js"></script>


<style>
.contents_bg .bg_canvas {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -1;
}
</style>
</head>
<div id="wrapper">
	<nav class="navigation nav close_menu">
		<div class="nav_header">
			<div class="nav_btn">
				<p></p>
				<p></p>
				<p></p>
			</div>
			<p class="nav_cap">MENU</p>
		</div>
		<div class="nav_wrap">
			<div class="nav_inner js-nav-inner">
				<h1>
					<a href="${pageContext.request.contextPath}/tochar?chara=c01"><img
						src="img/logos.png" alt=""></a>
				</h1>
				<ul class="nav_mainmenu">

					<li class="current"><a
						href="${pageContext.request.contextPath}/tochar?chara=c01"><span>人物情報</span></a>
					</li>

					<li><a href="${pageContext.request.contextPath}/tojporder"><span>劇場物販</span></a>
					</li>

					<li><a href="${pageContext.request.contextPath}/tomusic"><span>主題歌</span></a>
					</li>
					<li><a href="${pageContext.request.contextPath}/toindex"><span>返回首頁</span></a>
					</li>

				</ul>
			</div>
		</div>
	</nav>
	<div class="main_contents chara_contents">
		<h2 class="page_title  sss">
			<img src="img/title_character.png" alt="登場人物">
		</h2>


		<nav class="chara_tab">
			<ul>
				<li class="current"><img src="img/thumb_01.png" alt="竈門炭治郎"><a
					href="${pageContext.request.contextPath}/tochar?chara=c01"></a></li>
				<li><img src="img/thumb_02.png" alt="竈門禰豆子"><a
					href="${pageContext.request.contextPath}/tochar?chara=c02"></a></li>
				<li><img src="img/thumb_03.png" alt="我妻善逸"><a
					href="${pageContext.request.contextPath}/tochar?chara=c03"></a></li>
				<li><img src="img/thumb_04.png" alt="嘴平伊之助"><a
					href="${pageContext.request.contextPath}/tochar?chara=c04"></a></li>
				<li><img src="img/thumb_05.png" alt="煉獄杏寿郎"><a
					href="${pageContext.request.contextPath}/tochar?chara=c05"></a></li>
				<li><img src="img/thumb_07.png" alt="煉󠄁獄槇寿郎"><a
					href="${pageContext.request.contextPath}/tochar?chara=c07"></a></li>
				<li><img src="img/thumb_08.png" alt="煉󠄁獄瑠火"><a
					href="${pageContext.request.contextPath}/tochar?chara=c08"></a></li>
				<li><img src="img/thumb_09.png" alt="煉󠄁獄千寿郎"><a
					href="${pageContext.request.contextPath}/tochar?chara=c09"></a></li>
				<li><img src="img/thumb_06.png" alt="魘夢"><a
					href="${pageContext.request.contextPath}/tochar?chara=c06"></a></li>
				<li><img src="img/thumb_10.png" alt="猗窩座"><a
					href="${pageContext.request.contextPath}/tochar?chara=c010"></a></li>
			</ul>
		</nav>



		<div class="chara_detail">
			<div class="chara_image">
				<%
					if (request.getParameter("chara") == null) {
				%>
				<p class="chara_name">
					<img src="img/txt_name_01_pc.png" alt="竈門炭治郎
            CV:花江夏樹"
						class="pc"><img src="img/txt_name_01_sp.png" alt=""
						class="sp">
				</p>
				<p class="chara_img">
					<img src="img/img_cha_01.jpg" alt="">
				</p>
			</div>
			<div class="chara_text scroll_in">
				<p>
					心優しい少年。鬼と化してしまった妹を人間に戻すため、鬼に殺された家族の仇を討つため、鱗滝左近次の元での修業を経て、鬼殺隊に入隊する。「水の呼吸」のほかに那田蜘蛛山の任務にて「ヒノカミ神楽」を身につける。蟲柱・胡蝶しのぶの屋敷にて訓練を受け、「全集中・常中」を会得した後、<span
						class="f_neduko">禰󠄀</span>豆子、善逸、伊之助とともに、煉󠄁獄と合流し新しい任務にあたるため“無限列車”へ乗り込む。
				</p>
			</div>
			<%
				}

			else if (request.getParameter("chara").equals("c01")) {
			%>

			<p class="chara_name">
				<img src="img/txt_name_01_pc.png" alt="竈門炭治郎
            CV:花江夏樹"
					class="pc"><img src="img/txt_name_01_sp.png" alt=""
					class="sp">
			</p>
			<p class="chara_img">
				<img src="img/img_cha_01.jpg" alt="">
			</p>
		</div>
		<div class="chara_text scroll_in">
			<p>
				心優しい少年。鬼と化してしまった妹を人間に戻すため、鬼に殺された家族の仇を討つため、鱗滝左近次の元での修業を経て、鬼殺隊に入隊する。「水の呼吸」のほかに那田蜘蛛山の任務にて「ヒノカミ神楽」を身につける。蟲柱・胡蝶しのぶの屋敷にて訓練を受け、「全集中・常中」を会得した後、<span
					class="f_neduko">禰󠄀</span>豆子、善逸、伊之助とともに、煉󠄁獄と合流し新しい任務にあたるため“無限列車”へ乗り込む。
			</p>
		</div>
		<%
			} else if (request.getParameter("chara").equals("c02")) {
		%>
		<p class="chara_name">
			<img src="img/txt_name_02_pc.png" alt="竈門禰豆子
CV:鬼頭明里" class="pc"><img
				src="img/txt_name_02_sp.png" alt="" class="sp">
		</p>
		<p class="chara_img">
			<img src="img/img_cha_02.jpg" alt="">
		</p>
	</div>
	<div class="chara_text scroll_in">
		<p>鬼になってしまった炭治郎の妹。鬼となりながらも、鱗滝による暗示と自分の意志で人を襲わない。日中は日差しをさけるため、炭治郎が背負う木箱に入っている。眠りにつくことで体力を回復する。</p>
	</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c03")) {
%>
<p class="chara_name">
	<img src="img/txt_name_03_pc.png" alt="我妻善逸
CV:下野 紘" class="pc"><img
		src="img/txt_name_03_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_03.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>
		心優しい少年。鬼と化してしまった妹を人間に戻すため、鬼に殺された家族の仇を討つため、鱗滝左近次の元での修業を経て、鬼殺隊に入隊する。「水の呼吸」のほかに那田蜘蛛山の任務にて「ヒノカミ神楽」を身につける。蟲柱・胡蝶しのぶの屋敷にて訓練を受け、「全集中・常中」を会得した後、<span
			class="f_neduko">禰󠄀</span>豆子、善逸、伊之助とともに、煉󠄁獄と合流し新しい任務にあたるため“無限列車”へ乗り込む。
	</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c04")) {
%>
<p class="chara_name">
	<img src="img/txt_name_04_pc.png" alt="嘴平伊之助
CV:松岡禎丞" class="pc"><img
		src="img/txt_name_04_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_04.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>炭治郎の同期となる、猪突猛進かつ好戦的な鬼殺隊の剣士。「獣の呼吸」を使い、刃こぼれした日輪刀を二刀もち豪快に戦う。</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c05")) {
%>
<p class="chara_name">
	<img src="img/txt_name_05_pc.png" alt="煉獄杏寿郎
CV:日野 聡" class="pc"><img
		src="img/txt_name_05_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_05.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>
		鬼殺隊の中でも最高位である”柱”のひとり。炎柱。「炎の呼吸」を使い、鬼をせん滅する。明朗快活ではっきりとした物言いをする。<br>
		柱合会議後、短期間のうちに40人以上もの人が行方不明になっているという“無限列車”の調査に赴くことに。
	</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c07")) {
%>
<p class="chara_name">
	<img src="img/txt_name_07_pc.png" alt="煉󠄁獄槇寿郎　CV:小山力也" class="pc"><img
		src="img/txt_name_07_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_07.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>煉󠄁獄杏寿郎の父。</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c08")) {
%>
<p class="chara_name">
	<img src="img/txt_name_08_pc.png" alt="煉󠄁獄瑠火　CV:豊口めぐみ" class="pc"><img
		src="img/txt_name_08_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_08.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>煉󠄁獄杏寿郎の母。</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c09")) {
%>
<p class="chara_name">
	<img src="img/txt_name_09_pc.png" alt="煉󠄁獄千寿郎　CV:榎木淳弥" class="pc"><img
		src="img/txt_name_09_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_09.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>煉󠄁獄杏寿郎の弟。</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c06")) {
%>
<p class="chara_name">
	<img src="img/txt_name_06_pc.png" alt="魘夢
CV:平川大輔" class="pc"><img
		src="img/txt_name_06_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_06.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>
		鬼舞辻無惨配下である“十二鬼月”のひとり。他人の不幸や苦しみを見ることを好む、歪んだ嗜好を持つ。下弦の鬼の粛清時、鬼舞辻無惨に気に入られたため、唯一生き残った。<br>
		那田蜘蛛山で炭治郎たちが苦戦を強いられた下弦の伍・累よりも序列の高い下弦の壱であり、鬼舞辻無惨からも血を分け与えられている。
	</p>
</div>
</div>
<%
	} else if (request.getParameter("chara").equals("c010")) {
%>
<p class="chara_name">
	<img src="img/txt_name_10_pc.png" alt="猗窩座
CV:石田彰" class="pc"><img
		src="img/txt_name_10_sp.png" alt="" class="sp">
</p>
<p class="chara_img">
	<img src="img/img_cha_10.jpg" alt="">
</p>
</div>
<div class="chara_text scroll_in">
	<p>
		凄まじい力を持つ十二鬼月・上弦の参。<br> 練り上げられた武と共に、強者に対しての敬意を持つ。
	</p>
</div>
</div>
<%
	}
%>


<script src="js/jquery-3.2.1.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/three.r95.min.js"></script>
<script type="text/javascript" src="js/vanta.fog.min.js"></script>
<script type="text/javascript" src="js/velocity.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>


</body>
</html>