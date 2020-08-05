<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../../common/head.jsp" %>
</head>
<body>
    <!--导航栏开始-->
    <%@ include file="../../common/nav.jsp" %>
    <!--导航栏结束-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <%@ include file="../../common/menu.jsp" %>
            </div>
            <!--tab内容部分开始-->
            <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane active" id="chargeOff">
                        <!--出账收入开始-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">出账查询处理</h3>
                            </div>
                            <div class="panel-body">

                                <!--查询表单开始-->
                                <form class="form-horizontal" action="${pageContext.request.contextPath}/shourujihe/account" method="post" id="formId" name="formId">

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-1 control-label">城市编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="cityCode" id="cityCode">
                                                <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                                <b:if test="${not empty rpAccountFeeRecordForm.cityCode}">
                                                    <b:forEach items="${cityList}" var="cityList">
                                                        <b:if test="${rpAccountFeeRecordForm.cityCode==cityList.cityCode}">
                                                            <option value="${rpAccountFeeRecordForm.cityCode}">${cityList.cityName}</option>
                                                        </b:if>
                                                    </b:forEach>
                                                </b:if>
                                                <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                                <b:if test="${empty rpAccountFeeRecordForm.cityCode}">
                                                    <option value="">全部</option>
                                                </b:if>
                                                <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="city" %>
                                                <city:forEach items="${cityList}" var="city" >
                                                    <option value="${city.cityCode }">${city.cityName}</option>
                                                </city:forEach>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">产品编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="productCode" id="productCode">
                                                <option value="">全部</option>
                                                <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="product" %>
                                                <product:forEach items="${productList}" var="product" >
                                                    <option value="${product.productCode}">${product.productName}</option>
                                                </product:forEach>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">稽核状态</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">全部</option>
                                                <option value="0">未稽核</option>
                                                <option value="1">稽核成功</option>
                                                <option value="2">稽核失败</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label" name="accountFeeTypeCode" id="accountFeeTypeCode">出账收入类型</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">全部</option>
                                                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                                <b:forEach items="${rpAccountTypeCodeTList}" var="rpAccountTypeCodeTList">
                                                    <option value="${rpAccountTypeCodeTList.accountTypeCode }">${rpAccountTypeCodeTList.accountTypeName}</option>
                                                </b:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">查询</button>
                                        </div>
                                    </div>
                                </form>
                                <!--查询表单结束-->
                            </div>
                        </div>
                        <!--出账收入结束-->

                        <!--出账查询结果开始-->
                        <div class="panel panel-default" >
                            <div class="panel-heading">
                                <h3 class="panel-title">出账查询结果</h3>
                            </div>
                            <div class="panel-body">

                                <table class="table table-bordered table-hover table-striped">
                                    <tr>
                                        <th><input type="checkbox"/></th>
                                        <th>出账编号</th>
                                        <th>录入月份</th>
                                        <th>城市名称</th>
                                        <th>产品名称</th>
                                        <th>出账收入类型</th>
                                        <th>金额</th>
                                        <th>录入人员</th>
                                        <th>稽核状态</th>
                                        <th colspan="4">操作</th>
                                    </tr>
                                    <%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>
                                    <b:forEach items="${PageInfo.list}" var="accountFeeRecord">
                                        <tr>
                                            <td><input type="checkbox"/></td>
                                            <td>${accountFeeRecord.id}</td>
                                            <td>${accountFeeRecord.accountRecordMonth}</td>
                                            <td>
                                                <b:forEach items="${cityList}" var="city">
                                                    <b:if test="${accountFeeRecord.cityCode==city.cityCode}">
                                                        ${city.cityName}
                                                    </b:if>
                                                </b:forEach>
                                            </td>
                                            <td>
                                                <b:forEach items="${productList}" var="product">
                                                    <b:if test="${accountFeeRecord.productCode==product.productCode}">
                                                        ${product.productName}
                                                    </b:if>
                                                </b:forEach>
                                            </td>
                                            <td>
                                                <b:forEach items="${rpAccountTypeCodeTList}" var="rpAccountTypeCode">
                                                    <b:if test="${accountFeeRecord.accountFeeTypeCode==rpAccountTypeCode.accountTypeCode}">
                                                        ${rpAccountTypeCode.accountTypeName}
                                                    </b:if>
                                                </b:forEach>
                                            </td>
                                            <td>${accountFeeRecord.accountFee}</td>
                                            <td>${accountFeeRecord.accountOperator}</td>
                                            <td>
                                                <b:if test="${accountFeeRecord.checkStatus==0}">
                                                    未稽核
                                                </b:if>
                                                <b:if test="${accountFeeRecord.checkStatus==1}">
                                                    稽核成功
                                                </b:if>
                                                <b:if test="${accountFeeRecord.checkStatus==2}">
                                                    稽核失败
                                                </b:if>
                                            </td>
