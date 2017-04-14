<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title>捷信达微酒店平台 | 系统模块</title>
</head>
<c:set var="cur" value="sel-sys" scope="request"/>
<c:set var="cur_sub" value="sel-companyModule" scope="request"/>
<div class="page-content-wrapper">
	<div class="page-content">
		
		<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
				<!-- 	<h3 class="page-title">
					Managed Datatables <small>managed datatable samples</small>
					</h3>  -->
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="/admin/index.do">首页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="/admin/sys/listCompanyModule.do">系统模块</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			
			<div class="portlet-body">
			     <form action="/admin/sys/listCompanyModule.do" id="pageForm" method="post">
		    		<input type="hidden" name="pageNo" value="${page.pageNo}" id="pageNo">
		    		<div class="input-group">
						<label>商品名称</label>
						<input name="params[name]" class="form-control input-medium" maxlength="50" value="${queryParam.params.name}"/>
						<span>&nbsp;&nbsp;&nbsp;</span>
						<button type="submit" class="btn btn-sm blue">查询<i class="fa fa-search"></i></button>
						<span>&nbsp;&nbsp;&nbsp;</span>
						<a href="/admin/sys/toEditCompanyModule.do" class="btn btn-sm green"><i class="fa fa-plus"></i>新增模块</a>
					</div>
				</form>
				<table class="table table-striped table-bordered table-hover dataTable">
				<thead>
				<tr role="row">
				    <th width="10%">序号</th>
				    <th width="10%">模块名</th>
					<th width="12%">名称</th>
					<th width="12%">显示名</th>
					<th width="12%">编码</th>
					<th width="12%">排序</th>
					<th width="22%">链接</th>
					<th width="10%">操作</th>
				</tr>
				</thead>
				<tbody>
				   <c:forEach items="${page.result}" var="module" varStatus="vs">
				   	  <tr class="odd gradeX">
				   	    <td>${vs.count}</td>
						<td>${module.moduleType.label}</td>
						<td>${module.name}</td>
						<td>${module.displayName}</td>
						<td>${module.typeCode}</td>
						<td>${module.displayOrder}</td>
						<td>${module.linkUrl}</td>
						<td>
							<a href="toEditCompanyModule.do?id=${module.id}" class="btn btn-sm purple"><i class="fa fa-edit"></i> 编辑</a>
							<a href="javascript:deleteModule('${module.id}')" class="btn btn-sm default"><i class="fa fa-times"></i> 删除</a>
					    </td>
					  </tr>
				   </c:forEach>
				</tbody>
				</table>
				</div>
				<div class="row">
					${page.pageNavigation}
				</div>
		</div>
</div>
<script src="/static/common/js/paging.js?v=${version}" type="text/javascript"></script>
<jsp:include page="/common/bootbox.jsp" />
<script>
function deleteModule(id) {
	var url = "/admin/sys/deleteCompanyModule.do?id="+id;
	confirmDeleteData("真的需要删除吗？", url);
}
</script>