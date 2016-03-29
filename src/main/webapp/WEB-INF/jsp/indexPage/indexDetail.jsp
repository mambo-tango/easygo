<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h4 class="page-header">前置库查询</h4>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="form-group col-lg-4">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="单号"> <span
				class="input-group-btn">
				<button class="btn btn-default" type="button" id ="search">查询</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>

	<div class="form-group btn-group" data-toggle="buttons">
	
	<!-- 	<label class="btn btn-default" style="display: none;"> 
			<input type="radio" name="options" id="defa" style="display: none;" checked="checked">
		</label> -->
		 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="taking"> 揽收
		</label> 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="container"> 容器
		</label> 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="handon"> 派件
		</label> 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="signature"> 签收
		</label> 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="truck"> 到发车
		</label> 
		<label class="btn btn-default"> 
			<input type="radio" name="options" id="bill"> 单据
		</label>

	</div>




	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">查询结果</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th>ID</th>
									<th>单号</th>
									<th>组织</th>
									<th>操作码</th>
									<th>创建时间</th>
									<th>上传时间</th>
									<th>失败原因</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="track">
									<tr class="odd gradeX">
										<td>${track.id}</td>
										<td>${track.waybillNo}</td>
										<td>${track.orgCode}</td>
										<td>${track.opCode}</td>
										<td><fmt:formatDate value="${track.createTime}"
												type="time" timeStyle="full" pattern="yyyy-MM-dd HH:mm:ss" /></td>
										<td><fmt:formatDate value="${track.uploadTime}"
												type="time" timeStyle="full" pattern="yyyy-MM-dd HH:mm:ss" /></td>
										<td>${track.errorMessage}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
<!-- /.row -->


</body>
</html>