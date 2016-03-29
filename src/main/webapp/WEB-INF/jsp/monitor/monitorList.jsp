<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h4 class="page-header">一次展开监控</h4>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th>前置库节点</th>
									<th>揽收</th>
									<th>容器</th>
									<th>单据</th>
									<th>派件</th>
									<th>签收</th>
									<th>到发车</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${monitorMainList}" var="monitorMain">
									<tr class="odd gradeX">
										<td>${monitorMain.id}</td>
										<td>${monitorMain.taking}</td>
										<td>${monitorMain.container}</td>
										<td>${monitorMain.bill}</td>
										<td>${monitorMain.handon}</td>
										<td>${monitorMain.signature}</td>
										<td>${monitorMain.truck}</td>
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