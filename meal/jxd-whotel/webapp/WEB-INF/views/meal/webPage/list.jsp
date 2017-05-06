<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<html lang="zh-CN"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no">
<title>全部商品</title>
<link data-turbolinks-track="true" href="/static/meal/css/weixin.css?v=1" media="all" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/static/meal/css/wei_canyin_v1.8.4.css?v=1.1.1" media="all">
<link rel="stylesheet" type="text/css" href="/static/meal/css/wei_dialog_v1.2.1.css?v=1.1" media="all">
<link data-turbolinks-track="true" href="/static/meal/css/font.css?v=1" media="all" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/static/meal/css/banner.css?v=1.1.1" media="all">

    <style>
    /*解决右边背景总是为灰色的bug*/
    #page_allMenu section article, #pInfo {
        min-height: 100%;
    }
</style>
<style>abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,fieldset,figure,figcaption,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,small,time,video,legend{display:block;}</style>
<script type="text/javascript" src="/static/meal/js/wei_webapp_v2_common_v1.9.4.js"></script>
<script type="text/javascript" src="/static/meal/js/wei_dialog_v1.9.9.js"></script>
<script type="text/javascript" src="/static/meal/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/static/meal/js/unslider.min.js"></script>
</head>
<body id="page_allMenu" style="background-color: #fff;height:100%">
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
        opacity: 0.9;
        top: 45px;
        margin-top: 45px;
        background-color: #fff9df;
        padding: 0 10px;
        border-bottom: 0px solid #dbdbdb;
        z-index: 1999;
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
    .product-notice-section {
        opacity: 0.9;
        top: 45px;
        margin-top: 45px;

        background-color: #fff9df;
        padding: 8px 20px;
        font-size: 14px;
        line-height: 20px;
        z-index: 1999
    }
	.ddb-tab-bar .active{
	padding-bottom:0px;
	line-height:5px;
	border-bottom:2px solid #ff0000
	}
	.dn{
	display:none
	}
	.shopInfoList{
     line-height:40px;
	 font-size:16px;
	}
	.shopInfoList img {
	 width:13px;height:13px;margin-left:20px
	}
	.shopInfoList span{
	 margin-left:20px
	}
	.shopInfoList i{
	 margin-left:10px
	}
	.dishSecondTitle{
	 line-height:8px;
	}
	.dishstyle{
	position:absolute;
    right:0px;
	}
</style>
<div class="ddb-nav-header ng-scope">
    <a class="nav-left-item" href="javascript:void(0)" onclick="history.go(-1)"><i class="fa fa-angle-left"></i></a>
    <div class="header-title ng-binding">${rest.name}</div>
    
</div>


<div class="notification-section">
    <div class="banner">
        <ul>
            <c:forEach items="${bannerList}" var="baner">
                <li><img style="width:100%;height:150px" src="${baner}"></li>
            </c:forEach>
        </ul>
    </div>
</div>
        <div class="">
         <div class="ddb-tab-bar ">
            <div class="ddb-tab-item ng-scope active">
                <a style="font-size:16px;color:black;" href="javascript:;" class="" id="store_classify">点餐</a>
               
            </div>
            <div class="ddb-tab-item ng-scope">
                <a style="font-size:16px;color:black;"  href="javascript:;" class="ng-binding">评论</a>
            </div>
            <div class="ddb-tab-item ng-scope" ng-repeat="pane in panes" ng-class="{active:pane.selected}"
                 ng-click="toggle(pane)">
                <a  style="font-size:16px;color:black;" href="javascript:;" class="ng-binding">商家</a>
            </div>
        </div>
		</div>
