 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <%@ include file="../common/head.jsp" %>
  </head>
  <body>
  	<!--导航栏开始-->
	<%@ include file="../common/nav.jsp" %>
  	<!--导航栏结束-->
  	<!--容器栏开始-->
  	<div class="container-fluid">
		<div class="row">
		  <div class="col-md-3">
		  	<%@ include file="../common/menu.jsp" %>
		  </div>
		  <!--tab-content循环渲染开始-->
		  <div class="tab-content col-md-9">
		  		<p>菜单栏页面</p>
		  </div>
		  </div>
		  <!--tab-content循环渲染结束-->
		</div>
  	</div>
  	<!--容器栏结束-->
    <%@ include file="../common/foot.jsp" %>
  </body>
</html>