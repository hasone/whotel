<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<style>
    .headerF { padding: 5px 0; display: block; position: fixed; width: 100%; z-index: 3; bottom: 0px; color: #F03C03; background-color:#fff; line-height: 32px; font-size: 14px;border-top: 1px solid #E2E2E2; }
    .headerF .left { float: left;margin-left: 10px }
    .headerF .right { float: right;margin-right: 10px }
    .footermenu {
        position: relative;
        bottom: 0;
        left: 0;
        right: 0;
        z-index: 900;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    }
    .footermenu ul {
        position: fixed;
        z-index: 900;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
        display: block;
        width: 100%;
        height: 48px;
        display: -webkit-box;
        display: box;
        -webkit-box-orient: horizontal;
        background-color: #282f35;
        background: -webkit-linear-gradient(top,#282f35,#282f35);

        background:#5ac5d4;
        border-top: 1px solid #5ac5d4;
        /*border-top: 1px solid #404a54;*/
    }
    .footermenu ul li {
        width: auto!important;
        height: 100%;
        position: static!important;
        margin: 0;
        border-radius: 0!important;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-box-flex: 1;
        box-flex: 1;
        -webkit-box-sizing: border-box;
        box-shadow: none!important;
        background: none;
    }
    .footermenu ul li img {
        vertical-align: bottom;
    }
    .footermenu ul li a {
        color: #fff;
        text-align: center;
        display: block;
        text-decoration: none;
        padding-top: 2px;
        font-size: 12px;
        position: relative;
        height: 46px;
        text-shadow: 0 1px rgba(0, 0, 0, 0.2);
        line-height: 20px;
    }
    .footermenu ul li a.active {
        /*background: -webkit-linear-gradient(top,#404a54,#252c34);*/
        background: -webkit-linear-gradient(top,#5ac5d4,#5ac5d4);
        box-shadow: 0 -10px 25px 0px rgba(0,0,0,0.3) inset;
    }
    .xhlbtn {
        display: block;
        text-align: center;
        background-color: #F03C03;
        /*background-color: #fdb338;*/
        /*background-color: #5ac5d4;*/
        padding: 0 15px;
        border-radius: 20px;
        color: #fff;
        font-weight: bold;
    }
    .right .disable{
        background-color:  #dbdbdb;
    }
	#totalcountshow {
	display: none;
	-webkit-text-size-adjust: none;
	font-size: 10px;
	position: absolute;
	left: 36px;
	top: 1px;
	background-color: #ef4437;
	color: #fff;
	font-family: Verdana;
	font-weight: normal;
	padding: 2px 4px;
	border-radius: 15px;
	line-height: 10px;
	text-align: center;
	opacity: 1
}
</style>
<div class="headerF">
    <input type="hidden" id="restId" value="${rest.id}">
    <input type="hidden" id="tabId" value="${tabId}">
	<input type="hidden" id="hotelCode" value="${rest.hotelCode}">
    <input type="hidden" id="totalprice" value="{$totalprice}" name="totalprice">
    <input type="hidden" id="totalcount" value="{$totalcount}" name="totalcount">
    <input type="hidden" id="btnstatus" value="0" name="btnstatus">

    <div class="left"><span id="cartN"></span><img style="float:left;width:30px;height:30px;margin-left:5px" src="/static/meal/images/cart.png"/><span id="totalcountshow" style="z-index:20">0</span>　总计：￥<span id="totalpriceshow">0</span></span>元</div>
    <div class="right"><a id="btnselect" class="xhlbtn disable" href="javascript:void(0)" onclick="btnSelectJump();">去结算
	</a></div>
    <input type="hidden" id="limitprice" value="{$limitprice}" name="limitprice">
</div>
<script>
function changeBtnSelect() {
    var limitprice = parseFloat(_q("#limitprice").value);
    var totalprice = parseFloat(_q("#totalprice").value);
	if(_q("#totalcountshow").innerHTML == '0' )
		_q("#totalcountshow").style['display'] = 'none';
	else
		_q("#totalcountshow").style['display'] = 'inline-block';
    if (limitprice > 0) {
        if (totalprice > limitprice) {
            _removeClass(_q("#btnselect"),'disable');
            _q("#btnstatus").value = '1';
        } else {
            _addClass(_q("#btnselect"),'disable');
            _q("#btnstatus").value = '0';
        }
    } else {
        if (totalprice > 0) {
            _q("#btnstatus").value = '1';
            _removeClass(_q("#btnselect"),'disable');
        } else {
            _q("#btnstatus").value = '0';
            _addClass(_q("#btnselect"),'disable');
        }
    }
}
function btnSelectJump() {
    var url = "/oauth/meal/menu.do?tabId="+$('#tabId').val() + "&restId="+$('#restId').val();
    var status = _q("#btnstatus").value;
    if (status == 1) {
        location.href= url;
    }
}

</script>