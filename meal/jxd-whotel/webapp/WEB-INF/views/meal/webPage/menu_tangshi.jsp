<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<html lang="zh-CN"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no">
<title>我的商品</title>
<link rel="stylesheet" type="text/css" href="/static/meal/css/wei_canyin_v1.8.4.css?v=1.1.2" media="all">
<link rel="stylesheet" type="text/css" href="/static/meal/css/wei_dialog_v1.2.1.css?v=1.0" media="all">
<script type="text/javascript" src="/static/meal/js/wei_webapp_v2_common_v1.9.4.js"></script>
<script type="text/javascript" src="/static/meal/js/wei_dialog_v1.9.9.js?v=1"></script>
<script type="text/javascript" src="/static/meal/js/jQuery.js"></script>
<link rel="stylesheet" type="text/css" href="/static/meal/css/mobiscroll.custom-2.6.2.min.css" media="all">
<link data-turbolinks-track="true" href="/static/meal/css/font.css?v=1" media="all" rel="stylesheet">
<script type="text/javascript" src="/static/meal/js/mobiscroll.custom-2.6.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/meal/css/menu_tangshi.css" media="all">

<style>abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,fieldset,figure,figcaption,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,small,time,video,legend{display:block;}</style>

<script type="text/javascript">
    $(function () {
        var dat = new Date();
        var curr = dat.getFullYear();
        var currM = dat.getMonth();
        var currD = dat.getDate();
        var opt = {}
        opt.date = { preset: 'date', minDate: new Date(curr, currM, currD, 9, 22), maxDate: new Date(curr, currM + 1, currD, 15, 44), stepMinute: 5 };
        opt.datetime = { preset: 'datetime', minDate: new Date(2012, 3, 10, 9, 22), maxDate: new Date(2014, 7, 30, 15, 44), stepMinute: 5 };
        opt.time = { preset: 'time' };
        $('#sdate').scroller('destroy').scroller($.extend(opt['date'], { theme: 'ios', mode: 'scroller', display: 'bottom', lang: 'zh', dateOrder: 'yymmdd', dateFormat: 'yy-mm-dd' }));
    });
