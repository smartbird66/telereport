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
                                <form class="form-horizontal" action="${pageContext.request.contextPath}/shourujihe/account" method="post">

                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">从</label>
                                        <div class="col-sm-2">
                                            <input type="date" class="form-control" id="accountRecordMonth" placeholder="Text input" name="accountRecordMonth" />
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">到</label>
                                        <div class="col-sm-2">
                                            <input type="date" class="form-control" id="accountRecordMonth2" placeholder="Text input" name="accountRecordMonth"/>
                                        </div>
                                        <label for="inputEmail3" class="col-sm-1 control-label">城市编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="cityCode" id="cityCode">
                                                <option value="">全部</option>
                                                <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="city" %>
                                                <city:forEach items="${cityList}" var="city" >
                                                    <option value="${cityCode}">${city.cityName}</option>
                                                </city:forEach>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">产品编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="productCode" id="productCode">
                                                <option value="">全部</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">稽核状态</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="accountFeeTypeCode">
                                                <option value="">全部</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">出账编号</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" placeholder="请输入出账编号">
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">录入人员</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" placeholder="请输入录入人员">
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">金额</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" placeholder="请输入金额">
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">出账收入类型</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">全部</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">查询</button>
                                            <a href="#" class="btn btn-default" role="button">稽核通过</a>
                                            <a href="#" class="btn btn-default" role="button">稽核失败</a>
                                            <a href="#" class="btn btn-default" role="button">未稽核</a>
                                            <a href="#" class="btn btn-default" role="button">导出</a>
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
                                    <c:forEach items="${accountFeeRecordList}" var="accountFeeRecord">
                                        <tr>
                                            <td><input type="checkbox"/></td>
                                            <td>${accountFeeRecord.id}</td>
                                            <td>${accountFeeRecord.accountRecordMonth}</td>
                                            <td>
                                                <c:forEach items="${cityList}" var="city">
                                                    <c:if test="${accountFeeRecord.cityCode==city.cityCode}">
                                                        ${city.cityName}
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                            <td>${accountFeeRecord.productCode}</td>
                                            <td>${accountFeeRecord.accountFeeTypeCode}</td>
                                            <td>${accountFeeRecord.accountFee}</td>
                                            <td>${accountFeeRecord.accountOperator}</td>
                                            <td>未稽核|稽核成功|稽核失败</td>
                                            <td colspan="2"><a href="${pageContext.request.contextPath}/shourujicha/${accountFeeRecord.id}/update?form">稽核成功</a></td>
                                            <td colspan="2"><a href="${pageContext.request.contextPath}/shourujicha/${accountFeeRecord.id}/delete">稽核失败</a></td>
                                        </tr>
                                    </c:forEach>
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
                        <!--出账查询结果结束-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../../common/foot.jsp" %>
</body>
</html>
