<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div class="col-md-3">
		  	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="headingOne">
			      <h4 class="panel-title">
			        <a role="button" onclick="displayDate()" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			          手工录入模块
			        </a>
			      </h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
			      <div class="list-group">
							  <a href="${pageContext.request.contextPath}/chuzhangshouru/list" class="list-group-item">出账收入</a>
							  <a href="${pageContext.request.contextPath}/kaxiaoshoushouru/list" class="list-group-item">卡销售收入</a>
							  <a href="${pageContext.request.contextPath}/yucunzhuan/list" class="list-group-item">预存转收入</a>
							  <a href="${pageContext.request.contextPath}/wangjianjiesuan/list" class="list-group-item">网间结算收入</a>
							  <a href="${pageContext.request.contextPath}/tongzhidan/list" class="list-group-item">通知单收入</a>
							</div>
			    </div>
			  </div>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="headingTwo">
			      <h4 class="panel-title">
			        <a class="collapsed" onclick="displayDate1()" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						归集模块
			        </a>
			      </h4>
			    </div>
			    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
			        <div class="list-group">
						<a href="#" class="list-group-item">
							预存转收入
						</a>
						<a href="#" class="list-group-item active">通知单</a>
						<a href="#" class="list-group-item">网间结算</a>
						<a href="#" class="list-group-item">预存转</a>
						<a href="#" class="list-group-item">出账</a>
							</div>
			      </div>
			    </div>
			  </div>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="headingThree">
			      <h4 class="panel-title">
			        <a class="collapsed" onclick="displayDate2()" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			          稽核模块
			        </a>
			      </h4>
			    </div>
			    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
			      <div class="panel-body">
					  <div class="list-group">
						  <a href="#" class="list-group-item">
							  预存转收入
						  </a>
						  <a href="#" class="list-group-item active">通知单</a>
						  <a href="#" class="list-group-item">网间结算</a>
						  <a href="#" class="list-group-item">预存转</a>
						  <a href="#" class="list-group-item">出账</a>
					  </div>
			      </div>
			    </div>
			  </div>
			</div>
		  </div>