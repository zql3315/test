<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>WeUI</title>
 <link rel="stylesheet" href="css/public.css">
    <link rel="stylesheet" href="http://mp.ginspa.com/m/css/user.css">
    <link rel="stylesheet" href="http://mp.ginspa.com/m/css/swiper.min.css">
    <link rel="stylesheet" href="http://mp.ginspa.com/m/css/font-awesome.min.css">
<!-- 引入 WeUI -->
<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css" />
<link rel="stylesheet" href="./css/example.css" />
<link rel="stylesheet" href="./css/index.css" />
<script src="./zepto.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
</head>

<body>
	<div class="page tabbar js_show">
		<div class="page__bd" style="height: 100%;">
			<div class="weui-tab">
				<div class="weui-tab__panel personal">
					<div class="tou-bg">
						<div class="p-info">
							<p><img src="http://img.blog.csdn.net/20151123175938755"></p>
							<p>墨水123</p>
						</div>
					</div>
					<section class="userindex_content">
					    <div class="info">
					        <div class="img" ng-click="goUserInfo()"><img ng-src="{{userinfo.icon_url+squareThumb}}"></div>
					        <div class="txt ng-binding" ng-click="goUserInfo()">{{userinfo.nickname}} ＞</div>
					    </div>
					    <div class="line"></div>
					    <div class="mypurse">
					        <img src="images/purse.png"><span>我的钱包</span>
					    </div>
					    <div class="mymoney">
					        <div class="elasticbox_one" style="border-right: 1px #d7d7da solid;" ng-click="goUserPurse()">
					            <div class="txt_big ng-binding"><img src="images/userindex_icon1.jpg"> 余额：{{userinfo.balance.toFixed(2)}}</div>
					            <!-- ngIf: money.ticket_charge_rebate_type==1 && nowTime>endTime -->
					            <!-- ngIf: money.ticket_charge_rebate_type==2 && nowTime>endTime -->
					            <!-- ngIf: nowTime<=endTime -->
					        </div>
					        <div class="elasticbox_one" ng-click="goPointinfo()">
					            <div class="txt_big ng-binding"><img src="images/userindex_icon2.jpg"> 奇币：{{userinfo.point}}</div>
					            <div class="txt_small">每消费1元获得0.5奇币</div>
					        </div>
					    </div>
					    <div class="line"></div>
					    <div class="mycard_t">
					        <img src="images/card.png"><span>我的卡券</span>
					    </div>
					    <ul class="mycard_p elasticbox">
					        <li class="elasticbox_one" ng-click="gocardexperience()">
					            <div class="card_img">
					                <img src="images/tiyan.png">
					            </div>
					            <div class="card_txt">体验券</div>
					            <div class="card_num ng-binding" ng-hide="userinfo.countCardType3==0">{{userinfo.countCardType3}}</div>
					        </li>
					        <li class="elasticbox_one" style="border: none;" ng-click="goUserCard2()">
					            <div class="card_img">
					                <img src="images/youhui.png">
					            </div>
					            <div class="card_txt">优惠券</div>
					            <div class="card_num ng-binding" ng-hide="userinfo.countCardType2==0">{{userinfo.countCardType2}}</div>
					        </li>
					        <!--<li class="elasticbox_one" style="border: none;">-->
					            <!--<div class="card_img">-->
					                <!--<img src="images/lipin.png">-->
					            <!--</div>-->
					            <!--<div class="card_txt">礼品卡</div>-->
					        <!--</li>-->
					    </ul>
					    <div class="line"></div>
					    <div class="myorder_t">
					        <img src="images/order.png"><span>预约订单</span>
					    </div>
					    <ul class="myorder_p elasticbox">
					        <li class="elasticbox_one" ng-click="goorderlist(2)">
					            <div class="order_txt">未消费</div>
					            <div class="order_num ng-binding" ng-hide="userinfo.countOrderStatus2==0">{{userinfo.countOrderStatus2}}</div>
					        </li>
					        <li class="elasticbox_one" ng-click="goorderlist(1)">
					            <div class="order_txt">待付款</div>
					            <div class="order_num ng-binding" ng-hide="userinfo.countOrderStatus1==0">{{userinfo.countOrderStatus1}}</div>
					        </li>
					        <li class="elasticbox_one" ng-click="goorderlist(3)">
					            <div class="order_txt">待点评</div>
					            <div class="order_num ng-binding" ng-hide="userinfo.countOrderStatus3==0">{{userinfo.countOrderStatus3}}</div>
					        </li>
					        <li class="elasticbox_one" style="border: none;" ng-click="goRefundList()">
					            <div class="order_txt">退款</div>
					        </li>
					    </ul>
					    <div class="line"></div>
					    <div class="mypurse" ng-click="goRating()">
					        <img src="images/dianping.png"><span>我的点评</span>
					    </div>
					    <div class="line"></div>
					</section>
					<div style="background-color: #d3d8de;margin: 5px 0px;">
						<div style="background-color: #f2f2f5">
							<span>我的钱包</span>
						</div>
						<div style="background-color: #f2f2f5;display: block;">
							<div style="width:45%;border-right: 1px solid #c0bfc4;">
								<span>电子卡</span>
							</div>
							<div style="width:45%">
								<span>实体卡</span>
							</div>
						</div>
					</div>
					<div class="p-tool">
						<ul class="tool-list01">
							<li><a href="#"><p class="my1 my-ico"></p><p>我的预约</p></a></li>
							<li><a href="#"><p class="my2 my-ico"></p><p>我的收藏</p></a></li>
							<li class="no-border"><a href="#"><p class="my3 my-ico"></p><p>会员卡</p></a></li>
						</ul>
						<ul class="tool-list02">
							<li><a href="user.jsp"><span class="my3 my-ico">个人信息</span><span class="right"><i class="fa fa-angle-right"></i></span></a></li>
							<li><a href="#"><span class="my4 my-ico">我的票券</span><span class="right"><i class="fa fa-angle-right"></i></span></a></li>
							<li><a href="#"><span class="my5 my-ico">我要充值</span><span class="right"><i class="fa fa-angle-right"></i></span></a></li>
							<li><a href="#"><span class="my6 my-ico">我的点评</span><span class="right"><i class="fa fa-angle-right"></i></span></a></li>
						</ul>
					</div>
				</div>
				<div class="weui-tabbar">
					<a href="javascript:;" class="weui-tabbar__item weui-bar__item_on">
						<span style="display: inline-block;position: relative;"> <img
							src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon"> <span
							class="weui-badge" style="position: absolute;top: -2px;right: -13px;">8</span>
						</span>
						<p class="weui-tabbar__label">微信</p>
					</a>
					<a href="javascript:;" class="weui-tabbar__item">
						<img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
						<p class="weui-tabbar__label">通讯录</p>
					</a>
					<a href="javascript:;" class="weui-tabbar__item">
						<span style="display: inline-block;position: relative;"> <img
							src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon"> <span
							class="weui-badge weui-badge_dot" style="position: absolute;top: 0;right: -6px;"></span>
						</span>
						<p class="weui-tabbar__label">发现</p>
					</a>
					<a href="javascript:;" class="weui-tabbar__item">
						<img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
						<p class="weui-tabbar__label">我</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    $(function(){
        $('.weui-tabbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
    });
</script>
</body>
</html>
