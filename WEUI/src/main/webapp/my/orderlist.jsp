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
		<div class="elasticbox_one left" onclick="history.go(-1)"><img src="http://mp.ginspa.com/m/images/return.png"></div>
	    <div class="elasticbox_one center">订单</div>
	    <div class="elasticbox_one right">　　</div>
	</header>
	<section class="orderlist_content">
	    <ul class="listtab elasticbox">
	        <li class="active elasticbox_one" ng-click="selectAll($event)">全部</li>
	        <li class="elasticbox_one"ng-click="selectClass(1,$event)">待付款</li>
	        <li class="elasticbox_one"ng-click="selectClass(2,$event)">待消费</li>
	        <li class="elasticbox_one"ng-click="selectClass(3,$event)">待评价</li>
	        <li class="elasticbox_one"ng-click="selectClass(4,$event)">已完成</li>
	    </ul>
	    <ul class="list">
	        <li ng-repeat="item in orderlist">
	            <div class="line"></div>
	            <div class="ordernum" ng-click="goOrderDetails(item.order_id)">预约号：10000<span>已预约</span></div>
	            <div class="orderinfo" ng-repeat="meta in item.metainfo" ng-click="goOrderDetails(item.order_id)">
	                <div class="left" ng-if="meta.p_type==3 && meta.p_url=='nil'"><img ng-src="http://ginspa.img-cn-beijing.aliyuncs.com/test/product_x.jpg+{{rectangleThumb}}"></div>
	                <div class="center">SPAN足疗</div>
	                <div class="right">¥300<br/>xsdf</div>
	            </div>
	            <div class="orderprice"> 人：2　合计：¥500
	            </div>
	            <div class="orderbtn" ng-if="item.order_status_value!='已完成' && item.order_status_value!='已取消'">
	                <div class="btn1" ng-if="item.order_status_value=='待付款'" ng-click="goPay(item.metainfo[0].p_name,item.order_number,item.payment_amount-item.didPaidAmount)">立即付款</div>
	                <div class="btn1" ng-if="item.order_status_value=='待消费'" ng-click="goQrcode(item.order_id)"><img src="http://mp.ginspa.com/m/images/code_small.png"> 二维码</div>
	                <div class="btn1" ng-if="item.order_status_value=='待评价'" ng-click="goRating(item.order_id,item.ordered_shop_id)">点评</div>
	                <div class="btn2" ng-if="item.order_status_value=='待付款'" ng-click="goCancel(item.order_id)">取消</div>
	            </div>
	        </li>
	        <li ng-repeat="item in orderlist">
	            <div class="line"></div>
	            <div class="ordernum" ng-click="goOrderDetails(item.order_id)">预约号：10000<span>已预约</span></div>
	            <div class="orderinfo" ng-repeat="meta in item.metainfo" ng-click="goOrderDetails(item.order_id)">
	                <div class="left" ng-if="meta.p_type!=3 || meta.p_url!='nil'"><img ng-src="{{meta.p_url+rectangleThumb}}"></div>
	                <div class="center">SPAN足疗</div>
	                <div class="right">¥300<br/>xsdf</div>
	            </div>
	            <div class="orderprice"> 人：2　合计：¥500
	            </div>
	            <div class="orderbtn" ng-if="item.order_status_value!='已完成' && item.order_status_value!='已取消'">
	                <div class="btn1" ng-if="item.order_status_value=='待付款'" ng-click="goPay(item.metainfo[0].p_name,item.order_number,item.payment_amount-item.didPaidAmount)">立即付款</div>
	                <div class="btn1" ng-if="item.order_status_value=='待消费'" ng-click="goQrcode(item.order_id)"><img src="http://mp.ginspa.com/m/images/code_small.png"> 二维码</div>
	                <div class="btn1" ng-if="item.order_status_value=='待评价'" ng-click="goRating(item.order_id,item.ordered_shop_id)">点评</div>
	                <div class="btn2" ng-if="item.order_status_value=='待付款'" ng-click="goCancel(item.order_id)">取消</div>
	            </div>
	        </li>
	    </ul>
	    <ul class="list" style="display: none;">
	        <li ng-repeat="item in orderlist | filter : {order_status_id:statusId}">
	            <div class="line"></div>
	            <div class="ordernum" ng-click="goOrderDetails(item.order_id)">预约号：{{item.order_number.substring(0,15)}}<span>{{item.order_status_value}}</span></div>
	            <div class="orderinfo" ng-repeat="meta in item.metainfo" ng-click="goOrderDetails(item.order_id)">
	                <div class="left"><img ng-src="{{meta.p_url+rectangleThumb}}"></div>
	                <div class="center">{{meta.p_name}}</div>
	                <div class="right">¥{{meta.p_price.toFixed(2)}}<br>x1</div>
	            </div>
	            <div class="orderprice"> 人数：3　合计：¥300
	            </div>
	            <div class="orderbtn" ng-if="item.order_status_value!='已完成' && item.order_status_value!='已取消'">
	                <div class="btn1" ng-if="item.order_status_value=='待付款'" ng-click="goPay(item.metainfo[0].p_name,item.order_number,item.payment_amount-item.didPaidAmount)">立即付款</div>
	                <div class="btn1" ng-if="item.order_status_value=='待消费'" ng-click="goQrcode(item.order_id)"><img src="http://mp.ginspa.com/m/images/code_small.png"> 二维码</div>
	                <div class="btn1" ng-if="item.order_status_value=='待评价'" ng-click="goRating(item.order_id,item.ordered_shop_id)">点评</div>
	                <div class="btn2" ng-if="item.order_status_value=='待付款'" ng-click="goCancel(item.order_id)">取消</div>
	            </div>
	        </li>
	    </ul>
	</section>
	<nav class="elasticbox">
	    <div class="elasticbox_one" ng-click="goIndex()"><img src="http://mp.ginspa.com/m/images/nav_icon1.png"><br>首页</div>
	    <div class="elasticbox_one" ng-click="goMallPage()"><img src="http://mp.ginspa.com/m/images/nav_icon5.png"><br>兑换</div>
	    <div class="elasticbox_one" ng-click="goCardsPage()"><img src="http://mp.ginspa.com/m/images/nav_icon2.png"><br>卡券</div>
	    <div class="elasticbox_one active" ng-click="goOrdersPage()"><img src="http://mp.ginspa.com/m/images/nav_icon3_active.png"><br>订单</div>
	    <div class="elasticbox_one" ng-click="goProfilePage()"><img src="http://mp.ginspa.com/m/images/nav_icon4.png"><br>我的</div>
	</nav>
	
	<div class="confirm_box">
	     <div class="confirm">
	         <div class="confirm_txt">真的要放弃吗?</div>
	         <div class="confirm_left" ng-click="cancel()">取消</div>
	         <div class="confirm_right" ng-click="submit()">确定</div>
	     </div>
	</div>
</body>
</html>