<div class="main" >
    <nav id="navBar">
        <dl>


            <c:forEach items="${cateList}" var="cate" varStatus="status">

                <c:if test="${status.index ==0}">
                    <a class="navOption" href="#${cate.dishNo}">
                        <dd categoryid="${cate.id}" class="active" style="color:black;">
                            <%--fixme limingan 分类无图--%>
                            <%--<img style="width:15px;height:15px;border-top:10px" src="http://tiantianwutuo.top/attachment/images/1/2017/04/SanMzlI2yXTxyqhYt1DtILUxnY1VU2.jpg" alt="" title="">--%>
                            ${cate.dishName}
                            <span style="display:none;"></span>
                        </dd>
                    </a>
                </c:if>

                <c:if test="${status.index !=0}">
                    <a class="navOption" href="#${cate.dishNo}">
                        <dd categoryid="${cate.id}" >
                                ${cate.dishName}
                            <span style="display:none;"></span>
                        </dd>
                    </a>
                </c:if>
            </c:forEach>
        </dl>
        <div style="margin-top: 100px;"></div>
    </nav>
    <section id="infoSection">
        <article style="border: 0px">
            <div id="pInfo">
                <c:forEach items="${cateList}" var="cate">
                    <div id="${cate.dishNo}">${cate.dishName}</div>
                    <c:forEach items="${cate.dishesList}" var="dish">
                        <dl isMultiStyle="${dish.isMultiStyle}" multiStyle=${dish.multiStyle} isSet="${dish.isSuite}" setData=${dish.suiteData} dunitname="${dish.unit}" dsubcount="123" dishid="${dish.id}" dname="${dishName}" dtaste="口味" ddescribe="${dish.brief}" dmarkNum="45" dprice="${dish.price}" dishot="2" dspecialprice="${dish.price}" disspecial="是否特价" shopinfo="" style="padding-left:60px;">
                            <dt><h3>${dish.dishName}</h3></dt>

                            <dd>
                                <a href="javascript:void(0)" class="dataIn">
                                    <img src="${dish.miniatureUrl}" alt="" title="">

                                    <span></span>

                                </a>
                            </dd>
                            <span class="dishSecondTitle">月售 26 份 | 好评率 100%</span>
                            <dd>
                                <em class="sale">￥${dish.price}</em><del>￥${dish.marketPrice}</del>  <c:if test="${ dish.isMultiStyle == 1}"><a class="dishstyle" href="javascript:void(0);">可选规格</a></c:if>

                            </dd>
                            <dd class="dpNum">
                                <img src="/static/meal/images/icon_fullminus.png" style="position:relative;top:3px;left:0px;width:13px;height:13px;" alt="">
                                <f style="color: #f00;">满一件 ，9.9</f>
                            </dd>
                            <dd class="btn">
                                <img src="/static/meal/images/plusdish.png" class="addDish" style="float:right;margin-top:47px;width:25px;height:25px;left:-50px" alt="">
                            </dd>
                        </dl>
                    </c:forEach>
                </c:forEach>
                <div style="margin-top: 100px;"></div>
            </div>
        </article>
    </section>
</div>

<div class="shopInfoList dn">
 <div><img src="/static/meal/images/sales.png"/><span >月售 ${monthSale} 单</span></div>
 <div><img src="/static/meal/images/timer.png"/><span >${rest.businessTime}</span></div>
 <div><img src="/static/meal/images/position.png"/><span >${rest.address}</span></div>
 <div><img src="/static/meal/images/tel.png"/><span >${rest.tel}</span><a href="tel://${rest.tel}"><i class="fa fa-angle-right"></i></a></div>
</div>
<div class="mModal1" style="position:fixed;width:100%;z-index: 901;height:100%;display:none;top:0;background-color:rgba(0, 0, 0, .5)"><a href="javascript:void(0)" style="height: 736px;"></a></div>
<div class="popupWindow" style="z-index:9999;display:none">
 <img class="close" src="/static/meal/images/close.png" />
 <div id="popContent"></div>
