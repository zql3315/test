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
	<header class="elasticbox" id="wxshow">
		<div class="elasticbox_one left" onclick="history.go(-1)">
			<img src="./images/return.png">
		</div>
		<div class="elasticbox_one center">我的钱包</div>
		<div class="elasticbox_one right" ng-click="goUserbalancelist()">余额明细</div>
	</header>
	<section class="pointbuy_content">
		<div class="balance">
			余额：<span>0.00</span>元
		</div>
		<div class="line"></div>
		<div class="recharget_t">余额购买奇币</div>
		<ul class="recharget_p">
			<li ng-repeat="item in moneylist">
				<p>3000奇币</p>
				<p style="font-size: 1.2rem;">售价:300元</p>
			</li>
			<li ng-repeat="item in moneylist">
				<p>3000奇币</p>
				<p style="font-size: 1.2rem;">售价:300元</p>
			</li>
			<li ng-repeat="item in moneylist">
				<p>3000奇币</p>
				<p style="font-size: 1.2rem;">售价:300元</p>
			</li>
			<li ng-repeat="item in moneylist">
				<p>3000奇币</p>
				<p style="font-size: 1.2rem;">售价:300元</p>
			</li>
		</ul>
		<div class="recharget_btn" ng-click="goChargeShow()">马上购买</div>
		<div style="text-align:center; padding-bottom: 10px;">
			点击马上购买，即表示您已经同意奇境<span ng-click="goUseragreement()" style="color:#3382d1;">《奇币购买活动协议》</span>
		</div>
	</section>
</body>
</html>
