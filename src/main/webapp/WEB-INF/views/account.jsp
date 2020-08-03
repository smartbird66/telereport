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
		  	<!--出账收入归集开始-->
		  	<div class="tab-pane fade in active" id="account">
			  	<!--查询面板开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">月收入归集查询</h3>
					  </div>
					  <div class="panel-body">
					  	<!--我的标签页开始-->
					  	<ul class="nav nav-tabs">
							<li role="presentation" class="active"><a href="#byMonth" data-toggle="tab">按月查询</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
							    <div class="tab-pane fade in active" id="byMonth">
							    	<br><br>
						        <form class="form-horizontal" action="${pageContext.request.contextPath}/imputation/account" method="post">
										  <div class="form-group">
										    <label for="inputPassword3" class="col-sm-2 control-label">收入月份</label>
										    <div class="col-sm-4">
										      <input name="accountMonth" id="accountMonth" type="month" class="form-control">
										    </div>
										    <label for="inputPassword3" class="col-sm-2 control-label">城市</label>
										    <div class="col-sm-4">
										      <select name="cityCode" id="cityCode" class="form-control">
										      	<option value="">请选择</option>
										      	<!-- 为什么我自己的不行？ -->
									      		<!-- %@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
											  	<c:forEach items="${cityList}" var="city">
											  	  	<option value="${city.cityCode}">${city.cityName}</option>
											 	 </c:forEach-->
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
										    <label for="inputPassword3" class="col-sm-2 control-label">出账收入类型</label>
										    <div class="col-sm-4">
										      <select name="accountTypeCode" id="accountTypeCode" class= "form-control">
										      	<option value="">请选择</option>
										      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
											 	 <b:forEach items="${rpAccountTypeCodeTList}" var="rpAccountTypeCodeTList">
											 	 	<option value="${rpAccountTypeCodeTList.accountTypeCode }">${rpAccountTypeCodeTList.accountTypeName}</option>
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
							<!--我的标签结束-->
					  </div>
					</div>
			  	<!--查询面板结束-->
			  	<!--收入轨迹查询结果开始-->
			  	<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">月收入归集查询结果</h3>
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
								  	<th>出账月份</th>
								  	<th>城市</th>
								  	<th>产品</th>
								  	<th>出账类型</th>
								  	<th>录入金额</th>
								  	<th>数据更新时间</th>
								  	<th colspan="2">操作</th>
								  </tr>
								  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
								  <b:forEach items="${rpAccountGatherTList}" var="rpAccountGatherTList">
									<tr>
										<td><input type="checkbox"></td>
										<td>${rpAccountGatherTList.accountMonth}</td>
										<td>${rpAccountGatherTList.rpCityCodeT.cityName}</td>
										<td>${rpAccountGatherTList.rpProductCodeT.productName}</td>
										<td>${rpAccountGatherTList.rpAccountTypeCodeT.accountTypeName}</td>
										<td>${rpAccountGatherTList.accounFee}</td>
										<td><fmt:formatDate type="date" value="${rpAccountGatherTList.updateTime}"/></td>
										<td><a href="#">编辑</a></td>
										<td><a href="#">删除</a></td>
									</tr>
									</b:forEach>
							  </table>
							</form>
					  </div>
					</div>
					<!--收入轨迹查询结果结束-->
					<!--可视化统计图开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">可视化统计图</div>
					  <div class="panel-body">
							<!--为ECharts准备一个具备大小（宽高）的Dom-->
					    <div id="card_main1" class="col-md-6" style="width: 600px;height:400px;"></div>
					    <div id="card_main2" class="col-md-6" style="width: 600px;height:400px;"></div>
					    <script type="text/javascript">
					        /*基于准备好的dom，初始化echarts实例*/
					        var myChart = echarts.init(document.getElementById('card_main1'));
					        // 指定图表的配置项和数据
					        option = {
									    xAxis: {
									        type: 'category',
									        data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'
									            , '11', '12', '13', '14', '15', '16', '17', '18', '19', '20'
									            , '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'
									            , '31']
									    },
									    yAxis: {
									        type: 'value'
									    },
									    series: [{
									        data: [820, 932, 901, 934, 1290, 1330, 1320],
									        type: 'line'
									    }]
									};
					        // 使用刚指定的配置项和数据显示图表。
					        myChart.setOption(option);
					    </script>
					    <script type="text/javascript">
					        // 基于准备好的dom，初始化echarts实例
					        var myChart = echarts.init(document.getElementById('card_main2'));
					
					        // 指定图表的配置项和数据
					        option = {
									    xAxis: {
									        type: 'category',
									        data: ['产品A', '产品B', '产品C', '产品D', '产品E', '产品F', '产品G']
									    },
									    yAxis: {
									        type: 'value'
									    },
									    series: [{
									        data: [120, 200, 150, 80, 70, 110, 130],
									        type: 'bar',
									        showBackground: true,
									        backgroundStyle: {
									            color: 'rgba(220, 220, 220, 0.8)'
									        }
									    }]
									};
					        // 使用刚指定的配置项和数据显示图表。
					        myChart.setOption(option);
					    </script>
					  </div>
					</div>
					<!--可视化结束-->
		  	</div>
		  <!--出账收入归集结束-->
		  </div>
		</div>
	</div>
	<%@ include file="../common/foot.jsp" %>
</body>
</html>