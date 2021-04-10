-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-26 09:53:02
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `logintest`
--

-- --------------------------------------------------------

--
-- 資料表結構 `administrator`
--

CREATE TABLE `administrator` (
  `id` int(255) NOT NULL,
  `administrator` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `administrator`
--

INSERT INTO `administrator` (`id`, `administrator`, `password`) VALUES
(1, 'administratortest', 'administrator123');

-- --------------------------------------------------------

--
-- 資料表結構 `commit`
--

CREATE TABLE `commit` (
  `id` int(11) NOT NULL,
  `cname` varchar(40) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `commit`
--

INSERT INTO `commit` (`id`, `cname`, `content`, `price`) VALUES
(1, '神奇寶貝 寶可夢 鬼滅之刃 皮卡丘 變裝', '商品規格<br> 品牌:自有品牌<br>\r\n工作室：Demon Studio <br> 尺寸：高度約8公分', 399),
(2, 'SEGA 景品 SPM 鬼滅之刃 嘴平伊之助 公仔', '商品廠商:SEGA<br>\r\n商品類型:已塗裝靜態完成品<br> 商品說明尺寸：高約21cm', 500),
(3, 'MEGAHOUSE G.E.M. 鬼滅之刃 竈門禰豆子 掌中禰豆子 完成品', '商品廠牌:Megahouse 百萬屋<br> 商品類型:已塗裝靜態完成品<br>商品說明:TVアニメ「鬼滅の刃」よりヒロイン禰豆子ちゃんがてのひらサイズで登場！<br>「小さくなれないか？」兄のリクエストに応じた可愛らしい幼い姿！<br>\r\n禰豆子の無垢な表情にぷっくりした手足の造形や自分の母性本能が擽られるアイテムになっています。', 2500),
(4, 'BANDAI Figuarts ZERO 鬼滅之刃 我妻善逸', '商品廠牌:TAMASHII 魂<br>商品類型:已塗裝靜態完成品<br> 商品說明:霹靂一閃！「我妻善逸-雷の呼吸-」がフィギュアーツZEROに登場。<br>\r\nキャラクターとエフェクトを組み合わせたフィギュアシリーズ、「フィギュアーツZERO」に『鬼滅の刃』シリーズが登場。<br>\r\n第二弾は「我妻善逸 -雷の呼吸-」。躍動感ある造形に加えて、クリア成型に彩色を施すことで、印象的な呼吸の演出を立体化。<br>\r\nこ', 599),
(5, 'BANDAI Figuarts ZERO 鬼滅之刃', '商品廠牌:TAMASHII 魂<br>\r\n 商品類型:已塗裝靜態完成品<br> 商品說明:<br>\r\nフィギュアーツZEROシリーズに『鬼滅の刃』が登場。<br>\r\nキャラクターとエフェクトが組み合わさったフィギュアシリーズ、「フィギュアーツZERO」に『鬼滅の刃』シリーズが登場。第一弾は「竈門炭治郎\r\n-水の呼吸-」。<br> 躍動感のある造形に加えて、クリア成型に彩色を施すことで、印象的な呼吸の演出を立体化。<br>', 599),
(6, 'GOOD SMILE 黏土人 鬼滅之刃 竈門禰豆子', '商品廠牌:GOOD SMILE<br>\r\n商品類型:已塗裝可動完成品<br> 商品介紹:<br> 儘管變成鬼，仍與哥哥一同對抗鬼的少女。<br>\r\n出自超人氣TV動畫《鬼滅之刃》，變成鬼的女主角「竈門禰豆子」化身為黏土人！可替換的表情零件有溫柔的「普通臉」、充滿魄力的「鬼臉」。<br>即使是Q版造型，也能運用鬼的身體能力，擺出踢擊或拳擊等動感姿態。配件附有禰豆子不可或缺的「炭治郎揹的木箱」。<br>木箱能讓另售的「黏土人\r\n', 650),
(7, 'BANPRESTO 景品 鬼滅之刃 絆之裝 貳之型 竈門禰豆子 一般色', '商品廠牌:BANPRESTO<br>\r\n商品類型:已塗裝靜態完成品<br> 商品說明:約15cm', 550),
(8, '景品 鬼滅之刃 竈門炭志郎坐姿公仔', '商品廠商:SEGA<br>商品類型:已塗裝靜態完成品', 550),
(9, 'BANPRESTO 景品 鬼滅之刃 絆之裝 伍之型 富岡義勇', '商品廠牌:BANPRESTO<br>\r\n商品類型:已塗裝靜態完成品<br> 商品說明:約15cm<br>', 550),
(10, 'GALS 鬼滅之刃 蝴蝶忍 PVC', '商品廠牌:Megahouse 百萬屋<br>\r\n商品類型:已塗裝靜態完成品<br> 商品說明:TVアニメ「鬼滅の刃」より、胡蝶しのぶフィギュアの登場です。<br>\r\n空中から舞い降りたイメージで造形。<br>\r\n羽ばたいているかのようなシルエットの羽織は模様や繊細な色味も丁寧かつ美麗に再現。<br>\r\n独特な形状の日輪刀や鞘に至るまで細やかに作り込んでいます。<br>\r\nそっと微笑む胡蝶しのぶの凛とした空気を感じていただきたい逸品となっております。<b', 990),
(11, '鬼滅之刃 BUZZmod. 竈門炭治郎 火之神神樂 可動公仔', '商品廠牌:ANIPLEX+<br>\r\n商品類型:已塗裝可動完成品<br> 商品說明:<br> TVアニメ「鬼滅の刃」の主人公・竈門炭治郎が<br>、新1/12スケールアクションフィギュアライン「BUZZmod.（バズモッド）」に登場！<br>大ボリュームの付属パーツにより、劇中のあらゆる名場面をお手元で再現頂けます。<br>\r\n各種パーツにより様々な動きを付けられるため、お気に入りのシーンはもちろん、自分だけのポージングをお楽', 499),
(12, 'ANIPLEX 1/8 鬼滅之刃 竈門禰豆子 PVC', '商品廠牌:ANIPLEX+<br>\r\n商品類型:已塗裝靜態完成品<br> 商品介紹 :TVアニメ「鬼滅の刃」より、鬼となった少女・竈門禰豆子が登場！<br>\r\n炭治郎が背負う木箱とともに、1/8スケールサイズで立体化しました。<br>\r\nたなびく髪やリボンは、吹き抜ける風とともに彼女の優しくあたたかな雰囲気を演出。<br>\r\n大きく澄んだ瞳には少女のあどけなさが浮かびます。', 690);

-- --------------------------------------------------------

--
-- 資料表結構 `problem`
--

CREATE TABLE `problem` (
  `id` int(255) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `problem` varchar(20) DEFAULT NULL,
  `mytextarea` varchar(255) DEFAULT NULL,
  `response` varchar(5) NOT NULL,
  `rep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `problem`
--

INSERT INTO `problem` (`id`, `userName`, `email`, `phone`, `problem`, `mytextarea`, `response`, `rep`) VALUES
(36, 'tommer', 'x33778899@gmail.com', '0912345678', 'usererr', '你好', '2', '你好');

-- --------------------------------------------------------

--
-- 資料表結構 `shop`
--

CREATE TABLE `shop` (
  `id` int(255) NOT NULL,
  `cid` varchar(5) DEFAULT NULL,
  `cname` varchar(40) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `quantity` varchar(5) DEFAULT NULL,
  `sum` varchar(10) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `shipment` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `shop`
--

INSERT INTO `shop` (`id`, `cid`, `cname`, `price`, `quantity`, `sum`, `userid`, `shipment`) VALUES
(110, '3', 'MEGAHOUSE G.E.M. 鬼滅之刃 竈門禰豆子 掌中禰豆子 完成品', '2500', '4', '10000', '25', '已出貨'),
(111, '4', 'BANDAI Figuarts ZERO 鬼滅之刃 我妻善逸', '599', '4', '2396', '25', '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `timeswatche`
--

CREATE TABLE `timeswatche` (
  `look` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `timeswatche`
--

INSERT INTO `timeswatche` (`look`) VALUES
('9,20,24,12,14,17,8,6,6,0,4,3,0,0,2,0,0,0,1,4,0,2,1,2,3,3,');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `idCard` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `userName`, `passWord`, `email`, `phone`, `idCard`) VALUES
(13, 'patter', '$2a$10$sWXFxl2/Gi/0tmzijFsvDuRgRRvVwIrtO2Vvd1xdpmQkgqHl5nv0u', 'x33778899@gmail.com', '0912345678', 'A123456789'),
(25, 'tommer', '$2a$10$EQ1oTWYWYMCUyjyfJDDIE.Zy82Ii1rhnv.o2p8WmWqKbZfCdTl9Vu', 'x33778899@gmail.com', '0911671234', 'A143373530');

-- --------------------------------------------------------

--
-- 資料表結構 `usertest`
--

CREATE TABLE `usertest` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `videos` varchar(50) DEFAULT NULL,
  `Timeswatched` varchar(255) DEFAULT NULL,
  `path` varchar(60) NOT NULL,
  `pat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `video`
--

INSERT INTO `video` (`id`, `videos`, `Timeswatched`, `path`, `pat`) VALUES
(1, '【繁】✡ 鬼滅之刃・01・殘酷 - 四月新番✡', '0', '/Mymaven/video/no1.mp4', '/Mymaven/video/no1.gif'),
(2, '【繁】✡ 鬼滅之刃・02・培育者 鱗瀧左近次 - 四月新番✡', '0', '/Mymaven/video/no2.mp4', '/Mymaven/video/no2.gif'),
(3, '【繁】✡ 鬼滅之刃・03・錆兔與真菰 - 四月新番 ✡', '0', '/Mymaven/video/no3.mp4', '/Mymaven/video/no3.gif'),
(4, '【繁】✡ 鬼滅之刃・04・最終選拔 - 四月新番 ✡', '0', '/Mymaven/video/no4.mp4', '/Mymaven/video/no4.gif'),
(5, '【繁】✡ 鬼滅之刃・05・自己的鋼 - 四月新番 ✡', '0', '/Mymaven/video/no5.mp4', '/Mymaven/video/no5.gif'),
(6, '【繁】✡ 鬼滅之刃・06・帶著鬼的劍士 - 四月新番✡', '0', '/Mymaven/video/no6.mp4', '/Mymaven/video/no6.gif'),
(7, '【繁】✡ 鬼滅之刃・07・鬼舞辻無慘 - 四月新番✡', '0', '/Mymaven/video/no7.mp4', '/Mymaven/video/no7.gif'),
(8, '【繁】✡ 鬼滅之刃・08・迷惑的血之香氣 - 四月新番✡\r\n', '0', '/Mymaven/video/no8.mp4', '/Mymaven/video/no8.gif'),
(9, '【繁】✡ 鬼滅之刃・09・手毬鬼與矢印鬼 - 四月新番✡\r\n', '0', '/Mymaven/video/no9.mp4', '/Mymaven/video/no9.gif'),
(10, '【繁】✡ 鬼滅之刃・10・永遠在一起 - 四月新番✡\r\n', '0', '/Mymaven/video/no10.mp4', '/Mymaven/video/no10.gif'),
(11, '【繁】✡ 鬼滅之刃・11・鼓之宅院 - 四月新番 ✡\r\n', '0', '/Mymaven/video/no11.mp4', '/Mymaven/video/no11.gif'),
(12, '【繁】✡ 鬼滅之刃・12・山豬露出獠牙, 善逸沉睡 - 四月新番✡\r\n', '0', '/Mymaven/video/no12.mp4', '/Mymaven/video/no12.gif'),
(13, '【繁】✡ 鬼滅之刃・13・比生命更重要的東西 - 四月新番✡\r\n\r\n\r\n', '0', '/Mymaven/video/no13.mp4', '/Mymaven/video/no13.gif'),
(14, '【繁】✡ 鬼滅之刃・14・帶著鬼的劍士 - 四月新番✡', '0', '/Mymaven/video/no6.mp14', '/Mymaven/video/no14.gif'),
(15, '【繁】✡ 鬼滅之刃・15・那田蜘蛛山 - 四月新番✡', '0', '/Mymaven/video/no15.mp4', '/Mymaven/video/no15.gif'),
(16, '【繁】✡ 鬼滅之刃・16・讓自己以外的某人前進 - 四月新番✡\r\n\r\n', '0', '/Mymaven/video/no16.mp4', '/Mymaven/video/no16.gif'),
(17, '【繁】✡ 鬼滅之刃・17・專精在一件事情上 - 四月新番✡\r\n', '0', '/Mymaven/video/no17.mp4', '/Mymaven/video/no17.gif'),
(18, '【繁】✡ 鬼滅之刃・18・偽造的羈絆 - 四月新番✡\r\n', '0', '/Mymaven/video/no18.mp4', '/Mymaven/video/no18.gif'),
(19, '【繁】✡ 鬼滅之刃・19・火之神 - 四月新番✡\r\n', '0', '/Mymaven/video/no19.mp4', '/Mymaven/video/no19.gif'),
(20, '【繁】✡ 鬼滅之刃・20・拼湊的家人- 四月新番✡\r\n', '0', '/Mymaven/video/no20.mp4', '/Mymaven/video/no20.gif'),
(21, '【繁】✡ 鬼滅之刃・21・違反隊規- 四月新番✡\r\n', '0', '/Mymaven/video/no21.mp4', '/Mymaven/video/no21.gif'),
(22, '【繁】✡ 鬼滅之刃・22・主公大人 - 四月新番✡ \r\n', '0', '/Mymaven/video/no22.mp4', '/Mymaven/video/no22.gif'),
(23, '【繁】✡ 鬼滅之刃・23・柱合會議 - 四月新番✡\r\n', '0', '/Mymaven/video/no23.mp4', '/Mymaven/video/no23.gif'),
(24, '【繁】✡ 鬼滅之刃・24・機能恢復訓練 - 四月新番✡\r\n', '0', '/Mymaven/video/no24.mp4', '/Mymaven/video/no24.gif'),
(25, '【繁】✡ 鬼滅之刃・25・繼子 栗花落香奈乎 - 四月新番✡\r\n', '0', '/Mymaven/video/no25.mp4', '/Mymaven/video/no25.gif'),
(26, '【繁】✡ 鬼滅之刃・26・全新的任務 - 四月新番✡\r\n', '0', '/Mymaven/video/no26.mp4', '/Mymaven/video/no26.gif');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `commit`
--
ALTER TABLE `commit`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `usertest`
--
ALTER TABLE `usertest`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `commit`
--
ALTER TABLE `commit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `problem`
--
ALTER TABLE `problem`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `usertest`
--
ALTER TABLE `usertest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
