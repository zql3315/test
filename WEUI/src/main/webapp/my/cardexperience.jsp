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
	<header class="elasticbox" id="wxhide">
		<div class="elasticbox_one left" onclick="history.go(-1)">
			<img src="http://mp.ginspa.com/m/images/return.png">
		</div>
		<div class="elasticbox_one center">体验券</div>
		<div class="elasticbox_one right"></div>
	</header>
	<section class="cardexperience_content">
		<ul class="elasticbox card_tab">
			<li class="elasticbox_one active">体验券</li>
			<li class="elasticbox_one" ng-click="goCardDiscount()">优惠券</li>
		</ul>
		<div class="card_sub_tab">
			<ul class="elasticbox">
				<li class="elasticbox_one active" ng-click="cardStatus(1,$event)">未使用</li>
				<li class="elasticbox_one" ng-click="cardStatus(2,$event)">已使用</li>
				<li class="elasticbox_one" ng-click="cardStatus(3,$event)">已失效</li>
			</ul>
		</div>
		<ul class="cardlist">
			<li ng-repeat="item in cardlist | filter:cardused | filter:cardexpiried"
				ng-click="goCardDetails(item.wx_card_cardNumber,item.wx_code_value)">
				<div class="left">
					<div class="card_name">300元体验券</div>
					<div class="card_num">券号：123456789</div>
					<div class="card_date">有效期：2017-5-10至2017-5-20</div>
				</div>
				<div class="right yes" ng-if="item.gs_code_status!=5 && item.isCodeExpired==0">
					<img src="http://mp.ginspa.com/m/images/code_small.png">
				</div>
				<div class="right no" ng-if="item.gs_code_status==5 || item.isCodeExpired==1">
					<img src="http://mp.ginspa.com/m/images/code_small.png">
				</div>
			</li>
		</ul>
	</section>
	<nav class="elasticbox">
		<div class="elasticbox_one" ng-click="goIndex()">
			<img src="http://mp.ginspa.com/m/images/nav_icon1.png"><br>首页
		</div>
		<div class="elasticbox_one" ng-click="goMallPage()">
			<img src="http://mp.ginspa.com/m/images/nav_icon5.png"><br>兑换
		</div>
		<div class="elasticbox_one active" ng-click="goCardsPage()">
			<img src="http://mp.ginspa.com/m/images/nav_icon2_active.png"><br>卡券
		</div>
		<div class="elasticbox_one" ng-click="goOrdersPage()">
			<img src="http://mp.ginspa.com/m/images/nav_icon3.png"><br>订单
		</div>
		<div class="elasticbox_one" ng-click="goProfilePage()">
			<img src="http://mp.ginspa.com/m/images/nav_icon4.png"><br>我的
		</div>
	</nav>
</body>
</html>
