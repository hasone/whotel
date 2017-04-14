<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${website.name}</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"   content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Cache-Control" content="no-siteapp"/>
<link rel="stylesheet" type="text/css" href="/static/common/js/amazeui/css/widget.css">
<link rel="stylesheet" type="text/css" href="/static/front/hotel/css/common.css?v=${version}">
<link rel="stylesheet" type="text/css" href="/static/front/hotel/css/home11.css">
</head>
<body>

<div class="logo">
	<c:forEach items="${website.columns}" var="column" varStatus="vs">
	<p class="logo-${vs.count}">
		<a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
			<img src="${column.bgUrl}"/>
		</a>
	</p>
	</c:forEach>
</div>

<script src="/static/common/js/jquery-1.11.2.js"></script> 
<script src="/static/common/js/amazeui/amazeui.min.js"></script>
<c:if test="${template.jsPathUrl != null}">
<script src="${template.jsPathUrl}"></script>
</c:if>

<jsp:include page="common_contact.jsp" />
<script type="text/javascript">
	$(function(){
		$('.am-slider').flexslider();
	});
</script>
</body>
</html>
