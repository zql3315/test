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
	<link rel="stylesheet" href="http://mp.ginspa.com/m/css/font-awesome.min.css">
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
		<div class="elasticbox_one right" onclick="goUserbalancelist()">余额明细</div>
	</header>
	<section class="userpurse_content">
		<div class="balance">
			余额：<span class="ng-binding">0.00</span>元
			<a onclick="goPointBuy()">购买奇币</a>
		</div>
		<div class="line"></div>
		<div class="recharget_t">充值超值奖励</div>
		<!-- ngIf: nowTime<=endTime -->
		<ul class="recharget_p">
			<li ng-repeat="item in moneylist | filter : rule1 | filter : rule2" ng-class="{'active':(item.ticket_charge_value==5000)}" onclick="selectmoney(item.ticket_charge_value,item.ticket_charge_rule_id,item.ticket_charge_rebate_type,$index)">
	            <p>3000元</p>
	            <p ng-if="item.ticket_charge_rebate_type==1" style="font-size: 1.2rem;">返300元</p>
	        </li>
			<li ng-repeat="item in moneylist | filter : rule1 | filter : rule2" ng-class="{'active':(item.ticket_charge_value==5000)}" onclick="selectmoney(item.ticket_charge_value,item.ticket_charge_rule_id,item.ticket_charge_rebate_type,$index)">
	            <p>5000元</p>
	            <p ng-if="item.ticket_charge_rebate_type==1" style="font-size: 1.2rem;">返300元</p>
	        </li>
			<li ng-repeat="item in moneylist | filter : rule1 | filter : rule2" ng-class="{'active':(item.ticket_charge_value==5000)}" onclick="selectmoney(item.ticket_charge_value,item.ticket_charge_rule_id,item.ticket_charge_rebate_type,$index)">
	            <p>10000元</p>
	            <p ng-if="item.ticket_charge_rebate_type==1" style="font-size: 1.2rem;">返300元</p>
	        </li>
			<li ng-repeat="item in moneylist | filter : rule1 | filter : rule2" ng-class="{'active':(item.ticket_charge_value==5000)}" onclick="selectmoney(item.ticket_charge_value,item.ticket_charge_rule_id,item.ticket_charge_rebate_type,$index)">
	            <p>20000元</p>
	            <p ng-if="item.ticket_charge_rebate_type==1" style="font-size: 1.2rem;">返300元</p>
	        </li>
		</ul>
		<div class="recharget_btn" onclick="goCharge()">马上充值</div>
		<div style="text-align:center; padding-bottom: 10px;">
			点击马上充值，即表示您已经同意奇境<span onclick="goUseragreement()" style="color:#3382d1;">《充返活动协议》</span>
		</div>
	</section>
</body>
</html>
