<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title>捷信达微酒店平台 | 微网站名称编辑</title>
<link rel="stylesheet" href="/static/common/css/upload.css" />
<link rel="stylesheet" href="/static/company/css/website.css" />
</head>
<c:set var="cur" value="sel-website" scope="request"/>
<c:set var="cur_sub" value="sel-website-list" scope="request"/>
<div class="page-content-wrapper">
	<div class="page-content">
		
		<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="/company/index.do">首页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="/company/website/listColumnLink.do">微网站名称编辑</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			
			<div class="portlet-body">
			
			<!--选择编辑模板-->
			<div id="tm-templet">
			    <div class="tm-tempTit js-tempTit">
			      <h1><span class="over" id="js-selectTemplate">选择模板</span>
					  <span class="over" id="js-editTemplate">编辑模板</span>
					  <span class="cur" id="js-editWebsite">编辑微网站</span>
					  <span class="last">完成</span>
			      </h1>
			    
			    </div>  
			    <div class="tm-templet">
			        <form action="setWebsiteName.do" class="form-horizontal" method="post" id="submitForm">
						<input type="hidden" name="id" value="${website.id}" id="websiteId"/>
						<input type="hidden" name="templateId" value="${website.templateId}" id="templateId"/>
						<div class="form-body">
							<div class="form-group first">
								<label class="col-md-3 control-label">名称</label>
								<div class="col-md-4">
								   <input name="name" class="form-control" placeholder="名称" maxlength="50" value="${website.name}"/>
								</div>
							</div>
						</div>
						<div class="form-actions fluid">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" class="btn blue">完成</button>
							</div>
						</div>
				    </form>
			    </div>
			</div>
			</div>
		</div>
</div>
<jsp:include page="/common/bootbox.jsp" />
<script>
$(document).ready(function(){  
	
   $("#js-selectTemplate").click(function() {
	   var websiteId = $("#websiteId").val();
	   document.location = "/company/website/selectTemplate.do?siteId="+websiteId;
   });
	   
   $("#js-editTemplate").click(function() {
	   var websiteId = $("#websiteId").val();
	   var tempId = $("#templateId").val();
	   document.location = "/company/website/editTemplateColumn.do?siteId="+websiteId+"&tempId="+tempId;
   });
   
   $("#js-editWebsite").click(function() {
	   var websiteId = $("#websiteId").val();
	   document.location = "/company/website/editWebsiteName.do?siteId="+websiteId;
   });
}); 
</script>
