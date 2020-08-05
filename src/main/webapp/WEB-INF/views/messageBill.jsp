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
					        <form id="demo" action="${pageContext.request.contextPath}/imputation/messageBill" method="post" class="form-horizontal">
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">选择日期</label>
							    <div class="col-sm-4">
							      <input name="businessFeeDate" id="businessFeeDate" type="date" class="form-control">
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">城市</label>
							    <div class="col-sm-4">
							      <select name="cityCode" id="cityCode" class="form-control">
							      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
							      	<b:if test="${not empty rpBusinessFeeGatherTForm.cityCode}">
								    	<b:forEach items="${cityList}" var="cityList">
                                           <b:if test="${rpBusinessFeeGatherTForm.cityCode==cityList.cityCode}">
                                               <option value="${ rpBusinessFeeGatherTForm.cityCode  }">${cityList.cityName}</option>
                                           </b:if>
                                       	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpBusinessFeeGatherTForm.cityCode  }">
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
							      <select name="productCode" id="productCode" class="form-control">
							      	<b:if test="${not empty rpBusinessFeeGatherTForm.productCode}">
								    	<b:forEach items="${productList}" var="productList">
                                           <b:if test="${rpBusinessFeeGatherTForm.productCode==productList.productCode}">
                                               <option value="${ rpBusinessFeeGatherTForm.productCode  }">${productList.productName}</option>
                                           </b:if>
                                      	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpBusinessFeeGatherTForm.productCode  }">
							        	<option value="">请选择</option>
							        </b:if>
							      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
								 	 <b:forEach items="${productList}" var="product">
								 	 	<option value="${product.productCode }">${product.productName}</option>
								 	 </b:forEach>
							      </select>
							    </div>
							    <label for="inputPassword3" class="col-sm-2 control-label">通知单收入编码</label>
							    <div class="col-sm-4">
							      <select name="businessFeeTypeCode" id="businessFeeTypeCode" class="form-control">
							      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
							      	<b:if test="${not empty rpBusinessFeeGatherTForm.businessTypeCode}">
								    	<b:forEach items="${rpBusinessFeeTypeCodeTList}" var="rpBusinessFeeTypeCodeTList">
                                           <b:if test="${rpBusinessFeeGatherTForm.businessTypeCode==rpBusinessFeeTypeCodeTList.businessFeeTypeCode}">
                                               <option value="${ rpBusinessFeeGatherTForm.businessTypeCode  }">${rpBusinessFeeTypeCodeTList.businessFeeTypeName}</option>
                                           </b:if>
                                      	</b:forEach>
								    </b:if>
								    <b:if test="${empty rpBusinessFeeGatherTForm.businessTypeCode  }">
							        	<option value="">请选择</option>
							        </b:if>
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
				    <h3 class="panel-title">通知单归集查询结果</h3>
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
							  	<th>营业收款日期</th>
							  	<th>城市</th>
							  	<th>产品</th>
							  	<th>通知单收入编码</th>
							  	<th>收入金额</th>
							  	<th>更新时间</th>
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
						    <li class="active"> <a href="javascript:void(0)" onclick="WeiYe()">尾页</a>
						    <!--a href="/telereport2/imputation/success?page=${PageInfo.pages}">尾页</a--></li>
						</ul>
						<script type="text/javascript">
						function WeiYe(){
						    document.demo.action="/telereport2/imputation/messageBill?page=${PageInfo.pages}";
							document.demo.submit();
						}
						function ShouYe(){
						    document.demo.action="/telereport2/imputation/messageBill?page=1";
							document.demo.submit();
						}
						function QianYiYe1(){
						    document.demo.action="/telereport2/imputation/messageBill?page=1";
							document.demo.submit();
						}
						function QianYiYe2(){
						    document.demo.action="/telereport2/imputation/messageBill?page=${PageInfo.pageNum-1}";
							document.demo.submit();
						}
						function XiaYiYe1(){
						    document.demo.action="/telereport2/imputation/messageBill?page=${PageInfo.pages}";
							document.demo.submit();
						}
						function XiaYiYe2(){
						    document.demo.action="/telereport2/imputation/messageBill?page=${PageInfo.pageNum+1}";
							document.demo.submit();
						}
						function DangQianYe(Page_Num){
						    document.demo.action="/telereport2/imputation/messageBill?page="+Page_Num;
							document.demo.submit();
						}
						</script>
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