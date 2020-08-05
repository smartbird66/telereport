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
		  	<!--卡销售归集开始-->
			<div class="tab-pane fade in active" id="cardTo">
			<!--查询面板开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">当日卡销售归集查询</h3>
					  </div>
					  <div class="panel-body">
					  	<!--我的标签页开始-->
					  	<ul class="nav nav-tabs">
						  <li role="presentation" class="active"><a href="#cardDay" data-toggle="tab">按日查询</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
						    <div class="tab-pane fade in active" id="cardDay">
						    	<br><br>
					        <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/imputation/cardTo">
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">选择日期</label>
							    <div class="col-sm-4">
							      <input name="saleDate" id="saleDate" type="date" class="form-control">
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
		  	<!--收入归集查询结果开始-->
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
						  	<th>序号</th>
						  	<th>城市</th>
						  	<th>产品</th>
						  	<th>折扣率</th>
						  	<th>卡销售数量</th>
						  	<th>面值金额</th>
						  	<th>录入人员</th>
						  	<th>稽核人</th>
						  	<th>卡总金额</th>
						  	<th>折后金额</th>
						  	<th colspan="2">操作</th>
						  </tr>
						  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
						  <b:forEach items="${RpCardSaleRecordTList}" var="RpCardSaleRecordTList">
							<tr>
								<td><input type="checkbox"></td>
								<td>${RpCardSaleRecordTList.id}</td>
								<td>${RpCardSaleRecordTList.rpCityCodeT.cityName}</td>
								<td>${RpCardSaleRecordTList.rpProductCodeT.productName}</td>
								<td>${RpCardSaleRecordTList.discountRate}</td>
								<td>${RpCardSaleRecordTList.cardSaleAmount}</td>
								<td>${RpCardSaleRecordTList.cardParValueFee}</td>
								<td>${RpCardSaleRecordTList.recordOperator}</td>
								<td>${RpCardSaleRecordTList.checkPerson}</td>
								<td>${RpCardSaleRecordTList.totalFee}</td>
								<td>${RpCardSaleRecordTList.discountFee}</td>
								<td><a href="#">编辑</a></td>
								<td><a href="#">删除</a></td>
							</tr>
							</b:forEach>
							<tr>
								<td><input type="checkbox"></td>
								<td>2</td>
								<td>威海</td>
								<td>产品B</td>
								<td>0.8</td>
								<td>10</td>
								<td>200.00</td>
								<td>张三</td>
								<td>王五</td>
								<td>2000.00</td>
								<td>1600.00</td>
								<td><a href="#">编辑</a></td>
								<td><a href="#">删除</a></td>
							</tr>
					  </table>
					</form>
			  </div>
			</div>
			<!--收入归集查询结果结束-->
		  	</div>
		</div>
	</div>
	<%@ include file="../common/foot.jsp" %>
</body>
</html>