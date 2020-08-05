<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../common/head.jsp" %>
</head>
<body>
<!--导航条开始-->
<%@ include file="../common/nav.jsp" %>
<!--导航条结束-->

<!--布局容器开始-->
<div class="container-fluid">
    <div class="row">
        <!--菜单开始-->
        <%@ include file="../common/menu.jsp" %>
        <!--菜单结束-->
        <!--出帐收入首页开始-->
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">卡销售收入查询</h3>
                </div>
                <div class="panel-body">
                    <form name="form" class="form-horizontal"  method="post">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">城市编码</label>
                            <div class="col-sm-4">
                                <select name="cityCode" id="cityCode" class="form-control">
                                    <option value="">请选择...</option>
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                                    <c:forEach items="${cityList}" var="city">
                                        <option value="${city.cityCode}">${city.cityCode}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <label for="inputPassword3" class="col-sm-2 control-label">产品编码</label>
                            <div class="col-sm-4">
                                <select name="productCode" id="productCode" class="form-control">
                                    <option value="">请选择...</option>
                                    <!--导入核心标签库 item:控制层的属性名；>:显示-->
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                                    <c:forEach items="${productList}" var="product">
                                        <option value="${product.productCode}">${product.productCode}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">卡销售数量</label>
                            <div class="col-sm-4">
                                <input  type="text" class="form-control">
                            </div>
                            <label for="inputPassword3" class="col-sm-2 control-label">面值金额</label>
                            <div class="col-sm-4">
                                <input  type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">卡总金额</label>
                            <div class="col-sm-4">
                                <input  type="text" class="form-control">
                            </div>
                            <label for="inputPassword3" class="col-sm-2 control-label">折扣后总金额</label>
                            <div class="col-sm-4">
                                <input  type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">录入日期</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <script src="../static/common/bootstrap-table/extensions/export/bootstrap-table-export.js"></script>
                                <script src="../static/common/bootstrap-table/tableExport.js"></script>
                                <input type="button" class="btn btn-default" value="查询" onclick="action1()">
                                <input type="button" class="btn btn-default" value="录入" onclick="action2()">
                                <input type="button" class="btn btn-default" value="导出" onclick="action3()">
                                <input type="button" class="btn btn-default" value="导入" onclick="action4()">
                                <input type="button" class="btn btn-default" value="批量删除" onclick="action5()">
                            </div>
                        </div>
                    </form>
                    <script type="text/javascript">
                        function action1() {
                            document.form.action="${pageContext.request.contextPath}/kaxiaoshoushouru/list"
                            document.form.submit();
                        }
                        function action2() {
                            document.form.action="${pageContext.request.contextPath}/kaxiaoshoushouru/insert"
                            document.form.submit();
                        }
                        function action3() {
                            $('#form').tableExport({
                                type: 'excel',
                                exportDataType: "basic",
                                ignoreColumn: [0],
                                fileName: '信息列表',
                                onCellHtmlData: function (cell, row, col, data){
                                    console.info(data);
                                    return data;
                                },
                            });
                        }
                        function action4() {
                            document.form.action="${pageContext.request.contextPath}/kaxiaoshoushouru/insert"
                            document.form.submit();
                        }
                        function action5() {
                            document.form.action="${pageContext.request.contextPath}/kaxiaoshoushouru/insert"
                            document.form.submit();
                        }


                    </script>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">查询结果</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <table class="table table-bordered table-hover table-striped">
                            <tr>
                                <th><input type="checkbox"></th>
                                <th>序号</th>
                                <th>城市</th>
                                <th>产品</th>
                                <th>卡销售数量</th>
                                <th>面值金额</th>
                                <th>卡总金额</th>
                                <th>折扣后总金额</th>
                                <th>录入日期</th>
                                <th style="colspan: 2">操作</th>
                            </tr>
                            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <c:forEach items="${rpCardSaleRecordList}" var="rpCardSaleRecord">
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>${rpCardSaleRecord.id}</td>
                                    <td>${rpCardSaleRecord.cityCode}</td>
                                    <td>${rpCardSaleRecord.productCode}</td>
                                    <td>${rpCardSaleRecord.cardSaleAmount}</td>
                                    <td>${rpCardSaleRecord.cardParValueFee}</td>
                                    <td>${rpCardSaleRecord.totalFee}</td>
                                    <td>${rpCardSaleRecord.discountFee}</td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd"
                                                        value="${rpCardSaleRecord.saleDate}" /></td>
                                    <td><a href="#">编辑</a></td>
                                    <td><a href="#">删除</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <!--出账收入首页结束-->
    </div>
</div>
<!--布局容器结束-->
<%@ include file="../common/foot.jsp" %>
</body>
</html>