<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>frontdbSearch</title>
    <!-- Bootstrap Core CSS -->
    <link href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="page-header-fixed">
	<%@include file="/WEB-INF/jsp/commons/headAndMenu.jsp" %>


	<%@include file="indexDetail.jsp" %>
	
	 <!-- jQuery -->
    <script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
		
		/* function search(){
			alert("taking:"+document.getElementById("taking").value)
			alert("container:"+document.getElementById("container").value)
			alert("container:"+document.getElementById("container"))
		} */
		$(function(){
			$("#search").click(function(){
				/* alert("defa:"+document.getElementById("defa").checked)
				alert("taking:"+document.getElementById("taking").checked)
				alert("container:"+document.getElementById("container").checked)
				alert("handon:"+document.getElementById("handon").checked)
				alert("bill:"+document.getElementById("bill").checked)
				alert("truck:"+document.getElementById("truck").checked)
				alert("signature:"+document.getElementById("signature").checked) */
				
				/* alert($('input:radio:checked')); */
				/* var gvg=$('input:radio:checked').val();
		           if(gvg==null){
		                alert("什么也没选中!");
		                return false;
		            }
		            else{
		                alert(this.nextSibling.nodeValue);
		            } */
		            
				$('input:radio:checked').val();
		            $('input:radio')[0].checked = true
				
			});
		})
		
		/* alert(document.getElementById("taking").value) */
		
	</script>
</body>
</html>