<%--                                            <td colspan="2"><a href="${pageContext.request.contextPath}/shourujihe/account/update?Aid=${accountFeeRecord.id}&Cid=1">稽核成功</a></td>--%>
                                            <td colspan="2"><a onclick="success(${accountFeeRecord.id})">稽核成功</a></td>
                                            <td colspan="2"><a href="${pageContext.request.contextPath}/shourujihe/account/update?Aid=${accountFeeRecord.id}&Cid=2">稽核失败</a></td>
                                        </tr>
                                    </b:forEach>
                                </table>

                                <!--分页开始-->
                                <nav aria-label="Page navigation" style="margin-left: 400px;">
                                    <ul class="pagination">
                                        <li class="active">
                                            <a href="javascript:void(0)" onclick="ShouYe()">首页</a>
                                        </li>
                                        <b:if test="${PageInfo.pageNum==1}">
                                            <li><a href="javascript:void(0)" onclick="QianYiYe1()">&laquo;</a></li>
                                        </b:if>
                                        <b:if test="${PageInfo.pageNum!=1}">
                                            <li><a href="javascript:void(0)" onclick="QianYiYe2()">&laquo;</a></li>
                                        </b:if>
                                        <b:forEach items="${PageInfo.navigatepageNums }" var="page_Num">
                                            <b:if test="${page_Num == PageInfo.pageNum }">
                                                <li class="active"><a href="javascript:void(0)" onclick="JumpTo(${page_Num})">${page_Num}</a></li>
                                            </b:if>
                                            <b:if test="${page_Num != PageInfo.pageNum }">
                                                <li><a href="javascript:void(0)" onclick="JumpTo(${page_Num})">${page_Num}</a></li>
                                            </b:if>
                                        </b:forEach>
                                        <b:if test="${PageInfo.pageNum==PageInfo.pages}">
                                            <li><a href="javascript:void(0)" onclick="HouYiYe1()">&laquo;</a></li>
                                        </b:if>
                                        <b:if test="${PageInfo.pageNum!=PageInfo.pages}">
                                            <li><a href="javascript:void(0)" onclick="HouYiYe2()">&laquo;</a></li>
                                        </b:if>
                                        <li class="active">
                                            <a href="javascript:void(0)" onclick="WeiYe()">尾页</a>
                                        </li>
                                    </ul>
                                </nav>
                                <!--分页结束-->
                            </div>
                        </div>
                        <!--出账查询结果结束-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function success(Aid) {
            var httpRequest = new XMLHttpRequest();//第一步：建立所需的对象
            httpRequest.open('GET', '${pageContext.request.contextPath}/shourujihe/account/update?Aid='+Aid+'&Cid=1', true);//第二步：打开连接  将请求参数写在url中  ps:"./Ptest.php?name=test&nameone=testone"
            httpRequest.send();//第三步：发送请求  将请求参数写在URL中
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account"
            document.getElementById('formId').submit();
            console.log("重新提交表单")
            httpRequest.onreadystatechange = function () {
                document.getElementById('formId').submit();
                console.log("重新提交表单")
            };
        }
        function ShouYe() {
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page=1"
            document.getElementById('formId').submit();
        }
        function QianYiYe1() {
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page=1"
            document.getElementById('formId').submit();
        }
        function QianYiYe2() {
            var num=${PageInfo.pageNum}-1
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page="+num
            document.getElementById('formId').submit();
        }
        function JumpTo(num) {
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page="+num
            document.getElementById('formId').submit();
        }
        function HouYiYe1() {
            var num=${PageInfo.pages};
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page="+num
            document.getElementById('formId').submit();
        }
        function HouYiYe2() {
            var num=${PageInfo.pageNum}+1;
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page="+num
            document.getElementById('formId').submit();
        }
        function WeiYe() {
            document.getElementById('formId').action="${pageContext.request.contextPath}/shourujihe/account?page=${PageInfo.pages}"
            document.getElementById('formId').submit();
        }
    </script>
    <%@ include file="../../common/foot.jsp" %>
</body>
</html>
