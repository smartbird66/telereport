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
		  	<!--网间收入归集开始-->
			<div class="tab-pane fade in active" id="internet">
				<!--查询面板开始-->
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">当月网结算归集查询</h3>
				  </div>
				  <div class="panel-body">
				  	<!--我的标签页开始-->
				  	<ul class="nav nav-tabs">
						  <li role="presentation" class="active"><a href="#internetMonth" data-toggle="tab">按月查询</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
						    <div class="tab-pane fade in active" id="internetMonth">
						    	<br><br>
					        <form name="demo" class="form-horizontal" action="${pageContext.request.contextPath}/imputation/internet" method="post">
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">选择日期</label>
							    <div class="col-sm-4">
						        	<input name="balanceMonth" id="balanceMonth" type="date" class="form-control">
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">城市</label>
							    <div id="cityCode" name="cityCode" class="col-sm-4">
							      <select class="form-control">
							      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
							      	<b:if test="${not empty rpNetBalanceRecordTForm.cityCode}">
								    	<b:forEach items="${cityList}" var="cityList">
                                           <b:if test="${rpNetBalanceRecordTForm.cityCode==cityList.cityCode}">
                                               <option value="${ rpNetBalanceRecordTForm.cityCode  }">${cityList.cityName}</option>
                                           </b:if>
                                       	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpNetBalanceRecordTForm.cityCode  }">
							        	<option value="">请选择</option>
							        </b:if>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${cityList}" var="city">
								 	 	<option value="${city.cityCode }">${city.cityName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <br><br>
							    <label for="inputPassword3" class="col-sm-2 control-label">产品编号</label>
							    <div class="col-sm-4">
							      <select id="productCode" name="productCode" class="form-control">
							      	<b:if test="${not empty rpNetBalanceRecordTForm.productCode}">
								    	<b:forEach items="${productList}" var="productList">
                                            <b:if test="${rpNetBalanceRecordTForm.productCode==productList.productCode}">
                                                <option value="${ rpNetBalanceRecordTForm.productCode  }">${productList.productName}</option>
                                            </b:if>
                                       	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpNetBalanceRecordTForm.productCode  }">
							        	<option value="">请选择</option>
							        </b:if>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${productList}" var="product">
								 	 	<option value="${product.productCode }">${product.productName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">结算类型</label>
							    <div class="col-sm-4">
							      <select id="balanceTypeCode" name="balanceTypeCode" class="form-control">
							      	<b:if test="${not empty rpNetBalanceRecordTForm.balanceTypeCode}">
								    	<b:forEach items="${rpBalanceTypeCodeTList}" var="rpBalanceTypeCodeTList">
                                            <b:if test="${rpNetBalanceRecordTForm.balanceTypeCode==rpBalanceTypeCodeTList.balanceTypeCode}">
                                                <option value="${ rpNetBalanceRecordTForm.balanceTypeCode  }">${rpBalanceTypeCodeTList.balanceTypeName}</option>
                                            </b:if>
                                       	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpNetBalanceRecordTForm.balanceTypeCode  }">
							        	<option value="">请选择</option>
							        </b:if>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${rpBalanceTypeCodeTList}" var="rpBalanceTypeCodeTList">
								 	 	<option value="${rpBalanceTypeCodeTList.balanceTypeCode }">${rpBalanceTypeCodeTList.balanceTypeName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <br><br>
							    <label for="inputPassword3" class="col-sm-2 control-label">结算运运营商</label>
							    <div class="col-sm-4">
							      <select id="balanceSpCode" name="balanceSpCode" class="form-control">
							      	<b:if test="${not empty rpNetBalanceRecordTForm.balanceSpCode}">
								    	<b:forEach items="${rpBalanceSpCodeTList}" var="rpBalanceSpCodeTList">
                                            <b:if test="${rpNetBalanceRecordTForm.balanceSpCode==rpBalanceSpCodeTList.balanceSpCode}">
                                                <option value="${ rpNetBalanceRecordTForm.balanceSpCode  }">${rpBalanceSpCodeTList.balanceSpName}</option>
                                            </b:if>
                                       	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpNetBalanceRecordTForm.balanceSpCode  }">
							        	<option value="">请选择</option>
							        </b:if>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${rpBalanceSpCodeTList}" var="rpBalanceSpCodeTList">
								 	 	<option value="${rpBalanceSpCodeTList.balanceSpCode }">${rpBalanceSpCodeTList.balanceSpName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							  </div>
							  <div class="form-group col-sm-6">
							  <div class="col-sm-2">
						  	  </div>
						      <div class=" col-sm-2">
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
				    <h3 class="panel-title">当月网结算归集查询结果</h3>
				  </div>
				  <div class="panel-body">
				 	<div class="col-sm-10">
					</div>
				  	<div class="col-sm-1">
				      <button onclick="exportData()" type="button" class="btn btn-primary">导出excel</button>
				    </div>
				    <div class="col-sm-1">
				      <button onclick="exportDataTxt()" type="button" class="btn btn-primary">导出txt</button>
				    </div>
				     <script type="text/javascript">
			    //点击"导出Excle"
			      function exportData(){
			          $('#myTable').tableExport({
			              type: 'excel',//导出文件类型，[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf']
			              exportDataType: "basic",//'basic':当前页的数据, 'all':全部的数据, 'selected':选中的数据
			              ignoreColumn: [0],//忽略某一列的索引
			              fileName: '卡收入归集',//下载文件名称
			              onCellHtmlData: function (cell, row, col, data){//处理导出内容,自定义某一行、某一列、某个单元格的内容
			                  console.info(data);
			                  return data;
			              },
			          });
			      }
			      function exportDataTxt(){
			          $('#myTable').tableExport({
			              type: 'txt',//导出文件类型，[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf']
			              exportDataType: "basic",//'basic':当前页的数据, 'all':全部的数据, 'selected':选中的数据
			              ignoreColumn: [0],//忽略某一列的索引
			              fileName: '卡收入归集',//下载文件名称
			              onCellHtmlData: function (cell, row, col, data){//处理导出内容,自定义某一行、某一列、某个单元格的内容
			                  console.info(data);
			                  return data;
			              },
			          });
			      }
			      </script>
				    <br><br><br>
				    <form class="form-horizontal">
						  <table id="myTable" class="table table-bordered table-hover table-striped">
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
							  </tr>
							  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
							  <b:forEach items="${rpNetBalanceRecordTList}" var="rpNetBalanceRecordTList">
								<tr>
									<td><input type="checkbox"></td>
									<td>${rpNetBalanceRecordTList.id}</td>
									<td>${rpNetBalanceRecordTList.rpCityCodeT.cityName}</td>
									<td>${rpNetBalanceRecordTList.rpProductCodeT.productName}</td>
									<td>${rpNetBalanceRecordTList.rpBalanceSpCodeT.balanceSpName}</td>
									<td>${rpNetBalanceRecordTList.balanceTypeCode}</td>
									<td>${rpNetBalanceRecordTList.recordOperator}</td>
									<td>${rpNetBalanceRecordTList.balanceFee}</td>
									<td>${rpNetBalanceRecordTList.checkPerson}</td>
									<td><fmt:formatDate type="date" value="${rpNetBalanceRecordTList.checkTime}"/></td>
									<td>${rpNetBalanceRecordTList.checkStatus}</td>
								</tr>
								</b:forEach>
						  </table>
						</form>
						<div>
							    当前第${PageInfo.pageNum}页，总共${PageInfo.pages}页，总共${PageInfo.total}条记录
							</div>
							<ul class="pagination">
							    <li class="active"><a href="javascript:void(0)" onclick="ShouYe()">首页</a></li>
							    <b:if test="${PageInfo.pageNum == 1 }">
							        <li><a href="javascript:void(0)" onclick="QianYiYe1()">&laquo;</a></li>
							    </b:if>
							    <b:if test="${PageInfo.pageNum != 1 }">
							        <li><a href="javascript:void(0)" onclick="QianYiYe2()">&laquo;</a></li>
							    </b:if>
							
							    <b:forEach items="${PageInfo.navigatepageNums }" var="page_Num">
							
							        <b:if test="${page_Num == PageInfo.pageNum }">
							            <li class="active"><a href="#">${page_Num}</a></li>
							        </b:if>
							        <b:if test="${page_Num != PageInfo.pageNum }">
							            <li><a href="javascript:void(0)" onclick="DangQianYe(${page_Num})">${page_Num}</a></li>
							        </b:if>
							
							    </b:forEach>
							
							    <b:if test="${PageInfo.pageNum == PageInfo.pages }">
							        <li><a href="javascript:void(0)" onclick="XiaYiYe1()">&laquo;</a></li>
							    </b:if>
							    <b:if test="${PageInfo.pageNum != PageInfo.pages }">
							        <li><a href="javascript:void(0)" onclick="XiaYiYe2()">&raquo;</a></li>
							    </b:if>
							    <li class="active"> <a href="javascript:void(0)" onclick="WeiYe()">尾页</a></li>
							</ul>
							<script type="text/javascript">
							function WeiYe(){
							    document.demo.action="/telereport2/imputation/internet?page=${PageInfo.pages}";
								document.demo.submit();
							}
							function ShouYe(){
							    document.demo.action="/telereport2/imputation/internet?page=1";
								document.demo.submit();
							}
							function QianYiYe1(){
							    document.demo.action="/telereport2/imputation/internet?page=1";
								document.demo.submit();
							}
							function QianYiYe2(){
							    document.demo.action="/telereport2/imputation/internet?page=${PageInfo.pageNum-1}";
								document.demo.submit();
							}
							function XiaYiYe1(){
							    document.demo.action="/telereport2/imputation/internet?page=${PageInfo.pages}";
								document.demo.submit();
							}
							function XiaYiYe2(){
							    document.demo.action="/telereport2/imputation/internet?page=${PageInfo.pageNum+1}";
								document.demo.submit();
							}
							function DangQianYe(Page_Num){
							    document.demo.action="/telereport2/imputation/internet?page="+Page_Num;
								document.demo.submit();
							}
							</script>
				  </div>
				</div>
				<!--收入轨迹查询结果结束-->
				<!--可视化统计图开始-->
				<!-- div class="panel panel-default">
				  <div class="panel-heading">可视化统计图</div>
				  <div class="panel-body"-->
				    <!--为ECharts准备一个具备大小（宽高）的Dom-->
				    <!--div id="main" class="col-md-6" style="width: 600px;height:400px;"></div>
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
				</div -->
				<!--可视化结束-->
			</div>
			<!--网间收入归集结束-->
		  </div>
		</div>
	</div>
	<%@ include file="../common/foot.jsp" %>
</body>
</html>