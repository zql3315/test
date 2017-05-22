$(function() {

	/* 文本框只能输入文字 */
	var just_num = function(obj) {
		obj.val(obj.val().replace(/\D|^0/g, ''));
	}
	// 用法
	// $('.test').keyup(function(){
	// just_num($(this));
	// })

	function resizeRem() {
		var fs = $(window).width() / 7.2;
		// fs = fs > 200 ? 200 : fs;
		// if ($(window).width()>720) {
		// $('html').css('font-size',100+'px');
		// } else{
		// $('html').css('font-size', fs + 'px');
		// }
		fs = fs > 100 ? 100 : fs;
		$('html').css('font-size', fs + 'px');
		$('.layout').show();
	}

	$(window).resize(function() {
		resizeRem();
	})

	resizeRem();

	/* 触屏 */
	$(".slider .inner").bind("swipeleft", function() {

	});

	$(".slider .inner").bind("swiperight", function() {

	});

	$('.mask .close, .mask .btn,.mask .ft a').click(function() {
		// $(this).parent().addClass('hide');
		$('.mask').hide();
	})

	$('.mask .wrap1 .btn').click(function() {
		$('.mask').hide();
		return false;
	})

	$('.device_list .footer .add').click(function() {
		$('.mask').show();
		return false;
	})

})

/* 摇一摇 */
$(document).ready(function() {
	// 判断系统是否支持html5摇一摇的相关属性
	if (window.DeviceMotionEvent) {
		var speed = 25;

		var x = t = z = lastX = lastY = lastZ = 0;
		//运动事件监听
		window.addEventListener('devicemotion', function() {
			//获取加速度信息
			//通过监听上一步获取到的x, y, z 值在一定时间范围内的变化率，进行设备是否有进行晃动的判断。
			//而为了防止正常移动的误判，需要给该变化率设置一个合适的临界值。
			var acceleration = event.accelerationIncludingGravity;
			x = acceleration.x;
			y = acceleration.y;
			if (Math.abs(x - lastX) > speed || Math.abs(y - lastY) > speed) {

				// 判断要不要执行
				if ($('.home_mask').is(':visible'))
					return false;

				// 摇一摇后js代码
				$('.home_page .ico').addClass('wobble');

				var vibrateSupport = "vibrate" in navigator  
				if (vibrateSupport) { //兼容不同的浏览器  
					navigator.vibrate = navigator.vibrate || navigator.webkitVibrate || navigator.mozVibrate || navigator.msVibrate;  
					navigator.vibrate(2000);// 震动1000毫秒
				}

				// 打开弹窗
				setTimeout(function() {
					$('.home_mask').show();
					$('.home_page .ico').removeClass('wobble');
				}, 1000);
			}
			;
			lastX = x;
			lastY = y;
		}, false);
	} else {
		alert('not support mobile event');
	}
});