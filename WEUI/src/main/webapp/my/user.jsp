<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<title>WeUI</title>
<!-- 引入 WeUI -->
<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css" />
<script src="./zepto.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
<style type="text/css">
.weui-uploader__input-box {
	border: none;
	float: none;
}

.weui-uploader__input-box:after, .weui-uploader__input-box:before {
	content: none;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<div class="weui-cells">
		<a href="#" class="weui-cell weui-cell_access">
			<div class="weui-cell__bd">
				<p>头像</p>
			</div>
			<div class="weui-cell__ft">
				<ul class="weui-uploader__files">
					<li class="weui-uploader__file" id="uploaderFiles"
						style="background-image:url(./images/pic_160.png)"></li>
				</ul>
				<div class="weui-uploader__input-box">
					<input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple />
				</div>
			</div>
		</a>
		<a href="updatename.jsp" class="weui-cell weui-cell_access">
			<div class="weui-cell__bd">
				<p>昵称</p>
			</div>
			<div class="weui-cell__ft">墨水</div>
		</a>
		<a href="#" id="showPicker" class="weui-cell weui-cell_access">
			<div class="weui-cell__bd">
				<p>性别</p>
			</div>
			<div class="weui-cell__ft" id="sex" value=0>男</div>
		</a>
		<a href="#" id="showDatePicker" class="weui-cell weui-cell_access">
			<div class="weui-cell__bd">
				<p>生日</p>
			</div>
			<div class="weui-cell__ft" id="age">1987-09-21</div>
		</a>
		<a href="updateTelphone.jsp" class="weui-cell weui-cell_access">
			<div class="weui-cell__bd">
				<p>手机号码</p>
			</div>
			<div class="weui-cell__ft">13913874862</div>
		</a>
	</div>
	<script type="text/javascript">
		$('#showPicker').on('click', function() {
			weui.picker([ {
				label : '男',
				value : 0
			}, {
				label : '女',
				value : 1
			} ], {
				onChange : function(result) {
					console.log(result);
				},
				onConfirm : function(result) {
					if(result == 0)
						$("#sex").text("男");
					else
						$("#sex").text("女");
					console.log(result);
				}
			});
		});
		$('#showDatePicker').on('click', function() {
			weui.datePicker({
				start : 1970,
				end : new Date().getFullYear(),
				onChange : function(result) {
					//console.log(result);
				},
				onConfirm : function(result) {
					$("#age").text(result.join("-"));
					console.log(result);
				}
			});
		});

		$(function() {
			var tmpl = '<li class="weui-uploader__file" style="background-image:url(#url#)"></li>', $uploaderInput = $("#uploaderInput");
			$uploaderInput.on("change",
					function(e) {
						var src, url = window.URL || window.webkitURL
								|| window.mozURL, files = e.target.files;
						var file = files[0];
						if (url) {
							src = url.createObjectURL(file);
						} else {
							src = e.target.result;
						}
						console.log(src);
						$("#uploaderFiles").css("background-image","url(" + src + ")");
					});
		});
	</script>
</body>
</html>
