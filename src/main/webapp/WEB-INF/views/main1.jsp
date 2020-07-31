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
						        <form class="form-horizontal" action="${pageContext.request.contextPath}/login/main1" method="post">
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
										      	<option>产品1</option>
										      	<option>产品2</option>
										      	<option>产品3</option>
										      </select>
										    </div>
										    <label for="inputPassword3" class="col-sm-2 control-label">产品类型</label>
										    <div class="col-sm-4">
										      <select class= "form-control">
										      	<option value="">请选择</option>
										      	<option>类型1</option>
										      	<option>类型2</option>
										      	<option>类型3</option>
										      </select>
										    </div>
										  </div>
										  <div class="form-group col-sm-6">
										    <div class="col-md-offset-1 col-sm-1">
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
								  	<th colspan="2">操作</th>
								  </tr>
								  <b:forEach items="${accountFeeRecordList}" var="accountFeeRecord">
									<tr>
										<td><input type="checkbox"></td>
										<td>${accountFeeRecord.accountRecordMonth}</td>
										<td>${accountFeeRecord.cityCode}</td>
										<td>${accountFeeRecord.productCode}</td>
										<td>${accountFeeRecord.accountFeeTypeCode}</td>
										<td>${accountFeeRecord.accountFee}</td>
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
		  
		  
		  
		  
		  
		  <!--卡销售归集开始-->
				<div class="tab-pane fade" id="cardTo">
					<!--查询面板开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">当日卡销售归集查询</h3>
					  </div>
					  <div class="panel-body">
					  	<!--我的标签页开始-->
					  	<ul class="nav nav-tabs">
							  <li role="presentation" class="active"><a href="#cardDay" data-toggle="tab">按日查询</a></li>
							  <li role="presentation"><a href="#cardCity" data-toggle="tab">按城市查询</a></li>
							  <li role="presentation"><a href="#cardPrudect" data-toggle="tab">按产品查询</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
							    <div class="tab-pane fade in active" id="cardDay">
							    	<br><br>
						        <form class="form-horizontal">
										  <div class="form-group">
										    <label for="inputPassword3" class="col-sm-1 control-label">选择日期</label>
										    <div class="col-sm-4">
										      <input type="date" class="form-control">
										    </div>
										  </div>
										  <div class="form-group col-sm-6">
										    <div class="col-md-offset-1 col-sm-1">
										      <button type="button" class="btn btn-primary">查询</button>
										    </div>
										  </div>
										</form>
							    </div>
							    <div class="tab-pane fade" id="cardCity">
							        <br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">城市</label>
											    <div class="col-sm-4">
											      <select class="form-control">
											      	<option value="">请选择</option>
											      	<option>城市1</option>
											      	<option>城市2</option>
											      	<option>城市3</option>
											      </select>
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
											    </div>
											  </div>
											</form>
							    </div>
							    <div class="tab-pane fade" id="cardPrudect">
							        <br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">产品编号</label>
											    <div class="col-sm-4">
											      <select class="form-control">
											      	<option value="">请选择</option>
											      	<option>产品1</option>
											      	<option>产品2</option>
											      	<option>产品3</option>
											      </select>
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
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
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td>大连</td>
										<td>产品A</td>
										<td>0.9</td>
										<td>10</td>
										<td>200.00</td>
										<td>张三</td>
										<td>王五</td>
										<td>2000.00</td>
										<td>1800.00</td>
										<td><a href="#">编辑</a></td>
										<td><a href="#">删除</a></td>
									</tr>
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
					</div>
				<!--收入归集查询结果结束-->
				
				
				
				
					<!--预转存归集开始-->
					<div class="tab-pane fade" id="stored">
						<!--查询面板开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">月预存转归集查询</h3>
					  </div>
					  <div class="panel-body">
					  	<!--我的标签页开始-->
					  	<ul class="nav nav-tabs">
							  <li role="presentation" class="active"><a href="#storedMonth" data-toggle="tab">按月查询</a></li>
							  <li role="presentation"><a href="#storedCity" data-toggle="tab">按城市查询</a></li>
							  <li role="presentation"><a href="#storedPrudect" data-toggle="tab">按产品查询</a></li>
							  <li role="presentation"><a href="#storedTableType" data-toggle="tab">按类型查询</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
							    <div class="tab-pane fade in active" id="storedMonth">
							    	<br><br>
						        <form class="form-horizontal">
										  <div class="form-group">
										    <label for="inputPassword3" class="col-sm-1 control-label">收入月份</label>
										    <div class="col-sm-4">
										      <input type="month" class="form-control">
										    </div>
										  </div>
										  <div class="form-group col-sm-6">
										    <div class="col-md-offset-1 col-sm-1">
										      <button type="button" class="btn btn-primary">查询</button>
										    </div>
										  </div>
										</form>
							    </div>
							    <div class="tab-pane fade" id="storedCity">
							        <br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">城市</label>
											    <div class="col-sm-4">
											      <select class="form-control">
											      	<option value="">请选择</option>
											      	<option>城市1</option>
											      	<option>城市2</option>
											      	<option>城市3</option>
											      </select>
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
											    </div>
											  </div>
											</form>
							    </div>
							    <div class="tab-pane fade" id="storedPrudect">
							        <br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">产品编号</label>
											    <div class="col-sm-4">
											      <select class="form-control">
											      	<option value="">请选择</option>
											      	<option>产品1</option>
											      	<option>产品2</option>
											      	<option>产品3</option>
											      </select>
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
											    </div>
											  </div>
											</form>
							    </div>
							    <div class="tab-pane fade" id="storedTableType">
							        <br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">销账类型</label>
											    <div class="col-sm-4">
											      <select class="form-control">
											      	<option value="">请选择</option>
											      	<option>类型1</option>
											      	<option>类型2</option>
											      	<option>类型3</option>
											      </select>
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
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
					    <h3 class="panel-title">月预存转归集查询结果</h3>
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
								  	<th colspan="2">操作</th>
								  </tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2020年7月</td>
										<td>大连</td>
										<td>产品A</td>
										<td>类型A</td>
										<td>10000.0</td>
										<td><a href="#">编辑</a></td>
										<td><a href="#">删除</a></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2020年7月</td>
										<td>威海</td>
										<td>产品B</td>
										<td>类型B</td>
										<td>10800.0</td>
										<td><a href="#">编辑</a></td>
										<td><a href="#">删除</a></td>
									</tr>
							  </table>
							</form>
					  </div>
					</div>
					<!--收入轨迹查询结果结束-->
					<!--可视化统计图开始-->
					<div class="panel panel-default">
					  <div class="panel-heading">可视化统计图</div>
					  <div class="panel-body">
					    <div id="stored_main" class="col-md-6" style="width: 600px;height:400px;"></div>
					    <div id="stored_main2" class="col-md-6" style="width: 600px;height:400px;"></div>
					    <script type="text/javascript">
					        // 基于准备好的dom，初始化echarts实例
					        var myChart = echarts.init(document.getElementById('stored_main'));
					
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
					        var myChart = echarts.init(document.getElementById('stored_main2'));
					
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
					<!--预转存归集结束-->
					
					
					
					
					<!--网间收入归集开始-->
					<div class="tab-pane fade" id="internet">
						<!--查询面板开始-->
						<div class="panel panel-default">
						  <div class="panel-heading">
						    <h3 class="panel-title">当月网结算归集查询</h3>
						  </div>
						  <div class="panel-body">
						  	<!--我的标签页开始-->
						  	<ul class="nav nav-tabs">
								  <li role="presentation" class="active"><a href="#internetMonth" data-toggle="tab">按月查询</a></li>
								  <li role="presentation"><a href="#internetCity" data-toggle="tab">按城市查询</a></li>
								  <li role="presentation"><a href="#internetProduct" data-toggle="tab">按产品查询</a></li>
								  <li role="presentation"><a href="#internetType" data-toggle="tab">按类型查询</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
								    <div class="tab-pane fade in active" id="internetMonth">
								    	<br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">选择日期</label>
											    <div class="col-sm-4">
											      <input type="month" class="form-control">
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
											    </div>
											  </div>
											</form>
								    </div>
								    <div class="tab-pane fade" id="internetCity">
								        <br><br>
								        <form class="form-horizontal">
												  <div class="form-group">
												    <label for="inputPassword3" class="col-sm-1 control-label">城市</label>
												    <div class="col-sm-4">
												      <select class="form-control">
												      	<option value="">请选择</option>
												      	<option>城市1</option>
												      	<option>城市2</option>
												      	<option>城市3</option>
												      </select>
												    </div>
												  </div>
												  <div class="form-group col-sm-6">
												    <div class="col-md-offset-1 col-sm-1">
												      <button type="button" class="btn btn-primary">查询</button>
												    </div>
												  </div>
												</form>
								    </div>
								    <div class="tab-pane fade" id="internetProduct">
								        <br><br>
								        <form class="form-horizontal">
												  <div class="form-group">
												    <label for="inputPassword3" class="col-sm-1 control-label">产品编号</label>
												    <div class="col-sm-4">
												      <select class="form-control">
												      	<option value="">请选择</option>
												      	<option>产品1</option>
												      	<option>产品2</option>
												      	<option>产品3</option>
												      </select>
												    </div>
												  </div>
												  <div class="form-group col-sm-6">
												    <div class="col-md-offset-1 col-sm-1">
												      <button type="button" class="btn btn-primary">查询</button>
												    </div>
												  </div>
												</form>
								    </div>
								    <div class="tab-pane fade" id="internetType">
								        <br><br>
								        <form class="form-horizontal">
												  <div class="form-group">
												    <label for="inputPassword3" class="col-sm-1 control-label">结算类型</label>
												    <div class="col-sm-4">
												      <select class="form-control">
												      	<option value="">请选择</option>
												      	<option>类型1</option>
												      	<option>类型2</option>
												      	<option>类型3</option>
												      </select>
												    </div>
												  </div>
												  <div class="form-group col-sm-6">
												    <div class="col-md-offset-1 col-sm-1">
												      <button type="button" class="btn btn-primary">查询</button>
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
						    <h3 class="panel-title">当月网结算归集查询结果</h3>
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
									  	<th>运营商编号</th>
									  	<th>结算类型</th>
									  	<th>录入人员</th>
									  	<th>结算金额</th>
									  	<th>稽核人</th>
									  	<th>稽核时间</th>
									  	<th>稽核状态</th>
									  	<th colspan="2">操作</th>
									  </tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>1</td>
											<td>大连</td>
											<td>产品A</td>
											<td>运营商1</td>
											<td>支付宝</td>
											<td>张三</td>
											<td>500.00</td>
											<td>王五</td>
											<td>2020年7月28日</td>
											<td>已稽核</td>
											<td><a href="#">编辑</a></td>
											<td><a href="#">删除</a></td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>2</td>
											<td>威海</td>
											<td>产品B</td>
											<td>运营商1</td>
											<td>微信</td>
											<td>张三</td>
											<td>1000.00</td>
											<td>王五</td>
											<td>2020年7月28日</td>
											<td>已稽核</td>
											<td><a href="#">编辑</a></td>
											<td><a href="#">删除</a></td>
										</tr>
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
						    <div id="main" class="col-md-6" style="width: 600px;height:400px;"></div>
						    <div id="main2" class="col-md-6" style="width: 600px;height:400px;"></div>
						    <script type="text/javascript">
						        var myChart = echarts.init(document.getElementById('main'));
						
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
						        var myChart = echarts.init(document.getElementById('main2'));
						
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
					<!--网间收入归集结束-->
					
					
					
					
					
					<!--通知单归集开始-->
					<div class="tab-pane fade" id="messageBill">
						<!--查询面板开始-->
						<div class="panel panel-default">
						  <div class="panel-heading">
						    <h3 class="panel-title">日通知单归集查询</h3>
						  </div>
						  <div class="panel-body">
						  	<!--我的标签页开始-->
						  	<ul class="nav nav-tabs">
								  <li role="presentation" class="active"><a href="#messageMonth" data-toggle="tab">按日查询</a></li>
								  <li role="presentation"><a href="#messageCity" data-toggle="tab">按城市查询</a></li>
								  <li role="presentation"><a href="#messagePrudect" data-toggle="tab">按产品查询</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
								    <div class="tab-pane fade in active" id="messageMonth">
								    	<br><br>
							        <form class="form-horizontal">
											  <div class="form-group">
											    <label for="inputPassword3" class="col-sm-1 control-label">选择日期</label>
											    <div class="col-sm-4">
											      <input type="date" class="form-control">
											    </div>
											  </div>
											  <div class="form-group col-sm-6">
											    <div class="col-md-offset-1 col-sm-1">
											      <button type="button" class="btn btn-primary">查询</button>
											    </div>
											  </div>
											</form>
								    </div>
								    <div class="tab-pane fade" id="messageCity">
								        <br><br>
								        <form class="form-horizontal">
												  <div class="form-group">
												    <label for="inputPassword3" class="col-sm-1 control-label">城市</label>
												    <div class="col-sm-4">
												      <select class="form-control">
												      	<option value="">请选择</option>
												      	<option>城市1</option>
												      	<option>城市2</option>
												      	<option>城市3</option>
												      </select>
												    </div>
												  </div>
												  <div class="form-group col-sm-6">
												    <div class="col-md-offset-1 col-sm-1">
												      <button type="button" class="btn btn-primary">查询</button>
												    </div>
												  </div>
												</form>
								    </div>
								    <div class="tab-pane fade" id="messagePrudect">
								        <br><br>
								        <form class="form-horizontal">
												  <div class="form-group">
												    <label for="inputPassword3" class="col-sm-1 control-label">产品编号</label>
												    <div class="col-sm-4">
												      <select class="form-control">
												      	<option value="">请选择</option>
												      	<option>产品1</option>
												      	<option>产品2</option>
												      	<option>产品3</option>
												      </select>
												    </div>
												  </div>
												  <div class="form-group col-sm-6">
												    <div class="col-md-offset-1 col-sm-1">
												      <button type="button" class="btn btn-primary">查询</button>
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
										<tr>
											<td><input type="checkbox"></td>
											<td>2020年7月28日</td>
											<td>大连</td>
											<td>产品A</td>
											<td>通知单A</td>
											<td>2000.00</td>
											<td>2020年7月28日</td>
											<td><a href="#">编辑</a></td>
											<td><a href="#">删除</a></td>
										</tr>
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
		  <!--tab-content循环渲染结束-->
		</div>
  	</div>
  	<!--容器栏结束-->

    <%@ include file="../common/foot.jsp" %>
  </body>
</html>