</script>
<style>
    .btn_1{
        display:block;
        border:1px solid #d8d8d8;
        border-radius:3px;
        padding:10px;
        color:#666;
        background:-webkit-gradient(linear, 0 0, 0 100%, from(#fefefe), to(#efefef));
    }

    .btn_2{
        display:block;
        width:150px;
        margin:auto;
        line-height:35px;
        text-align:center;
        padding:0 5px;
        color:#fff;
        background:-webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
        border:1px solid #F03C03;
        border-radius:20px;
        font-size:15px;
    }

    .table_book{
        width:100%;
    }

    .table_book td{
        padding:5px 3px;
        white-space:nowrap;
    }

    .table_book input[type="text"], .table_book input[type="tel"], .table_book textarea{
        padding:8px;
        background:#fff;
        border-radius:5px;
        border:1px solid #dedede;
        outline:none;
        resize:none;
        width:100%;
        -webkit-box-sizing:border-box;
        box-shadow:none;

        /*width: 100%;*/
        /*-webkit-appearance: none;*/
        /*border-color: #dbdbdb;*/
        /*border-radius: 4px;*/
        /*padding: 8px 5px;*/
        /*font-size: 14px;*/
        /*line-height: 26px;*/
        /*border: 0*/
    }

    .table_book select{
        display:inline-block;
        /*-webkit-appearance:button;*/
        border:1px solid #dedede;
        border-radius:5px;
        padding:2px;
        outline:none;
        /*line-height: 28px;*/
        height: 28px;
        font-size: 16px;
        letter-spacing: normal;
        word-spacing: normal;
        width: 100%;

        font-family: Helvetica;
        align-items: center;
        white-space: pre;
        -webkit-rtl-ordering: logical;
        cursor: default;
    }

    .group_radio{
        border:1px solid #dedede;
        border-radius:18px;
        display:inline-block;
        overflow:hidden;
    }

    .group_radio input[type="radio"]{
        -webkit-appearance:button;
        display:inline-block;
        width:50px;
        height:35px;
        border-radius:0;
        border:0;
        background:-webkit-gradient(linear, 0 0, 0 100%, from(#fff), to(#f2f2f2));
    }
    .group_radio span{
        position:relative;
        display:inline-block;
        height:35px;
        width:50px;
        float:left;
        border-right:1px solid #ccc;
    }
    .group_radio span:last-of-type{
        border:0;
    }
    .group_radio span:first-child input{
        border-radius:16px 0 0 16px;
    }
    .group_radio span:last-child input{
        border-radius:0 15px 15px 0;
    }
    .group_radio span label{
        content:attr(data-title);
        position:absolute;
        top:0;
        left:0;
        z-index:10;
        color:red;
        display:inline-block;
        width:50px;
        line-height:35px;
        text-align:center;
        overflow:hidden;
        color:#666666;
        pointer-events:none;
    }
    .group_radio input[type="radio"]:checked{
        background:-webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
    }
    .group_radio input[type="radio"]:checked+label{
        color:#fff;
    }
    .group_checkbox{
        overflow:hidden;
        border-radius:16px;
        position: relative;
    }
    .group_checkbox input[type="checkbox"]{
        -webkit-appearance:button;
        padding:8px;
        width:70px;
        border-radius:16px;
        border:1px solid #dedede;
        display:inline-block;
        height:35px;
        background:url(/static/meal/images/btn1.png#1), -webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
        background-size:auto 32px, auto auto;
        background-position:right center;
        background-repeat: no-repeat;
    }
    .group_checkbox input[type="checkbox"]:checked{
        background-position:0px center;
    }
    .btn_myorder {
        padding: 5px 8px; border: 0; border-radius: 2px; cursor: pointer; background-color: #F03C03; color: #fff;
    }
</style>
    <style>
        .ddb-nav-header {
            opacity: 0.95;
            position: fixed;
            top: 0;
            width: 100%;
            height: 45px;
            line-height: 44px;
            z-index: 1999;
            border-bottom: 1px solid #eeeeee;
            background-color: white;
            color: #555555
        }

        .ddb-nav-header a {
            color: #555555
        }

        .ddb-nav-header .header-title {
            width: 50%;
            white-space: nowrap;
            text-overflow: ellipsis;
            text-align: center;
            overflow: hidden;
            font-size: 17px;
            font-weight: bold;
            display: inline-block;
            margin-left: 25%
        }

        .ddb-nav-header .nav-left-item, .ddb-nav-header .nav-right-item {
            display: inline-block;
            height: 100%
        }

        .ddb-nav-header .nav-left-item i, .ddb-nav-header .nav-right-item i {
            width: 20px;
            font-size: 18px;
            line-height: inherit;
        }

        .ddb-nav-header .nav-left-item {
            width: 25%;
            float: left;
            padding-left: 10px
        }

        .ddb-nav-header .nav-right-item {
            width: 10%;
            float: right;
            text-align: right
        }

        .ddb-nav-header .nav-right-item .operation-button {
            font-size: 16px;
            text-align: right;
            color: #555555;
            padding-right: 10px;
            font-weight: bold
        }

        .ddb-nav-header .nav-left-item ~ .header-title {
            margin-left: 0
        }

        .ddb-nav-header.label-red {
            border-bottom: 0
        }
        .notification-section {
            /*background-color: white;*/
            background-color: #fff9df;
            padding: 0 10px;
            border-bottom: 0px solid #dbdbdb
        }

        .notification-section .notice {
            border-top: 1px dotted #eeeeee;
            padding: 8px 0;
            padding-left: 30px;
            line-height: 20px
        }

        .notification-section .notice i {
            display: block;
            float: left;
            margin-left: -30px;
            text-align: center;
            width: 30px
        }

        #page_intelOrder header, #page_intelOrder section {
            margin: 0px;
        }

    </style>
</head>
<body id="page_intelOrder" class="myOrderCon">
<div class="ddb-nav-header ng-scope">
    <a class="nav-left-item" href="javascript:void(0)" onclick="history.go(-1)"><i class="fa fa-angle-left"></i></a>
    <div class="header-title ng-binding">我的菜单</div>
    <a class="nav-right-item" href="#"></a>
</div>
<div class="center">
	<section style="margin-bottom: 10px;">
        <article>
            <div>
			 <ul class="myorder" id="address">
           
                <li style="font-size:18px;color:red;left:-15px;height:20px;line-height:20px">
				   

					  <h2>西餐厅-C005</h2>
					
         
                </li>
				
            </ul>
			</div>
            <div id="form_dish" target="hide" {if $mode == 1}style="border-top: 1px #e7eaeb solid;margin-top: 10px;"{/if}>
                <table class="table_book">
                    <tbody>
                    <tr>
                        <td style="width: 80px;">用餐人数：</td>
                        <td colspan="2">
                            <input type="tel" id="counts" name="counts" value="" maxlength="3" style="width: 120px;" placeholder="请填写用餐人数">
                        </td>
                    </tr>
                  
                    <tr>
                        <td style="width: 80px; vertical-align: top; line-height: 25px;">备注说明：</td>
                        <td colspan="2">
                            <textarea name="remark" id="remark" style="height: 60px;" maxlength="100" placeholder="请输入备注(可不填)"></textarea>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </article>
    </section>
    
    <section style="margin-bottom: 10px;">
        <article>
            <h2>菜单列表
                <button class="btn_add emptyIt" id="clearBtn">清空</button>
                <button class="btn_add" onclick="location.href='">+继续点菜</button>
            </h2>
            <ul class="myorder" id="myorder">
                <script>
				String.prototype.format = function (args) {
                var result = this;
                if (arguments.length > 0) {
                    if (arguments.length == 1 && typeof (args) == "object") {
                        for (var key in args) {
                            if (args[key] != undefined) {
                                var reg = new RegExp("({" + key + "})", "g");
                                result = result.replace(reg, args[key]);
                            }
                        }
                    } else {
                        for (var i = 0; i < arguments.length; i++) {
                            if (arguments[i] != undefined) {
                                var reg = new RegExp("({)" + i + "(})", "g");
                                result = result.replace(reg, arguments[i]);
                            }
                        }
                    }
                }
                return result;
            }
               	function get_cookie(Name) {
                  var search = Name + "="//查询检索的值
                  var returnvalue = "";//返回值
                  if (document.cookie.length > 0) {
                    sd = document.cookie.indexOf(search);
                    if (sd!= -1) {
                       sd += search.length;
                       end = document.cookie.indexOf(";", sd);
                       if (end == -1)
                        end = document.cookie.length;
                        //unescape() 函数可对通过 escape() 编码的字符串进行解码。
                       returnvalue=unescape(document.cookie.substring(sd, end))
                     }
                  } 
                  return returnvalue;
                 }
				  var dishList = get_cookie('dishList');
				  dishList = eval('('+dishList+')');
				  for(var i=0;i<dishList.length;i++)
				  {
				   var dishId = Object.keys(dishList[i])[0];
				   var dishInfo = eval('('+ localStorage.getItem(dishId) + ')');
				   document.write('<li>');
				   
				   
				   
				   switch(dishInfo['style'])
				   {
				     case 'set':document.write('<section class="bbox" style="left:-40px;top:10px" dishid="{0}" dishname="{1}">'.format(dishId,dishInfo['name']));
					            document.write('<input class="btn-reduce" style="margin-top:5px" type="button" value="-">');
					            document.write('<input class="numBox" name="numBox" type="hidden" value="1" price="{0}" disabled="disabled">'.format(dishInfo['price']));
								document.write('<input class="setData" type="hidden" value="{0}" />'.format(dishInfo['data']));
								document.write('</section>');
								document.write('<div style="display:inline;position:absolute;left:50px">');
								document.write('<span class="dishName">{0}</span>'.format(dishInfo['name']));
								document.write('<div><i>{0}元/{1}</i></div></div>'.format(dishInfo['price'],dishInfo['unit']));
								document.write('<h2><button class="btn_add editStyle" style="position:absolute;right:10%;top:30%" onclick=";">编辑</button></h2>');
					            break;
					 case 'multi':document.write('<section class="bbox" style="left:-40px;top:10px" dishid="{0}" dishname="{1}">'.format(dishId,dishInfo['name']));
					              document.write('<input class="btn-reduce" style="margin-top:5px" type="button" value="-">');
					              document.write('<input class="numBox" name="numBox" type="hidden" value="1" price="{0}" disabled="disabled">'.format(dishInfo['price']));
								  document.write('<input class="styleData" type="hidden" value="{0}" />'.format(dishInfo['data']));
								  document.write('</section>');
								  document.write('<div style="display:inline;position:absolute;left:50px">');
								  document.write('<span class="dishName">{0}</span>'.format(dishInfo['name']));
								  document.write('<div><i>{0}元/{1}</i></div></div>'.format(dishInfo['price'],dishInfo['unit']));
								  document.write('<h2><button class="btn_add editStyle" style="position:absolute;right:10%;top:30%"onclick=";">编辑</button></h2>');
					              break;
					 case 'normal':
					              document.write('<span class="dishName">{0}</span>'.format(dishInfo['name']));
								  document.write('<i>{0}元/{1}</i>'.format(dishInfo['price'],dishInfo['unit']));
								  document.write('<section class="bbox"  dishid="{0}" dishname="{1}">'.format(dishId,dishInfo['name']));
					              document.write('<input class="btn-reduce"  type="button" value="-">');
					              document.write('<input class="numBox" type="text" name="numBox" value="{1}" price="{0}" disabled="disabled">'.format(dishInfo['price'],dishList[i][dishId]));
								  document.write('<input type="button" class="btn-plus" value="+"></section>');
								  break;
								  
				   }
				   document.write('</li>');
				   }
				  
				</script>
               
            </ul>
        </article>
    </section>

    <style>
        .input{
            display: inline-block;
            padding:11px 5px;
            border:1px solid #dddddd;
            border-radius:3px;
            width:100%;
            background:#f3f3f3;
            -webkit-box-sizing:border-box;
            color:#606366;
        }
        .button{
            display: inline-block;
            line-height: 40px;
            font-size:12px;
            text-align: center;
            color:#ffffff;
            border:1px solid #c3cfd0;
            border-radius: 1px;
            background:#56c6d6;
            border: 0;
        }
        .button.vcode{
            width:80px;
        }
        .button.vcode[disabled]{
            background:#cccccc;
            font-size: 12px;
        }
    </style>

    <input type="hidden" id="mode" value="{$mode}" name="mode">
    <input type="hidden" id="tables" value="{$tablesid}" name="tables">
    <section style="margin-bottom: 0px;">
        <article style="height:44;font-size:14px;font-weight:bold;padding:3px 19px;line-height:22px">

                        <div style="width: 120px;">打包费用:￥<span id="">5.3</span></span>元
            </div>
                        <div style="width: 120px;">优惠抵扣:￥<span id="">2.0</span></span>元

            </div>
        </article>
    </section>
    <style>
        .header { padding: 5px 0; display: block; position: fixed; width: 100%; z-index: 3; bottom: 0px; color: #F03C03; background-color:#fff; line-height: 32px; font-size: 14px;border-top: 1px solid #E2E2E2; }
        .header .left { float: left;margin-left: 10px }
        .header .right { float: right;margin-right: 10px }
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
        img {
            width: 24px;
            height: 24px;
            vertical-align: middle;
        }
        .right .disable{
            background-color:  #dbdbdb;
        }
    </style>
    <div class="header">
	    <input type="hidden" id="packprice" value="5.3" name="packprice">
		<input type="hidden" id="discount" value="2.0" name="discount">
        <input type="hidden" id="totalprice" value="{$totalprice}" name="totalprice">
        <input type="hidden" id="totalcount" value="{$totalcount}" name="totalcount">
        <input type="hidden" id="limitprice" value="{$limitprice}" name="limitprice">
        <input type="hidden" id="over_radius" value="{$over_radius}" name="over_radius">

        <input type="hidden" id="btnstatus" value="0" name="btnstatus">
        <div class="left">还需支付：￥<span id="totalpriceshow">44</span></span>元</div>
        <div class="right"><a id="btnselect" class="xhlbtn disable" href="javascript:void(0)">提交</a></div>
    </div>

    <div style="padding-top: 20px;"></div>
</div>

<script>
    function changeMealDate(obj) {
        var time1 = '{$select_mealtime}';
        var time2 = '{$select_mealtime2}';
        var curdate = "{$cur_date}";
        if (obj.value == curdate) {
            $("#meal_time").html(time1);
        } else {
            $("#meal_time").html(time2);
        }
    }

    function changeBtnSelect() {
        var limitprice = parseFloat(_q("#limitprice").value);
        var totalprice = parseFloat(_q("#totalprice").value);
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
</script>
<script>var pageName = 'menuFilled';</script>
<script type="text/javascript">
var reduce = _qAll('.btn-reduce');
var plus = _qAll('.btn-plus');
var share = _qAll('.shareBtn');
var editStyle = _qAll('.editStyle');
//金额累加操作
function bindEditEvent()
{
 var len = editStyle.length;
 for( var j = 0; j < len; j++){
 
 }

}
function tototal(){
    var total = 0;
    var nums = _qAll('.numBox');
	var packprice = _qAll('#packprice')[0].value;
	var discount = _qAll('#discount')[0].value;
    for( var j = 0; j < nums.length; j++){
        total = total + nums[j].value * nums[j].getAttribute('price');
    }
    endTotal = parseFloat(total).toFixed(2) * 100/100 + parseFloat(packprice - discount);
    // endTotal = endTotal == parseInt(endTotal) ? parseInt(endTotal) : endTotal;
    _q('#totalprice').value = endTotal;
    _q("#totalpriceshow").innerHTML = endTotal;

    changeBtnSelect();
    return endTotal;
}
tototal();//初始化金额

function doSelectBtn(){
    var btn = _qAll("article ul li .bbox");
        var btnIndex = 0,btnLength = btn.length;
    for(btnIndex;btnIndex<btnLength;btnIndex++){
        var countNumText=parseInt(btn[btnIndex].children[1].value),
            btnAdd=btn[btnIndex].children[2],
            btnMin=btn[btnIndex].children[0];
        var iTimeout,iInterval,originalNum,
            beforeRemoveDish = false;
        btnAdd.addEventListener(_movestartEvt,function(){
            var _self = this;
            originalNum = parseInt(_self.parentNode.children[1].value, 10);
            countNumText =  originalNum +1;
            _self.parentNode.children[1].value = countNumText;
            iTimeout = setTimeout(function(){
                iInterval = setInterval(function(){
                    countNumText++;
                    _self.parentNode.children[1].value = countNumText;
                },100)
            },1000)
        })
        btnAdd.addEventListener(_moveendEvt,function(){
            //alert(countNumText)
            //_doAjax()...
            clearTimeout(iTimeout);
            clearInterval(iInterval);
            tototal();
            var _self = this;
            var countNumText =  parseInt(_self.parentNode.children[1].value, 10);
            var dishid = _self.parentNode.getAttribute('dishid');
            ajaxDishReset(dishid, countNumText, function(){}, function() {
                _self.parentNode.children[1].value = originalNum;
                tototal();
            });
            // countNumText = 0;
        })

        btnMin.addEventListener(_movestartEvt,function(){
            var _self = this;
            originalNum = parseInt(_self.parentNode.children[1].value, 10);
            countNumText =  originalNum -1;
            if(countNumText <= 0){
                beforeRemoveDish = true;
            }else{
                _self.parentNode.children[1].value = countNumText;
                iTimeout = setTimeout(function(){
                    iInterval = setInterval(function(){
                        if(countNumText<=0){
                            beforeRemoveDish = true;
                            _self.parentNode.children[1].value = originalNum;
                            clearInterval(iInterval);
                            return;
                        }
                        countNumText--;
                        _self.parentNode.children[1].value = countNumText;
                    },100)
                },1000)
            }
        })

        btnMin.addEventListener(_moveendEvt,function(){
            clearTimeout(iTimeout);
            clearInterval(iInterval);
            _self = this;

            var dishid = _self.parentNode.getAttribute('dishid');
            var dishName = _self.parentNode.getAttribute('dishName');
            var countNumText =  parseInt(_self.parentNode.children[1].value, 10);

            if(beforeRemoveDish){
                setTimeout(function(){
                    MDialog.confirm(
                        '', '是否删除' + dishName +'？', null,
                        '确定', function(){
                            ajaxDishRemove(dishid, function(){
                                var li = _self.parentNode.parentNode;
                                li.parentNode.removeChild(li);
                                var total = tototal();
                                // 没有数据后刷新页面
                                if (total == 0) {
                                    location.reload();
                                }
                            }, function() {
                                _self.parentNode.children[1].value = originalNum;
                                tototal();
                            });
                        }, null,
                        '取消', null, null,null, true, true
                    );
                },200)
                beforeRemoveDish = false;
            } else {
                tototal();
                ajaxDishReset(dishid, countNumText, function(){}, function() {
                     _self.parentNode.children[1].value = originalNum;
                    tototal();
                });
            }
        })
    } // for

    

    function ajaxDishRemove(dishid, successCallback, errorCallback) {
	    // delete dishes in cookie
		// 1.delete dish 2.minus category 3.minus price and totalcount
        successCallback();
    } // ajaxDishRemove
} // doSelectBtn

_onPageLoaded(function(){
    var reduce = _qAll('.btn-reduce');
    var plus = _qAll('.btn-plus');
    "{if $flag != true}"
    tototal();//初始化金额
    doSelectBtn();
    "{/if}"

    var url = "{php echo $this->createMobileUrl('clearmenu', array('storeid' => $storeid, 'from_user' => $from_user), true)}";

    _q('#clearBtn').onclick = function() {
        MDialog.confirm(
            '', '是否清空菜单？', null,
            '确定', function(){
			    //delete cookies
				//return cart page
                //window.location.href = url;
            }, null,
            '取消', null, null,
            null, true, true
        );
    };

    $("#btnselect").click(function () {
        var bool = checkItem();
        if (bool) {
            MDialog.confirm(
                '', '确认提交吗？', null,
                '确定', function(){
                    postmain();
                }, null, '取消', null, null,null, true, true
            );
        }
    });

    
});

function checkItem() {
    var ordertype = $("#mode").val();
    var meal_time = $("#meal_time").val();

    if ($("#tel").val() == "" || $("#tel").val() == "(必填*)请输入您的手机号码") { alert("请输入您的电话号码！"); return false; }
//    if (!/^1[3|4|5|8][0-9]\d{8}$/.test($("#tel").val())) { alert("请输入正确的电话号码！"); return false; }
    if ($("#name").val() == "" || $("#name").val() == "(必填*)请输入您的真实姓名") { alert("请输入您的真实姓名！"); return false; }
    totalprice = parseFloat(_q("#totalprice").value);

    if (totalprice <= 0) { alert("金额为0，请选择菜品！"); return false; }

    if (ordertype == 1) { //店内
        if ($("#counts").val() == "") { alert("请输入用餐人数！"); return false; }
        if (!new RegExp("^[0-9]*$").test($("#counts").val())) { alert("用餐人数只能为数字！"); return false; }
        if ($("#tables").val() == "") { alert("请输入桌号！"); return false; }
    } else if (ordertype == 2){//外卖
        if ($("#address").val() == "" || $("#address").val() == "(必填*)请输入您的联系地址！") { alert("请输入您的联系地址！"); return false; }
        if (meal_time == '休息中') {
            alert('未在配送时间！');
            return false;
        }
        var over_radius = $("#over_radius").val();
        if (over_radius == 1) {
            alert('超出配送范围，不允许下单！');
            return false;
        }
    } else if (ordertype == 4){//快餐

    }
    return true;
}

function postmain() {
    var status = _q("#btnstatus").value;
    var ordertype = $("#mode").val();
    var mealtime = $("#meal_date").val() + ' ' + $("#meal_time").val();
    if ($("#meal_date").val() == undefined) {
        if ($("#meal_time").val() == undefined) {
            mealtime = '';
        } else {
            mealtime = $("#meal_time").val();
        }
    }

    if (status == 0) {
        return false;
    }

    $("#btnselect").hide();
    if (true) {
        var data = "[";
        var myfoodlist = $("#myorder li");
        if (myfoodlist.length == 0) { return; }
        for (var i = 0; i < myfoodlist.length; i++) {
            data += "{"; data += "\"sid\":\"" + myfoodlist.eq(i).attr("name") + "\",";
            data += "\"counts\":\"" + myfoodlist.eq(i).find(".numBox").val() + "\""; data += "},";
        }
        data = data.substring(0, data.length - 1); data += "]";
        var url = "{php echo $this->createMobileUrl('addtoorder', array('storeid' => $storeid, 'from_user' => $from_user), true)}";

        var address = $("#address").val();
        var totalprice = parseFloat(_q("#totalprice").value);

        $.ajax({
            url: url, type: "post", dataType: "json", timeout: "10000",
            data: {
                "type": "add", "total": totalprice, "ordertype":ordertype,"tables": $("#tables").val(),
                "guest_name": $("#name").val(), "tel": $("#tel").val(), "sex": $("input:checkbox[name='sex']").attr("checked") == "checked" ? "1" : "0",
                "meal_time": mealtime,
                "counts": $("#counts").val(),
                "seat_type": $("input:radio[name='seat_type']:checked").val(), "remark": $("#remark").val(), "data": data, "carports": $("#carports").val(), "address":address
            },
            success: function (data) {
                if (data.message['code'] != 0) {
                    var url = "{php echo $this->createMobileUrl('pay', array(), true)}"+"&orderid="+data.message['orderid'];
                    location.href = url;
                } else {
                    alert(data.message['msg']);
                    //'网络不稳定，请重新尝试!'
                }
                $("#btnselect").show();
            },error: function () {
                alert("订单提交失败！");
            }
        });
    } else {
        $("#btnselect").show();
    }
}


</script>

</body>
</html>