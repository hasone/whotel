<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title></title>
	<meta name="format-detection" content="telephone=no, address=no">
	<meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
	<meta name="apple-touch-fullscreen" content="yes"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="shortcut icon" href="" />
	<script src="http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script>
	<script type="text/javascript" src="/static/meal/js/util.js"></script>
	<script src="/static/meal/js/require.js"></script>
	<script type="text/javascript" src="/static/meal/js/jquery-1.11.3.min.js?v=20160906"></script>
	<script type="text/javascript" src="/static/meal/js/mui.min.js?v=20160906"></script>
	<script type="text/javascript" src="/static/meal/js/common.js?v=20160906"></script>
	<link href="/static/meal/css/bootstrap.min.css?v=20160906" rel="stylesheet">
	<link href="/static/meal/css/common.min.css?v=20160906" rel="stylesheet">
	<script type="text/javascript">
	if(navigator.appName == 'Microsoft Internet Explorer'){
		if(navigator.userAgent.indexOf("MSIE 5.0")>0 || navigator.userAgent.indexOf("MSIE 6.0")>0 || navigator.userAgent.indexOf("MSIE 7.0")>0) {
			alert('您使用的 IE 浏览器版本过低, 推荐使用 Chrome 浏览器或 IE8 及以上版本浏览器.');
		}
	}
	window.sysinfo = {
		
	};
	
	</script>
</head>
<body>
<div class="container container-fill">

<div class="mui-content pay-method">
	<h5 class="mui-desc-title mui-pl10">订单详情</h5>
	<ul class="mui-table-view">

		<li class="mui-table-view-cell">
			订单编号<span class="mui-pull-right mui-text-muted">${order.orderSn}</span>
		</li>
		<li class="mui-table-view-cell">
			商家名称<span class="mui-pull-right mui-text-muted">${rest.name}</span>
		</li>

		<li class="mui-table-view-cell">
			您需要支付<span class="mui-pull-right mui-text-success mui-big mui-rmb">${order.totalFee} 元</span>
		</li>
	</ul>
	
	<h5 class="mui-desc-title mui-pl10">选择支付方式</h5>
	<ul class="mui-table-view mui-table-view-chevron">

		<li class="mui-table-view-cell">
			<a class="mui-navigate-right mui-media js-pay" href="javascript:;">
				<form action="{php echo url('mc/cash/credit');}" method="post">
					<input type="hidden" name="params" value="{php echo base64_encode(json_encode($params));}" />
					<input type="hidden" name="code" value="" />
					<input type="hidden" name="coupon_id" value="" />
				</form>
				<img src="/static/meal/images/money.png" alt="" class="mui-media-object mui-pull-left"/>
				<span class="mui-media-body mui-block">
					余额
					<span class="mui-block mui-text-muted mui-rmb mui-mt5"> 30.00</span>
				</span>
			</a>
		</li>

		

		<li class="mui-table-view-cell mui-disabled js-wechat-pay">
			<a class="mui-navigate-right mui-media" href="javascript:;">
				<form action="{php echo url('mc/cash/wechat');}" method="post">
					<input type="hidden" name="params" value="{php echo base64_encode(json_encode($params));}" />
					<input type="hidden" name="code" value="" />
					<input type="hidden" name="coupon_id" value="" />
				</form>
				<img src="/static/meal/images/wx-icon.png" alt="" class="mui-media-object mui-pull-left"/>
				<span class="mui-media-body mui-block">
					<span id="wetitle">微信支付(必须使用微信内置浏览器)</span>
					<span class="mui-block mui-text-muted mui-mt5">微信支付,安全快捷</span>
				</span>
			</a>
		</li>

		

		<li class="mui-table-view-cell">
			<a class="mui-navigate-right mui-media js-pay" href="javascript:;">
				<form action="{php echo url('mc/cash/delivery');}" method="post">
					<input type="hidden" name="params" value="{php echo base64_encode(json_encode($params));}" />
					<input type="hidden" name="code" value="" />
					<input type="hidden" name="coupon_id" value="" />
				</form>
				<img src="/static/meal/images/icon_membercard.png" alt="" class="mui-media-object mui-pull-left"/>
				<span class="mui-media-body mui-block">
					会员支付
					<span class="mui-block mui-text-muted mui-mt5">会员卡支付服务</span>
				</span>
			</a>
		
	
		
	</ul>
