<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--导航条开始-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <font size="7" color="blue" face="楷体">电信结算系统</font>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">欢迎你，xxx <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">基本信息</a></li>
                    <li><a href="#">密码修改</a></li>
                    <li><a href="#">退出</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!--导航条结束-->
<!--布局容器开始-->
<div>
    <div class="container-fluid">
        <div class="row">
            <!--菜单开始-->
            <div class="col-md-3">
                <div class="tab-pane active" id="chargeOff">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        手工录入模块
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="list-group">
                                    <a href="#1" data-toggle="tab" class="list-group-item ">出账收入</a>
                                    <a href="#2" data-toggle="tab" class="list-group-item">卡销售收入</a>
                                    <a href="#3" data-toggle="tab" class="list-group-item">预存转收入</a>
                                    <a href="#4" data-toggle="tab" class="list-group-item">网间结算收入</a>
                                    <a href="#5" data-toggle="tab" class="list-group-item">通知单收入</a>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        数据归集模块
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        收款稽核模块
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--菜单结束-->
            <div class="col-md-9 ">
                <div class="tab-content ">
                    <div role="tabpanel" class="tab-pane active" id="1">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">出账收入查询</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">城市</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">产品</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">出账类型</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">录入月份</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="数字" aria-describedby="basic-addon2">
                                                <span class="input-group-addon" id="basic-addon2">月</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-primary">查询</button>
                                            <button type="button" class="btn btn-primary">重填</button>
                                            <button type="button" class="btn btn-primary">导出文档</button>
                                            <button type="button" class="btn btn-primary">手工录入</button>
                                        </div>
                                    </div>
                                </form>
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
                                            <th>出账类型</th>
                                            <th>录入月份</th>
                                            <th>录入金额</th>
                                            <th>录入人</th>
                                            <th style="colspan: 2">操作</th>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>1</td>
                                            <td>大连</td>
                                            <td>产品A</td>
                                            <td>已出账</td>
                                            <td>2020年7月</td>
                                            <td>10000.0</td>
                                            <td>王五</td>
                                            <td><a href="#">编辑</a></td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>2</td>
                                            <td>威海</td>
                                            <td>产品B</td>
                                            <td>未出账</td>
                                            <td>2020年7月</td>
                                            <td>10000.0</td>
                                            <td>王五</td>
                                            <td><a href="#">编辑</a></td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">卡销售收入查询</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">城市编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">产品编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
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
                                            <button type="button" class="btn btn-primary">查询</button>
                                            <button type="button" class="btn btn-primary">重填</button>
                                            <button type="button" class="btn btn-primary">导出文档</button>
                                            <button type="button" class="btn btn-primary">手工录入</button>
                                        </div>
                                    </div>
                                </form>
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
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>1</td>
                                            <td>大连</td>
                                            <td>产品A</td>
                                            <td>1</td>
                                            <td>500元</td>
                                            <td>500元</td>
                                            <td>300元</td>
                                            <td>2000年07月28日</td>
                                            <td><a href="#">编辑</a></td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>2</td>
                                            <td>大连</td>
                                            <td>产品B</td>
                                            <td>1</td>
                                            <td>500元</td>
                                            <td>500元</td>
                                            <td>300元</td>
                                            <td>2000年07月28日</td>
                                            <td><a href="#">编辑</a></td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">预存转收入查询</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">城市</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">产品</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">销账类型编码</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">销账金额</label>
                                        <div class="col-sm-4">
                                            <input  type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">结算月份</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="数字" aria-describedby="basic-addon2">
                                                <span class="input-group-addon" id="basic-addon2">月</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-primary">查询</button>
                                            <button type="button" class="btn btn-primary">重填</button>
                                            <button type="button" class="btn btn-primary">导出文档</button>
                                            <button type="button" class="btn btn-primary">手工录入</button>
                                        </div>
                                    </div>
                                </form>


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
                                                    <th>销账类型编码</th>
                                                    <th>销账金额</th>
                                                    <th>结算月份</th>
                                                    <th style="colspan: 2">操作</th>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>1</td>
                                                    <td>大连</td>
                                                    <td>产品A</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>2</td>
                                                    <td>大连</td>
                                                    <td>产品B</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">网间结算查询</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">城市</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">产品</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">结算运营商</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputEmail3" class="col-sm-1 control-label">结算类型</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">结算金额</label>
                                        <div class="col-sm-4">
                                            <input  type="text" class="form-control">
                                        </div>
                                        <label for="inputPassword3" class="col-sm-1 control-label">结算月份</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="数字" aria-describedby="basic-addon2">
                                                <span class="input-group-addon" id="basic-addon2">月</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-primary">查询</button>
                                            <button type="button" class="btn btn-primary">重填</button>
                                            <button type="button" class="btn btn-primary">导出文档</button>
                                            <button type="button" class="btn btn-primary">手工录入</button>
                                        </div>
                                    </div>
                                </form>


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
                                                    <th>结算运营商</th>
                                                    <th>结算类型</th>
                                                    <th>结算金额</th>
                                                    <th>结算月份</th>
                                                    <th style="colspan: 4">操作</th>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>1</td>
                                                    <td>大连</td>
                                                    <td>产品A</td>
                                                    <td>电信</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>2</td>
                                                    <td>大连</td>
                                                    <td>产品B</td>
                                                    <td>电信</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">通知单收入查询</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">城市</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">产品</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">通知单收入</label>
                                        <div class="col-sm-4">
                                            <select class="form-control">
                                                <option value="">请选择</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                        <label for="inputPassword3" class="col-sm-2 control-label">营业收入金额</label>
                                        <div class="col-sm-4">
                                            <input  type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">营业收款日期</label>
                                        <div class="col-sm-4">
                                            <input type="date" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-primary">查询</button>
                                            <button type="button" class="btn btn-primary">重填</button>
                                            <button type="button" class="btn btn-primary">导出文档</button>
                                            <button type="button" class="btn btn-primary">手工录入</button>
                                        </div>
                                    </div>
                                </form>


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
                                                    <th>通知单收入编码</th>
                                                    <th>营业收入金额</th>
                                                    <th>营业收款日期</th>
                                                    <th style="colspan: 2">操作</th>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>1</td>
                                                    <td>大连</td>
                                                    <td>产品A</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>2</td>
                                                    <td>大连</td>
                                                    <td>产品B</td>
                                                    <td>1</td>
                                                    <td>10000</td>
                                                    <td>2020年7月</td>
                                                    <td><a href="#">编辑</a></td>
                                                    <td><a href="#">删除</a></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--布局容器结束 -->
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>