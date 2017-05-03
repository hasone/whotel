<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <title>地址列表</title>
    <link rel="stylesheet" type="text/css" href="/static/meal/css/wei_canyin_v1.8.4.css?v=1.1.2" media="all">
    <link rel="stylesheet" type="text/css" href="/static/meal/css/mobiscroll.custom-2.6.2.min.css" media="all">
    <link data-turbolinks-track="true" href="/static/meal/css/font.css?v=1" media="all" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/meal/css/wei_canyin_v1.8.4.css?v=1.1.2" media="all">
    <link rel="stylesheet" type="text/css" href="/static/meal/css/wei_dialog_v1.2.1.css?v=1.0" media="all">
    <script type="text/javascript" src="/static/meal/js/wei_webapp_v2_common_v1.9.4.js"></script>
    <script type="text/javascript" src="/static/meal/js/wei_dialog_v1.9.9.js?v=1"></script>
    <script src="/static/meal/js/jquery-1.11.3.min.js"></script>
    <style>abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, fieldset, figure, figcaption, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, small, time, video, legend {
        display: block;
    }</style>

    <style>
        .btn_1 {
            display: block;
            border: 1px solid #d8d8d8;
            border-radius: 3px;
            padding: 10px;
            color: #666;
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#fefefe), to(#efefef));
        }

        .btn_2 {
            display: block;
            width: 150px;
            margin: auto;
            line-height: 35px;
            text-align: center;
            padding: 0 5px;
            color: #fff;
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
            border: 1px solid #F03C03;
            border-radius: 20px;
            font-size: 15px;
        }

        .table_book {
            width: 100%;
        }

        .table_book td {
            padding: 5px 3px;
            white-space: nowrap;
        }

        .table_book input[type="text"], .table_book input[type="tel"], .table_book textarea {
            padding: 8px;
            background: #fff;
            border-radius: 5px;
            border: 1px solid #dedede;
            outline: none;
            resize: none;
            width: 100%;
            -webkit-box-sizing: border-box;
            box-shadow: none;

            /*width: 100%;*/
            /*-webkit-appearance: none;*/
            /*border-color: #dbdbdb;*/
            /*border-radius: 4px;*/
            /*padding: 8px 5px;*/
            /*font-size: 14px;*/
            /*line-height: 26px;*/
            /*border: 0*/
        }

        .table_book select {
            display: inline-block;
            /*-webkit-appearance:button;*/
            border: 1px solid #dedede;
            border-radius: 5px;
            padding: 2px;
            outline: none;
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

        .group_radio {
            border: 1px solid #dedede;
            border-radius: 18px;
            display: inline-block;
            overflow: hidden;
        }

        .group_radio input[type="radio"] {
            -webkit-appearance: button;
            display: inline-block;
            width: 50px;
            height: 35px;
            border-radius: 0;
            border: 0;
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#fff), to(#f2f2f2));
        }

        .group_radio span {
            position: relative;
            display: inline-block;
            height: 35px;
            width: 50px;
            float: left;
            border-right: 1px solid #ccc;
        }

        .group_radio span:last-of-type {
            border: 0;
        }

        .group_radio span:first-child input {
            border-radius: 16px 0 0 16px;
        }

        .group_radio span:last-child input {
            border-radius: 0 15px 15px 0;
        }

        .group_radio span label {
            content: attr(data-title);
            position: absolute;
            top: 0;
            left: 0;
            z-index: 10;
            color: red;
            display: inline-block;
            width: 50px;
            line-height: 35px;
            text-align: center;
            overflow: hidden;
            color: #666666;
            pointer-events: none;
        }

        .group_radio input[type="radio"]:checked {
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
        }

        .group_radio input[type="radio"]:checked + label {
            color: #fff;
        }

        .group_checkbox {
            overflow: hidden;
            border-radius: 16px;
            position: relative;
        }

        .group_checkbox input[type="checkbox"] {
            -webkit-appearance: button;
            padding: 8px;
            width: 70px;
            border-radius: 16px;
            border: 1px solid #dedede;
            display: inline-block;
            height: 35px;
            background: url(/static/meal/images/btn1.png#1), -webkit-gradient(linear, 0 0, 0 100%, from(#F03C03), to(#F03C03));
            background-size: auto 32px, auto auto;
            background-position: right center;
            background-repeat: no-repeat;
        }

        .group_checkbox input[type="checkbox"]:checked {
            background-position: 0px center;
        }

        .btn_myorder {
            padding: 5px 8px;
            border: 0;
            border-radius: 2px;
            cursor: pointer;
            background-color: #F03C03;
            color: #fff;
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

        .behind {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            right: 0;
        }

        .behind a.ui-btn {
            width: 68px;
            margin: 0px;
            float: right;
            border: none;
        }

        .behind a.delete-btn, .behind a.delete-btn:active, .behind a.delete-btn:visited, .behind a.delete-btn:focus, .behind a.delete-btn:hover {
            color: white;
            background-color: red;
            text-shadow: none;
        }

        .behind a.ui-btn.pull-left {
            float: left;
        }

        .behind a.edit-btn, .behind a.edit-btn:active, .behind a.edit-btn:visited, .behind a.edit-btn:focus, .behind a.edit-btn:hover {
            color: white;
            background-color: orange;
            text-shadow: none;
        }

    </style>
</head>
<body id="page_intelOrder" class="myOrderCon">
<div class="ddb-nav-header ng-scope">
    <a class="nav-left-item" href="javascript:void(0)" onclick="history.go(-1)"><i class="fa fa-angle-left"></i></a>

    <div class="header-title ng-binding">地址列表</div>
    <a class="nav-right-item" href="#"></a>
</div>
<div class="center">

    <section style="margin-bottom: 10px;">
        <article>
            <div>
                <ul class="myorder" id="list">

                    <c:forEach items="${list}" var="guest">
                        <li style="height:55px;line-height:30px">

                            <img src="/static/meal/images/icon_add.png" style="margin-top:-5px;height:14px;width:12px"/>
                            <span style="margin-left:5px;height:20px;font-size:16px">${guest.address}</span>
                            <c:if test="${guest.isDefault == 1}"><span style="color:orange">（默认）</span></c:if>
                            <div style="margin-left:25px;color:#999">
                                <span>${guest.name}</span>
                                <span>${guest.mobile}</span>
                            </div>

                            <c:if test="${guest.isDefault != 1}">
                                <h2>
                                    <button guestId="${guest.id}" class="btn_add btn_setdefault"
                                            style="position:absolute;left:50%;top:40%;background-color:#00aa00"
                                            onclick="location.href='">设为默认
                                    </button>
                                </h2>
                            </c:if>
                            <h2>
                                <button guestId="${guest.id}" class="btn_add"
                                        style="position:absolute;left:65%;top:40%;background-color:orange"
                                        onclick="location.href='/oauth/meal/editAddr.do?id=${guest.id}'">编辑
                                </button>
                            </h2>
                            <h2>
                                <button guestId="${guest.id}" class="btn_add delete-btn"
                                        style="position:absolute;left:80%;top:40%"
                                        onclick="location.href='">删除
                                </button>
                            </h2>

                        </li>
                    </c:forEach>
                </ul>
            </div>
        </article>
        <a href="/oauth/meal/editAddr.do">新增</a>
    </section>
</div>

<script>
    $(function () {
        function prevent_default(e) {
            e.preventDefault();
        }

        function disable_scroll() {
            $(document).on('touchmove', prevent_default);
        }

        function enable_scroll() {
            $(document).unbind('touchmove', prevent_default)
        }

        var x;
        $('#list li > a')
                .on('touchstart', function (e) {
                    console.log(e.originalEvent.pageX)
                    $('.swipe-delete li > a.open').css('left', '0px').removeClass('open') // close em all
                    $(e.currentTarget).addClass('open')
                    x = e.originalEvent.targetTouches[0].pageX // anchor point
                })
                .on('touchmove', function (e) {
                    var change = e.originalEvent.targetTouches[0].pageX - x
                    change = Math.min(Math.max(-100, change), 100) // restrict to -100px left, 0px right
                    e.currentTarget.style.left = change + 'px'
                    if (change < -10) disable_scroll() // disable scroll once we hit 10px horizontal slide
                })
                .on('touchend', function (e) {
                    var left = parseInt(e.currentTarget.style.left)
                    var new_left;
                    if (left < -35) {
                        new_left = '-100px'
                    } else if (left > 35) {
                        new_left = '100px'
                    } else {
                        new_left = '0px'
                    }
                    // e.currentTarget.style.left = new_left
                    $(e.currentTarget).animate({left: new_left}, 200)
                    enable_scroll()
                });

        $('.delete-btn').click(function () {
            var obj = $(this);
            var guestId = $(this).attr("guestId");
            MDialog.confirm('', '是否删除该地址？', null, '确定', function () {
                var url = "/oauth/meal/deleteAddr.do?id=" + guestId;
                $.ajax({
                    url: url, type: "get", dataType: "json", timeout: "10000",
                    success: function (data) {
                        if (data.code == 200) {
                            location.href = '/oauth/meal/getAddrList.do';
                        } else {
                            alert(data.message);
                        }
                    }, error: function () {
                        alert("网络不稳定，请重新尝试!");
                    }
                });
            })
        });

        $('.btn_setdefault').click(function () {
            var obj = $(this);
            var guestId = $(this).attr("guestId");
            MDialog.confirm('', '是否设置该地址为默认？', null, '确定', function () {
                var url = "/oauth/meal/setDefaultAddr.do?id=" + guestId;
                $.ajax({
                    url: url, type: "get", dataType: "json", timeout: "10000",
                    success: function (data) {
                        if (data.code == 200) {
                            location.href = '/oauth/meal/getAddrList.do';
                        } else {
                            alert(data.message);
                        }
                    }, error: function () {
                        alert("网络不稳定，请重新尝试!");
                    }
                });
            })
        });
    });
</script>
</body>
</html>