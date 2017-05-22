<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>WeUI</title>
<link rel="stylesheet" href="./css/public.css">
<link rel="stylesheet" href="./css/css.css">
<link rel="stylesheet" href="./css/swiper.min.css">
<link rel="stylesheet" href="./css/font-awesome.min.css">
<!-- 引入 WeUI -->
<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css" />
<link rel="stylesheet" href="./css/example.css" />
<link rel="stylesheet" href="./css/index.css" />
<script src="./js/user.js"></script>
</head>

<body>
	<header class="elasticbox elasticboxnew" id="wxhide">
	    <div class="elasticbox_one left" onclick="history.go(-1)"><img src="http://mp.ginspa.com/m/images/return.png"></div>
	    <div class="elasticbox_one center">点评</div>
	    <div class="elasticbox_one right"></div>
	</header>
	<section class="commentlist_content">
	    <dl class="elasticbox">
	        <dd class="elasticbox_one active" ng-click="selectAll($event)">全部(10)</dd>
	        <dd class="elasticbox_one" ng-click="selectGood($event)">好评(2)</dd>
	        <dd class="elasticbox_one" ng-click="selectBad($event)">差评(3)</dd>
	        <dd class="elasticbox_one" ng-click="selectImg($event)">有图(4)</dd>
	    </dl>
	    <ul>
	        <li ng-repeat="item in ratinglist | filter:filtertxt">
	            <div class="left" ng-if="item.rating_image_user_id==1"><img ng-src="http://img.blog.csdn.net/20151123175938755"></div>
	            <div class="right">
	                <div class="comment_name" ng-if="item.rating_image_user_id==1">李四<span>2017-5-10</span></div>
	                <div class="comment_star">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>0">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>1">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>2">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>3">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>4">
	                </div>
	                <div class="comment_text">
	                    <span ng-if="item.content.length>80 && ratinglength[$index]==0">士大夫撒旦法</span>
	                </div>
	                <div class="comment_show">
	                    <a ng-if="item.content.length>80 && ratinglength[$index]==0" ng-click="showall($index)">全文</a>
	                </div>
	                <dl style="overflow: hidden;">
	                    <dd ng-repeat="imgitem in item.image | limitTo:9" ng-click="goImgDetails(item.rating_id,$index)" ng-if="item.rating_image_user_id==1"><img ng-src="{{imgitem}}"></dd>
	                </dl>
	                <div style="height: 2rem; line-height: 2rem; font-size: 1rem; color: #9B9B9B;" ng-if="item.rating_image_user_id==1">来自大众点评</div>
	                <div class="huifubox" ng-if="item.replyArray.length>0">
	                    <i></i>
	                    <div class="cont" ng-repeat="ratingitem in item.replyArray | limitTo:1">
	                        <div class="tit"><span class="span1">商家回应</span><span class="span2">呼呼丫丫丫丫</span></div>
	                        <p>描述描述描述描述描述</p>
	                        <span ng-click="goRatingDetails(item.rating_id)">查看更多(5)</span>
	                    </div>
	                </div>
	            </div>
	        </li>
	        <li ng-repeat="item in ratinglist | filter:filtertxt">
	            <div class="left" ng-if="item.rating_image_user_id!=1"><img ng-src="{{item.icon_url+squareThumb}}"></div>
	            <div class="right">
	                <div class="comment_name" ng-if="item.rating_image_user_id!=1">张三<span>2017-5-10</span></div>
	                <div class="comment_star">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>0">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>1">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>2">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>3">
	                    <img src="http://mp.ginspa.com/m/images/star.jpg" ng-show="item.score_total/2>4">
	                </div>
	                <div class="comment_text">
	                    <span ng-if="item.content.length<=80 || ratinglength[$index]==1">会员号红烧豆腐</span>
	                </div>
	                <div class="comment_show">
	                    <a ng-if="(item.content.length<=80 && ratinglength[$index]==1) || (item.content.length>80 && ratinglength[$index]==1)" ng-click="hideall($index)">收起</a>
	                </div>
	                <dl style="overflow: hidden;">
	                    <dd ng-repeat="imgitem in item.image | limitTo:9" ng-click="goImgDetails(item.rating_id,$index)" ng-if="item.rating_image_user_id!=1"><img ng-src="{{imgitem+squareThumb}}"></dd>
	                </dl>
	                <div style="height: 2rem; line-height: 2rem; font-size: 1rem; color: #9B9B9B;" ng-if="item.rating_image_user_id==1">来自大众点评</div>
	                <div class="huifubox" ng-if="item.replyArray.length>0">
	                    <i></i>
	                    <div class="cont" ng-repeat="ratingitem in item.replyArray | limitTo:1">
	                        <div class="tit"><span class="span1">商家回应</span><span class="span2">呼呼丫丫丫丫</span></div>
	                        <p>描述描述描述描述描述</p>
	                        <span ng-click="goRatingDetails(item.rating_id)">查看更多(5)</span>
	                    </div>
	                </div>
	            </div>
	        </li>
	    </ul>
	    <div class="loadmore" ng-click="ratingmore()" ng-if=" page < totalpages && filtertxt == null">加载更多</div>
	</section>
</body>
</html>
