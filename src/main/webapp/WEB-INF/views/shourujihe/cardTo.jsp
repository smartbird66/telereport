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
                <div class="tab-pane fade in active" id="cardTo">
                    <!--卡销售收入开始-->
                    <div class="panel panel-default tab-pane" id="sell">
                        <div class="panel-heading">
                            <h3 class="panel-title">销售查询处理</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="${pageContext.request.contextPath}/shourujihe/cardTo" method="post" id="formId" name="formId">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">城市编码</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="cityCode" id="cityCode">
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${not empty rpCardSaleRecordTForm.cityCode}">
                                                <b:forEach items="${cityList}" var="cityList">
                                                    <b:if test="${rpCardSaleRecordTForm.cityCode==cityList.cityCode}">
                                                        <option value="${rpCardSaleRecordTForm.cityCode}">${cityList.cityName}</option>
                                                    </b:if>
                                                </b:forEach>
                                            </b:if>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${empty rpCardSaleRecordTForm.cityCode}">
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
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${not empty rpCardSaleRecordTForm.productCode}">
                                                <b:forEach items="${productList}" var="productList">
                                                    <b:if test="${rpCardSaleRecordTForm.productCode==productList.productCode}">
                                                        <option value="${rpCardSaleRecordTForm.productCode}">${productList.productName}</option>
                                                    </b:if>
                                                </b:forEach>
                                            </b:if>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${empty rpCardSaleRecordTForm.productCode}">
                                                <option value="">全部</option>
                                            </b:if>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="product" %>
                                            <product:forEach items="${productList}" var="product" >
                                                <option value="${product.productCode}">${product.productName}</option>
                                            </product:forEach>
                                        </select>
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">稽核状态</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="checkStatus" id="checkStatus">
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${not empty rpCardSaleRecordTForm.checkStatus}">
                                                <b:if test="${rpCardSaleRecordTForm.checkStatus==0}">
                                                    <option value="0">未稽核</option>
                                                </b:if>

                                                <b:if test="${rpCardSaleRecordTForm.checkStatus==1}">
                                                    <option value="1">稽核成功</option>
                                                </b:if>

                                                <b:if test="${rpCardSaleRecordTForm.checkStatus==2}">
                                                    <option value="2">稽核失败</option>
                                                </b:if>
                                            </b:if>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:if test="${empty rpCardSaleRecordTForm.checkStatus}">
                                                <option value="">全部</option>
                                            </b:if>
                                            <option value="">全部</option>
                                            <option value="0">未稽核</option>
                                            <option value="1">稽核成功</option>
                                            <option value="2">稽核失败</option>
                                        </select>
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">卡销售数量</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" placeholder="请输入卡销售数量">
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">卡总金额</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" placeholder="请输入卡总金额">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">查询</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--卡销售收入结束-->

                    <!--卡销售收入查询结果开始-->
                    <div class="panel panel-default tab-pane " id="sell">
                        <div class="panel-heading">
                            <h3 class="panel-title">卡销售收入查询结果</h3>
                        </div>
                        <div class="panel-body">

                            <table class="table table-bordered table-hover table-striped">
                                <tr>
                                    <th><input type="checkbox"></th>
                                    <th>序号</th>
                                    <th>城市</th>
                                    <th>产品</th>
                                    <th>折扣率</th>
                                    <th>卡销售数量</th>
                                    <th>面值金额</th>
                                    <th>稽核状态</th>
                                    <th>卡总金额</th>
                                    <th>折后金额</th>
                                    <th colspan="2">操作</th>
                                </tr>
                                <%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>
                                <b:forEach items="${PageInfo.list}" var="accountFeeRecord">
                                    <tr>
                                        <td><input type="checkbox"/></td>
                                        <td>${accountFeeRecord.id}</td>
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
                                        <td>${accountFeeRecord.discountRate}</td>
                                        <td>${accountFeeRecord.cardSaleAmount}</td>
                                        <td>${accountFeeRecord.cardParValueFee}</td>
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
                                        <td>${accountFeeRecord.totalFee}</td>
                                        <td>${accountFeeRecord.discountFee}</td>
                                            <%--                                            <td colspan="2"><a href="${pageContext.request.contextPath}/shourujihe/account/update?Aid=${accountFeeRecord.id}&Cid=1">稽核成功</a></td>--%>
                                        <td colspan="2"><a onclick="success(${accountFeeRecord.id})">稽核成功</a></td>
                                        <td colspan="2"><a href="${pageContext.request.contextPath}/shourujihe/account/update?Aid=${accountFeeRecord.id}&Cid=2">稽核失败</a></td>
                                    </tr>
                                </b:forEach>
                            </table>

                            <!--分页开始-->
                            <nav aria-label="Page navigation" style="margin-left: 400px;">
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <!--分页结束-->
                        </div>
                    </div>
                    <!--卡销售收入查询结果结束-->
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../common/foot.jsp" %>
</body>
</html>
