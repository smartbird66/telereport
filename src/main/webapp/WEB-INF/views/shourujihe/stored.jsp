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
                <div class="tab-pane fade in active" id="internet">
                    <!--预转存收入开始-->
                    <div class="panel panel-default tab-pane" id="unloading">
                        <div class="panel-heading">
                            <h3 class="panel-title">预转存收入查询处理</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">从</label>
                                    <div class="col-sm-2">
                                        <input type="month" class="form-control" id="" placeholder="Text input" />
                                    </div>
                                    <label for="inputPassword3" class="col-sm-1 control-label">到</label>
                                    <div class="col-sm-2">
                                        <input type="month" class="form-control" id="" placeholder="Text input" />
                                    </div>
                                    <label for="inputEmail3" class="col-sm-1 control-label">城市编码</label>
                                    <div class="col-sm-4">
                                        <select class="form-control">
                                            <option value="">全部</option>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="city" %>
                                            <city:forEach items="${cityList}" var="city" >
                                                <option value="${cityCode}">${city.cityName}</option>
                                            </city:forEach>
                                        </select>
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">产品编码</label>
                                    <div class="col-sm-4">
                                        <select class="form-control">
                                            <option value="">全部</option>
                                            <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="product" %>
                                            <product:forEach items="${productList}" var="product" >
                                                <option value="${productCode}">${product.productName}</option>
                                            </product:forEach>
                                        </select>
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">稽核状态</label>
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
                                    <label for="inputPassword3" class="col-sm-2 control-label">销账金额</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" placeholder="请输入销账金额">
                                    </div>
                                    <label for="inputPassword3" class="col-sm-2 control-label">销账类型编码</label>
                                    <div class="col-sm-4">
                                        <select id="writeOffTypeCode" name="writeOffTypeCode" class="form-control">
                                            <option value="">请选择</option>
                                            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
                                            <b:forEach items="${rpWriteOffTypeCodeTList}" var="rpWriteOffTypeCodeTList">
                                                <option value="${rpWriteOffTypeCodeTList.writeOffTypeCode }">${rpWriteOffTypeCodeTList.writeOffTypeName}</option>
                                            </b:forEach>
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
                        </div>
                    </div>
                    <!--预转存收入结束-->

                    <!--预转存收入查询结果开始-->
                    <div class="panel panel-default tab-pane " id="unloading">
                        <div class="panel-heading">
                            <h3 class="panel-title">预转存收入查询结果</h3>
                        </div>
                        <div class="panel-body">

                            <table class="table table-bordered table-hover table-striped">
                                <tr>
                                    <th><input type="checkbox"/></th>
                                    <th>序号</th>
                                    <th>预转存录入日期</th>
                                    <th>城市编号</th>
                                    <th>产品编号</th>
                                    <th>销账类型编码</th>
                                    <th>销账金额</th>
                                    <th>录入人员</th>
                                    <th>稽核状态</th>
                                    <th>稽核人</th>
                                    <th>稽核时间</th>
                                    <th colspan="4">操作</th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>1</td>
                                    <td>2020/07/27</td>
                                    <td>大连</td>
                                    <td>手机</td>
                                    <td>001</td>
                                    <td>100</td>
                                    <td>张三</td>
                                    <td>未稽核</td>
                                    <td>无</td>
                                    <td>无</td>
                                    <td colspan="2">编辑</td>
                                    <td colspan="2">删除</td>
                                </tr>
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
                    <!--预转存收入查询结果结束-->
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../common/foot.jsp" %>
</body>
</html>