</div>
<jsp:include page="_header.jsp"/>
<style>
 .popupWindow{
  width:100%;
  height:400px;
  bottom:0px;
  position:fixed;
  background-color:white;
 }
 .popupWindow .close{
   float:right;
   margin-right:30px;
   margin-top:10px;
   width:20px;
   height:25px;
 }
 .subTitle{
  margin-left:20px;
  padding-top:20px
 }
 .multiStyle .stitle{
  text-align:center;
  font-size:16px;
  margin-top:20px;
 }
 .multiStyle>ul{
  margin-top:-20px;margin-left:50px;
 }
 .setStyle>ul{
  margin-top:60px;margin-left:20px;
 }
 .multiStyle>ul>li{
  margin-bottom:5px;margin-left:20px;display:inline-block;line-height:22px;height:25px;text-align:center;width:60px;border:1px solid #b2b2b2;border-radius:15px;color:white:float:left;list-style:none;
 }
 .setStyle>ul>li{
  margin-bottom:5px;margin-left:20px;display:inline-block;line-height:22px;height:25px;text-align:center;width:70px;border:1px solid #b2b2b2;border-radius:15px;color:white:float:left;list-style:none;
 }
 .setStyle>.settitle{
   position:absolute;
   top:10px;
   text-align:center;
   width:60%;
   left:20%;
 }
 .multiStyle ul .redborder,.setStyle ul .redborder{
  border:1px solid #F00;
 }
 .bottomright-button{
  position:fixed;
  bottom:5px;
  right:40px;
  width:77px;
  height:32px;
 }
 .bottom-rmb
 {
  position:fixed;
  bottom:14px;
  left:70px;
  width:8px;
  height:14px;
 }
 .bottom-price{
  position:fixed;
  bottom:10px;
  left:83px;
  font-size:20px;
  color:red;
 }
 .leftArrow,.rightArrow{
  width:10px;
  height:20px;
  position:absolute;
  top:10px;  
  z-index:10;
 }
 .leftArrow{
  left:35%;
 }
 .rightArrow{
  left:62%;
 }
