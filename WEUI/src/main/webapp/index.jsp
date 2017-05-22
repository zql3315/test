<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	<title>WeUI</title>
	<!-- 引入 WeUI -->
	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css" />
</head>
<body>
	<!-- 按钮两侧留有空隙 -->
	<div class="weui-btn-area">
		按钮默认是 100% 的宽度，所以在页面上左右两侧是没有空隙的，如果想要两侧留有空隙，在按钮的父级元素添加 weui-btn-area 类即可。
	    <a href="#" class="weui-btn weui-btn_primary">按钮</a>
		除以上这些按钮样式，还有一种小尺寸的按钮，宽度为自适应，在上面的任意样式按钮添加 weui-btn_mini 类即可。
		<!-- mini 按钮 -->
		<a href="#" class="weui-btn weui-btn_mini weui-btn_primary">mini 按钮</a>
	</div>
	<!-- 白色按钮 -->
	<a href="#" class="weui-btn weui-btn_default">按钮</a>
	<!-- 绿色按钮 -->
	<a href="#" class="weui-btn weui-btn_primary">按钮</a>
	<!-- 红色按钮 -->
	<a href="#" class="weui-btn weui-btn_warn">按钮</a>
	<!-- 白色禁用按钮 -->
	<a href="#" class="weui-btn weui-btn_disabled weui-btn_default">按钮</a>
	<!-- 绿色禁用按钮 -->
	<a href="#" class="weui-btn weui-btn_disabled weui-btn_primary">按钮</a>
	<!-- 红色禁用 -->
	<a href="#" class="weui-btn weui-btn_disabled weui-btn_warn">按钮</a>
	<!-- 白色镂空 -->
	<a href="#" class="weui-btn weui-btn_plain-default">按钮</a>
	<!-- 绿色镂空 -->
	<a href="#" class="weui-btn weui-btn_plain-primary">按钮</a>
	<!-- 白色镂空禁用 -->
	<a href="#" class="weui-btn weui-btn_plain-default weui-btn_plain-disabled">按钮</a>
	<!-- 绿色镂空禁用 -->
	<a href="#" class="weui-btn weui-btn_plain-primary weui-btn_plain-disabled">按钮</a>
</body>
</html>
