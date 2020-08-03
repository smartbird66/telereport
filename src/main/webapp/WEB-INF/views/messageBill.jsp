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
		  	<!--通知单归集开始-->
			<div class="tab-pane fade in active" id="messageBill">
				<!--查询面板开始-->
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">日通知单归集查询</h3>
				  </div>
				  <div class="panel-body">
				  	<!--我的标签页开始-->
				  	<ul class="nav nav-tabs">
						  <li role="presentation" class="active"><a href="#messageMonth" data-toggle="tab">按日查询</a></li>
					</ul>
						<div id="myTabContent" class="tab-content">
						    <div class="tab-pane fade in active" id="messageMonth">
						    	<br><br>
					        <form action="${pageContext.request.contextPath}/imputation/messageBill" method="post" class="form-horizontal">
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">选择日期</label>
							    <div class="col-sm-4">
							      <input name="businessFeeDate" id="businessFeeDate" type="date" class="form-control">
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">城市</label>
							    <div class="col-sm-4">
							      <select name="cityCode" id="cityCode" class="form-control">
							      	<option value="">请选择</option>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${cityList}" var="city">
								 	 	<option value="${city.cityCode }">${city.cityName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <br><br>
							    <label for="inputPassword3" class="col-sm-2 control-label">产品编号</label>
							    <div class="col-sm-4">
							      <select name="productCode" id="productCode" class="form-control">
							      	<option value="">请选择</option>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${productList}" var="product">
								 	 	<option value="${product.productCode }">${product.productName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">通知单收入编码</label>
							    <div class="col-sm-4">
							      <select name="businessFeeTypeCode" id="businessFeeTypeCode" class="form-control">
							      	<option value="">请选择</option>
								 	 <b:forEach items="${rpBusinessFeeTypeCodeTList}" var="rpBusinessFeeTypeCodeTList">
								 	 	<option value="${rpBusinessFeeTypeCodeTList.businessFeeTypeCode }">${rpBusinessFeeTypeCodeTList.businessFeeTypeName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							  </div>
							  <div class="form-group col-sm-6">
							  <div class="col-sm-2">
							  </div>
							    <div class="col-sm-2">
							      <button type="submit" class="btn btn-primary">查询</button>
							    </div>
							  </div>
							</form>
						    </div>
						</div>
				  </div>
				</div>
		  	<!--查询面板结束-->
		  	<!--收入轨迹查询结果开始-->
		  	<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">当日卡销售归集查询结果</h3>
				  </div>
				  <div class="panel-body">
				  	<div class="col-sm-10">
					</div>
				  	<div class="col-sm-1">
				      <button type="button" class="btn btn-primary">导出excel</button>
				    </div>
				    <div class="col-sm-1">
				      <button type="button" class="btn btn-primary">导出txt</button>
				    </div>
				    <br><br><br>
				    <form class="form-horizontal">
						  <table class="table table-bordered table-hover table-striped">
							  <tr>
							  	<th><input type="checkbox"></th>
							  	<th>营业收款日期</th>
							  	<th>城市</th>
							  	<th>产品</th>
							  	<th>通知单收入编码</th>
							  	<th>收入金额</th>
							  	<th>更新时间</th>
							  	<th colspan="2">操作</th>
							  </tr>
							    <b:forEach items="${rpBusinessFeeGatherTList}" var="rpBusinessFeeGatherTList">
								<tr>
									<td><input type="checkbox"></td>
									<td>${rpBusinessFeeGatherTList.businessFeeDate}</td>
									<td>${rpBusinessFeeGatherTList.rpCityCodeT.cityName}</td>
									<td>${rpBusinessFeeGatherTList.rpCityCodeT.productName}</td>
									<td>${rpBusinessFeeGatherTList.businessTypeCode}</td>
									<td>${rpBusinessFeeGatherTList.businessFee}</td>
									<td><fmt:formatDate type="date" value="${rpBusinessFeeGatherTList.updateTime}"/></td>
									<td><a href="#">编辑</a></td>
									<td><a href="#">删除</a></td>
								</tr>
								</b:forEach>
								<tr>
									<td><input type="checkbox"></td>
									<td>2020年7月28日</td>
									<td>威海</td>
									<td>产品B</td>
									<td>通知单B</td>
									<td>1800.00</td>
									<td>2020年7月28日</td>
									<td><a href="#">编辑</a></td>
									<td><a href="#">删除</a></td>
								</tr>
						  </table>
						</form>
				  </div>
				</div>
				<!--收入轨迹查询结果结束-->
			</div>
			<!--通知单归集结束-->
		  </div>
		</div>
	</div>
	<%@ include file="../common/foot.jsp" %>
</body>
</html>