</style>
<script type="text/javascript"> 
   var totalPrice=0;
   var totalCount = 0;
   var allDishObject = Array();
   var allDishCategoryList = {};
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
   $('.ddb-tab-item').eq(0).click(function(){
     $('.ddb-tab-item').removeClass('active');
	 $(this).addClass('active');
     $('.main').removeClass('dn');
	 $('.shopInfoList').addClass('dn');
   });
   $('.ddb-tab-item').eq(2).click(function(){
     $('.ddb-tab-item').removeClass('active');
	 $(this).addClass('active');
     $('.main').addClass('dn');
	 $('.shopInfoList').removeClass('dn');
   });
   $(".navOption").click(function() {
      $('.navOption dd').removeClass("active");
	  $(this).children('dd').addClass('active');
      $("#infoSection").animate({
        scrollTop: $($(this).attr("href")).offset().top - $("#page1").offset().top +"px"
      }, {
        duration: 300,
        easing: "swing"
      });
      return false;
    });
    var addBtn = _qAll('.addDish');
	var addBtnLength = addBtn.length;
	for(var i=0;i<addBtnLength;i++)
	addBtn[i].addEventListener(_moveendEvt,function(){
	
	 //load dish style
	 var parentDl = this.parentNode.parentNode;
	 var dPrice = parentDl.getAttribute('dPrice');
	 var isMultiStyle = parentDl.getAttribute('isMultiStyle'); //是否多规格
	 var isSet = parentDl.getAttribute('isSet');               //是否套餐
	 var dishName = parentDl.getAttribute('dname'); 
	 var dishUnit = parentDl.getAttribute('dunitname'); 
	 var dishId = parentDl.getAttribute('dishid');
	 var dishCategoryPage = $(this).parent().parent().prevAll('div').attr('id')
	 var dishCategory = $('#navBar>dl').find('a[href="#'+dishCategoryPage+'"]').children('dd').attr('categoryId');
	 var html='';
	 var localStorageObj = {};
	 localStorageObj['id'] = dishId;
	 localStorageObj['price'] = dPrice;
	 localStorageObj['unit'] = dishUnit;
	 localStorageObj['name'] = dishName;
	 if(1 == isSet)
	 {
	   localStorageObj['style'] = 'set';
	   localStorageObj['data'] = parentDl.getAttribute('setData').replace(/[\r\n]/g,"");
	   var setData = eval('('+ parentDl.getAttribute('setData') + ')');
	   var setDishLength = setData.length;
	   var setTemplate = '<div class="setStyle"><img class="leftArrow" src="/static/meal/images/right_left_arrow.png"><span class="settitle">{0}</span><img class="rightArrow" src="/static/meal/images/right_right_arrow.png">{1}</div>';
	   
	   $(setData).each(function(i,n){
	      var baseHtml = '';
		  
   	      $(n).each(function(ii,nn){
		    baseHtml += '<li attrid="{0}">{1}</li>'.format(nn.dishNo,nn.dishName);
		 });
		 baseHtml = '<ul>{0}</ul>'.format(baseHtml);
		 
		 html += setTemplate.format('第'+parseInt(i+1)+'道菜', baseHtml);
	   });
	   html += '<img class="bottom-rmb" src="/static/meal/images/rmb.png"/>';
	   html += '<span class="bottom-price">{0}</span>'.format(dPrice);
	   html += '<img class="bottomright-button addToList" src="/static/meal/images/dish_addMenu.png"/>';
	   html += '<input id="dishId" type="hidden" value="{0}" />'.format(dishId);
	   html += '<input id="dishCategory" type="hidden" value="{0}" />'.format(dishCategory);
	   $('#popContent').html(html);
	   $('.addToList').click(function(){
	      //alert('ok');
		  var setDishList = Array();
		  var ulLength = $(this).parent().children('.setStyle').length;
		  var parentNode = $(this).parent();
		  for(var i=0;i<ulLength ;i++)
		  {
		    if(parentNode.children('.setStyle').children('ul').eq(i).children('.redborder').length == 0)
			 {
			  var dishName = parentNode.children('.setStyle').children('.settitle').eq(i).text();
			  alert(dishName + '未选择，请选择')
			  return;
			 }
			else
             {
			  var subDishId = parentNode.children('.setStyle').children('ul').eq(i).children('.redborder').attr('attrid');
			  setDishList.push(subDishId);
			 }			
		  }
		  //save set id setdishes id
		  var dishId = $(this).parent().children('#dishId').val();
		  totalPrice += parseFloat(dPrice);
		  totalCount += 1;
		  allDishCategoryList[dishCategory] = undefined != allDishCategoryList[dishCategory]?allDishCategoryList[dishCategory]+1:1;
		  var obj = {};
		  obj[dishId] = setDishList;
		  allDishObject.push(obj);
		  refreshCategoryPrice(allDishCategoryList , allDishObject, totalCount ,totalPrice);
		  $('.popupWindow .close').click();
	   })
	   
	   $('.setStyle').addClass('dn');
	   $('.setStyle').eq(0).removeClass('dn');
	   $('.mModal1,.popupWindow').show();
	   $('.setStyle ul li').click(function(){
	    $(this).parent().children('li').removeClass('redborder');
		$(this).addClass('redborder');
	   });
	   function getCurrentSetIndex()
	   {
	    var currentIndex = -1;
		
		$('.setStyle').each(function(i,n){
		  if(!$(n).hasClass('dn'))
		   {
		    currentIndex = i;
			return false;
		   }
		});
		return currentIndex;
	   }
	   $('.setStyle .leftArrow').click(function(){
		var index = getCurrentSetIndex()
		if(index == 0)
		 return;
	    $('.setStyle').addClass('dn');
		$('.setStyle').eq(index-1).removeClass('dn');
	   });
	   $('.setStyle .rightArrow').click(function(){
	    var index = getCurrentSetIndex()
		if(index == $('.setStyle').length-1)
		 return;
	    $('.setStyle').addClass('dn');
		$('.setStyle').eq(index+1).removeClass('dn');
	   });
	 }
	 else if(1 == isMultiStyle)
	 {
	   localStorageObj['style'] = 'multi';
	   localStorageObj['data'] = parentDl.getAttribute('multiStyle').replace(/[\r\n]/g,"");
	   var multiStyleTemplate = '<div class="multiStyle"><div class="stitle"><span>{0}</span></div>{1}</div>';
	   var multiStyleBaseTemplate = '<div class="subtitle" attrid="{2}">{0}</div>{1}';
	   var multiStyle = eval('('+ parentDl.getAttribute('multiStyle') + ')');
	   $(multiStyle).each(function(i,n){
	      var baseHtml = '';
		  
   	      $(n.data).each(function(ii,nn){
		    baseHtml += '<li attrid="{0}">{1}</li>'.format(nn.id,nn.name);
		 });
		 baseHtml = '<ul>{0}</ul>'.format(baseHtml);
		 
		 html += multiStyleBaseTemplate.format(n.name, baseHtml,n.id);
	   });
	   html += '<img class="bottom-rmb" src="/static/meal/images/rmb.png"/>';
	   html += '<span class="bottom-price">{0}</span>'.format(dPrice);
	   html += '<img class="bottomright-button addToList" src="/static/meal/images/dish_addMenu.png"/>';
	   html += '<input id="dishId" type="hidden" value="{0}" />'.format(dishId);
	   html += '<input id="dishCategory" type="hidden" value="{0}" />'.format(dishCategory);
	   $('#popContent').html(multiStyleTemplate.format(dishName,html))
	    $('.addToList').click(function(){
	       var ulLength = $(this).parent().children('ul').length;
		   var parentNode = $(this).parent();
		   var dishStyleList = {};
		   for(var i=0;i<ulLength ;i++)
		   {
		    if(parentNode.children('ul').eq(i).children('.redborder').length == 0)
			 {
			  var dishName = parentNode.children('.subtitle').eq(i).text();
			  alert(dishName + '未选择，请选择')
			  return;
			 }
			 else
			 {
			  var subStyle = parentNode.children('ul').eq(i).children('.redborder').attr('attrid');
			  var styleId = parentNode.children('.subtitle').eq(i).attr('attrid');
			  dishStyleList[styleId] = subStyle;
			 }
		   }
		   var dishId = $(this).parent().children('#dishId').val();
		   totalCount += 1;
		   totalPrice += parseFloat(dPrice);
		   allDishCategoryList[dishCategory] = undefined != allDishCategoryList[dishCategory]?allDishCategoryList[dishCategory]+1:1;
		   
		   var obj = {};
		   obj[dishId] = dishStyleList;
		   allDishObject.push(obj);
		   
		   refreshCategoryPrice(allDishCategoryList , allDishObject,totalCount ,totalPrice);
		   $('.popupWindow .close').click();
	   })
	   //TODO:addListener
	   $('.mModal1,.popupWindow').show();
	   $('.multiStyle ul li').click(function(){
	    $(this).parent().children('li').removeClass('redborder');
		$(this).addClass('redborder');
	   });
	   
	 }
	 else //normal dish
	 {
	 
	   localStorageObj['style'] = 'normal';
	   totalPrice += parseFloat(dPrice);
	   totalCount += 1;
	   var isFindDish = false;
	   for(var i=0;i<allDishObject.length;i++)
	   {
	    if(Object.keys(allDishObject[i])[0] == dishId)
	    {
	     isFindDish = true;
	     allDishObject[i][dishId] ++;
	     break;
	    }
	   }
	   if(false == isFindDish)
	   {
	   var obj = {};
	   obj[dishId] = 1;
	   allDishObject.push(obj);
	   }
	   
	   allDishCategoryList[dishCategory] = undefined != allDishCategoryList[dishCategory]?allDishCategoryList[dishCategory]+1:1;
	   refreshCategoryPrice(allDishCategoryList , allDishObject,totalCount ,totalPrice);
	 }
	 localStorage.setItem(dishId,JSON.stringify(localStorageObj));
	})
	
	function refreshCategoryPrice(categoryList,dishList,totalcount,totalprice)
	{
	 for(var i in categoryList) {
	  $('.navOption').find('dd[categoryid='+i+']').children('span').css('display','inline-block').text(categoryList[i]);
	 }
	 // set cookies
	 
	 document.cookie = "categoryList="+JSON.stringify(categoryList);
	 document.cookie = "dishList="+JSON.stringify(dishList);
	 document.cookie = "totalCount="+totalcount;
	 document.cookie = "totalPrice="+totalprice;

     try{
	 _q("#totalprice").value = totalprice;
	 _q("#totalpriceshow").innerHTML = totalprice;
	 _q("#totalcount").value = totalcount;
	 _q("#totalcountshow").innerHTML = totalcount;
	 changeBtnSelect();
	 }
	 catch(e){;}
	 
	}
	
	
	$('.popupWindow .close').click(function(){
	 $('#popContent').html('');
	 $('.mModal1,.popupWindow').hide();
	})
    var view_const_dish_SPECIAL_PRICE_YES = '2';
    var view_const_dish_SPECIAL_PRICE_VIP = '3';
    var view_const_dish_HOT_YES = '2';
    function setHeight(){
        var  cHeight;
        cHeight = document.documentElement.clientHeight;
        cHeight = cHeight - $('#infoSection').offset().top +"px";
        document.getElementById("navBar").style.height =  cHeight;
        document.getElementById("infoSection").style.height =  cHeight;
    }


    //点击促发弹层事件
    function showPicInfo(){
        var links = _qAll(".dataIn"), i=0;
        for(i;i<links.length;i++){
            links[i].onclick=function(event){
                event.stopPropagation();
                // dl
                var parentDl = this.parentNode.parentNode;
                var childImg = this.childNodes[0]
                if(childImg.nodeType == 3){
                    childImg = this.childNodes[1];
                }

                var dSpecialPrice = parentDl.getAttribute('dSpecialPrice');

                if (dSpecialPrice != '') {
                    dSpecialPrice = parentDl.getAttribute('dSpecialPrice') + '元/' + parentDl.getAttribute('dunitName');
                }

                popPic(childImg.src,
                        parentDl.getAttribute('dname'),
                        parentDl.getAttribute('dprice') + '元/' + parentDl.getAttribute('dunitName'),
                        parentDl.getAttribute('dIsSpecial'),
                        dSpecialPrice,
                        parentDl.getAttribute('dsubCount'),
                        parentDl.getAttribute('dtaste'),
                        parentDl.getAttribute('ddescribe'),
                        parentDl.getAttribute('dishot'),
						parentDl.getAttribute('dmarkNum')
                );
            }
        }
    }
    //后台可自行扩展参数
    //调用自定义弹层
    function popPic(imgUrl,title,price, isSpecial, specialPrice, people,teast,assess,isHot,dmarkNum){
        var _title = title,
            _price = price,
            _people = people,
            _teast = teast,
            _assess = assess;

        var hotHtml = '';
        if (isHot == view_const_dish_HOT_YES) {
            hotHtml = '<b></b>';
        }
            _tmpHtml = "<div class='content'>"+hotHtml+"<img src='"+imgUrl+"' alt='' title=''><h2>"+_title;


             if (specialPrice != '') {
                 _tmpHtml += "<i>"+specialPrice+"</i>";
             } else {
                 _tmpHtml += "<i>"+_price+"</i>";
             }

            if (_people) {
                _tmpHtml += "<span>"+_people+"人点过</span>";
            }
            _tmpHtml += "</h2>";

            if (_teast) {
                _tmpHtml += "<h3>口味："+_teast+"</h3>";
            }

            if (_assess) {
                _tmpHtml += "<p>"+_assess+"</p>";
            }
            
			if(dmarkNum){
			_tmpHtml += "<h2>查看所有评论("+dmarkNum+")</h2>";
			}
            _tmpHtml += '</div>';
            MDialog.popupCustom(_tmpHtml,true, function(){}, true);
    }

    

    _onPageLoaded(function(){
        //changeBtnSelect();
        setHeight();
        //doSelect();
        //doSelectBtn();
        showPicInfo();
        //getDishNumOfCategory();
        if(_isIOS){
            _q("#page_allMenu section article").style.overflowY ="scroll";
            _q("#page_allMenu section article").style.minHeight ="85%";
            _q("#page_allMenu section article").style.marginBottom="15px";
        }
		$('.banner').unslider({			
				keys: true,
				dots: true
			});
    })
    window.addEventListener('orientationchange', function(){
        setHeight();
    })
</script>
</body>
</html>