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
<link rel="stylesheet" type="text/css" href="/static/front/hotel/css/home2_1.css">
</head>
<body>
<div class="homeAD">
  <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{"directionNav":false}'>
     <ul class="am-slides js-banner-slide">
	    <c:forEach items="${website.bannerUrls}" var="bannerUrl" varStatus="vs">
	    	<c:set var="bannerLink" value="${website.bannerLinks[vs.index]}"/>
	    	<li><a href="<c:choose><c:when test="${bannerLink == null || bannerLink == ''}">javascript:</c:when><c:otherwise>${bannerLink}</c:otherwise></c:choose>"><img src="${bannerUrl}"/></a></li>
	    </c:forEach>
	  </ul>
  </div>
</div>

<div class="homeNav">
	  <ul class="homeNavbk_box">
	      <c:forEach items="${website.columns}" var="column" varStatus="vs">
		    <c:if test="${vs.count == 1}">
			     <li class="piclink wh1">
			     <a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
			   	 <c:if test="${column.bgUrl != null && column.bgUrl != ''}">
		      	 	<img src="${column.bgUrl}"/>
		      	 </c:if>
			   	 </a>
			  	 </li>
			</c:if>
		    <c:if test="${vs.count == 2}">
			    <li class="piclink wh2"> 
			    <a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
			    <c:if test="${column.bgUrl != null && column.bgUrl != ''}">
		      	<img src="${column.bgUrl}"/>
		      	</c:if>
			   	</a>
			    </li>
		    </c:if>
		  </c:forEach>
	  </ul>
	  <ul class="homeNavbk_box">
    	 <c:forEach items="${website.columns}" var="column" varStatus="vs">
	       <c:if test="${vs.count > 2 && vs.count <= 5}">
		      <li class="piclink wh1">
		        <a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
			   	<c:if test="${column.bgUrl != null && column.bgUrl != ''}">
		      	 	<img src="${column.bgUrl}"/>
		      	</c:if>
			   	</a>
			  </li>
  	 		</c:if>
	     </c:forEach>
	  </ul>
	  <ul class="homeNavbk_box">
	  	 <c:forEach items="${website.columns}" var="column" varStatus="vs">
	       <c:if test="${vs.count >= 6}">
		      <c:if test="${vs.count == 6}">
		      	<li class="piclink wh1">
		      	<a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
		      	<c:if test="${column.bgUrl != null && column.bgUrl != ''}">
		      	 	<img src="${column.bgUrl}"/>
		      	</c:if>
		      	</a>
		      	</li>
		      </c:if>
		      <c:if test="${vs.count != 6}">
		      <li class="piclink wh1">
		      <a href="<c:choose><c:when test="${param.edit || column.target == null || column.target == ''}">javascript:</c:when><c:when test="${column.type == 'NAVIGATION'}">http://api.map.baidu.com/direction?region=${company.region.name}&mode=driving&src=${company.name}&output=html&destination=latlng:${company.coords[1]},${company.coords[0]}|name:${company.name}&origin=latlng:${location.lat},${location.lon}|name:你的位置</c:when><c:otherwise>${column.target}</c:otherwise></c:choose>" <c:if test="${column.type == 'CONTACT'}">class="js-contact"</c:if>>
	   	 		<c:if test="${column.bgUrl != null && column.bgUrl != ''}">
      	 			<img src="${column.bgUrl}"/>
      			</c:if>
			  </a>
			  </li>
			  </c:if>
  	 		</c:if>
	     </c:forEach>
	  </ul>
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
