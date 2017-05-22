<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
	<title>WeUI</title>
	<link rel="stylesheet" href="./css/public.css">
	<link rel="stylesheet" href="./css/user.css">
	<link rel="stylesheet" href="./css/swiper.min.css">
	<link rel="stylesheet" href="./css/font-awesome.min.css">
	<!-- 引入 WeUI -->
	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css" />
	<link rel="stylesheet" href="./css/example.css" />
	<link rel="stylesheet" href="./css/index.css" />
	<script src="./js/user.js"></script>
</head>

<body>
	<section class="userindex_content">
		<div class="info">
			<div class="img" onclick="goUserInfo()">
				<img src="http://img.blog.csdn.net/20151123175938755">
			</div>
			<div class="txt ng-binding" onclick="goUserInfo()">墨水 ＞</div>
		</div>
		<div class="line"></div>
		<div class="mypurse">
			<img src="http://mp.ginspa.com/m/images/purse.png"><span>我的钱包</span>
		</div>
		<div class="mymoney">
			<div class="elasticbox_one" style="border-right: 1px #d7d7da solid;" onclick="goUserPurse()">
				<div class="txt_big ng-binding">
					<img src="http://mp.ginspa.com/m/images/userindex_icon1.jpg"> 余额：100.00
				</div>
				<!-- ngIf: money.ticket_charge_rebate_type==1 && nowTime>endTime -->
				<!-- ngIf: money.ticket_charge_rebate_type==2 && nowTime>endTime -->
				<!-- ngIf: nowTime<=endTime -->
				<div class="txt_small">充300反300</div>
			</div>
			<div class="elasticbox_one" onclick="goPointBuy()">
				<div class="txt_big ng-binding">
					<img src="http://mp.ginspa.com/m/images/userindex_icon2.jpg"> 奇币：100.00
				</div>
				<div class="txt_small">每消费1元获得0.5奇币</div>
			</div>
		</div>
		<div class="line"></div>
		<div class="mycard_t">
			<img src="http://mp.ginspa.com/m/images/card.png"><span>我的卡券</span>
		</div>
		<ul class="mycard_p elasticbox">
			<li class="elasticbox_one" onclick="gocardexperience()">
				<div class="card_img">
					<img src="http://mp.ginspa.com/m/images/tiyan.png">
				</div>
				<div class="card_txt">体验券</div>
			</li>
			<li class="elasticbox_one" style="border: none;" onclick="goUserCard2()">
				<div class="card_img">
					<img src="http://mp.ginspa.com/m/images/youhui.png">
				</div>
				<div class="card_txt">优惠券</div>
			</li>
			<!--<li class="elasticbox_one" style="border: none;">-->
			<!--<div class="card_img">-->
			<!--<img src="http://mp.ginspa.com/m/images/lipin.png">-->
			<!--</div>-->
			<!--<div class="card_txt">礼品卡</div>-->
			<!--</li>-->
		</ul>
		<div class="line"></div>
		<div class="myorder_t">
			<img src="http://mp.ginspa.com/m/images/order.png"><span>预约订单</span>
		</div>
		<ul class="myorder_p elasticbox">
			<li class="elasticbox_one" onclick="goorderlist(2)">
				<div class="order_txt">未消费</div>
			</li>
			<li class="elasticbox_one" onclick="goorderlist(1)">
				<div class="order_txt">待付款</div>
			</li>
			<li class="elasticbox_one" onclick="goorderlist(3)">
				<div class="order_txt">待点评</div>
			</li>
			<li class="elasticbox_one" style="border: none;" onclick="goRefundList()">
				<div class="order_txt">退款</div>
			</li>
		</ul>
		<div class="line"></div>
		<div class="mypurse" onclick="goRating()">
			<img src="http://mp.ginspa.com/m/images/dianping.png"><span>我的点评</span>
		</div>
		<div class="line"></div>
	</section>
	<nav class="elasticbox">
	    <div class="elasticbox_one" onclick="goIndex()"><img src="http://mp.ginspa.com/m/images/nav_icon1.png"><br>首页</div>
	    <div class="elasticbox_one" onclick="goMallPage()"><img src="http://mp.ginspa.com/m/images/nav_icon5.png"><br>兑换</div>
	    <div class="elasticbox_one" onclick="goCardsPage()"><img src="http://mp.ginspa.com/m/images/nav_icon2.png"><br>卡券</div>
	    <div class="elasticbox_one" onclick="goOrdersPage()"><img src="http://mp.ginspa.com/m/images/nav_icon3.png"><br>订单</div>
	    <div class="elasticbox_one active" onclick="goProfilePage()"><img src="http://mp.ginspa.com/m/images/nav_icon4_active.png"><br>我的</div>
	</nav>
</body>
</html>