</div>

<div id="pay-select-coupon-modal" class="mui-modal">
	<header class="mui-bar mui-bar-nav">
		<a class="mui-icon mui-icon-close mui-pull-right" href="#pay-select-coupon-modal"></a>
		<h1 class="mui-title">请选择卡券</h1>
	</header>
	<nav class="mui-bar mui-bar-footer">
		<div class="js-coupon-submit">
			<input type="hidden" name="couponid" value="">
			<button class="mui-btn mui-btn-success mui-btn-block js-submit">确定</button>
		</div>
	</nav>
	<div class="mui-content">
		<div class="pay-select-coupon">
			<div class="js-coupon-show">
				{loop $coupon $li}
				<div class="mui-input-row mui-radio">
					<label>
						<div class="coupon-panel">
							<div class="mui-row">
								<div class="mui-col-xs-4 mui-text-center">
									<div class="coupon-panel-left">
										{$li['icon']}
									</div>
								</div>
								<div class="mui-col-xs-8">
									<div class="store-title mui-ellipsis">{$li['title']}</div>
									<div class="date">{$li['extra_date_info']}</div>
								</div>
							</div>
						</div>
						<input type="radio" name="coupon" value="{$li['id']}" />
					</label>
					<ol class="coupon-rules" style="display:none;">
						{if empty($li[description])}
						暂无说明
						{else}
						{php echo htmlspecialchars_decode($li['description'])}
						{/if}
					</ol>
					<div class="scan-rules js-scan-rules">折扣券使用规则<span class="fa fa-angle-up"></span></div>
				</div>
				{/loop}
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).on('click', '.js-scan-rules', function() {
		$(this).prev().toggle();
		$(this).find('span').toggleClass('fa-angle-up');
		$(this).find('span').toggleClass('fa-angle-down');
	});
	$(document).on('click', 'input[type="radio"]', function() {
		hidden_couponid = $('input[name="couponid"]').val();
		var couponid = $(this).val();
		if (!hidden_couponid) {
			$('input[type="radio"]').prop('checked', false);
			$(this).prop('checked', true);
			$('input[name="couponid"]').val(couponid);
		} else {
			if (hidden_couponid == couponid) {
				$(this).prop('checked', false);
				$('input[name="couponid"]').val('');
			} else {
				$('input[type="radio"]').prop('checked', false);
				$(this).prop('checked', true);
				$('input[name="couponid"]').val(couponid);
			}
		}
	});
	var cards_str = '';
	if (cards_str) {
		cards_str = $.parseJSON(cards_str);
	} else {
		cards_str = {};
	}
	$(document).on('click', '.js-submit', function() {
		var checked_card = $('input[name="couponid"]').val();
		if(checked_card && cards_str[checked_card]) {
			if (cards_str[checked_card].type == '1') {
				$('.js-coupon .js-card-info').html('已抵用'+cards_str[checked_card].discount_cn+'元');
				$('.js-token .js-card-info').html('未使用');
			};
			if (cards_str[checked_card].type == '2') {
				$('.js-token .js-card-info').html('已抵用'+cards_str[checked_card].discount_cn+'元');
				$('.js-coupon .js-card-info').html('未使用');
			};
			$('.js-pay input[name="coupon_id"]').val(checked_card);
			$('.js-pay input[name="code"]').val(cards_str[checked_card]['code']);
		} else {
			$('.js-token .js-card-info').html('未使用');
			$('.js-coupon .js-card-info').html('未使用');
			$('.js-pay input[name="coupon_id"]').val(0);
		}
		$('#pay-select-coupon-modal').removeClass('mui-active');
		$('#pay-select-token-modal').removeClass('mui-active');
		$('.mui-backdrop').remove('.mui-backdrop');
		$('.pay-method').removeAttr('style');
	})
</script>
{/if}
<script type="text/javascript">
	document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		$('.js-wechat-pay').removeClass('mui-disabled');
		$('.js-wechat-pay a').addClass('js-pay');
		$('#wetitle').html('微信支付');
	});
	$(document).on('click', '.js-pay', function() {
		$(this).find('form').submit();
	})
</script>

</div>
</body>
</html>
