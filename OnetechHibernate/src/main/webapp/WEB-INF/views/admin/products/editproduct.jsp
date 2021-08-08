<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>SB Admin 2 - Dashboard</title>
<link href="${pageContext.request.contextPath}/resources/vendorad/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/responsive.css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/cssad/sb-admin-2.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/vendorad/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
				<jsp:include page = "../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
			${message }
				<h2 class="text-center">Thêm sản phẩm mới</h2>
			</div>
			<div class="panel-body">
			<form:form action="${pageContext.request.contextPath}/quan-ly/product/edit" modelAttribute="product" method="POST">  
				<div class="form-group">
				  <label for="usr">Tên sản phẩm:</label>
				  <form:input required="true" class="form-control" type="text" path="title"/>
				</div>
				<div class="form-group">
				  <label for="usr">Chi tiết:</label>
				  <form:textarea required="true" type="text" class="form-control" path="description" id="editor1"/>
				</div>
				<div class="form-group">
				  <form:input required="true" type="hidden" class="form-control" path="id"/>
				</div>
				<div class="form-group">
				  <label for="birthday">Giá:</label>
				  <form:input required="true" type="number" class="form-control" path="price"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Giá khuyến mãi:</label>
				  <form:input required="true" type="number" class="form-control" path="priceNet"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Số lượng:</label>
				  <form:input type="number" class="form-control" path="available"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Giảm giá:</label>
				  <form:input required="true" type="number" class="form-control" path="discount"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Hình ảnh:</label>
				  <form:input required="true" type="text" class="form-control" path="image"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Loại sản phẩm:</label>
				  <form:input required="true" type="number" class="form-control" path="id_category"/>
				</div>
				<button class="btn btn-success">Lưu</button>
				</form:form>
			</div>
		</div>
	</div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            
<jsp:include page = "../footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/resources/vendorad/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendorad/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendorad/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/jsad/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendorad/chart.js/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/jsad/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jsad/demo/chart-pie-demo.js"></script>
    
    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendorad/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendorad/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/jsad/demo/datatables-demo.js"></script>
 <script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ckeditor/styles.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ckeditor/config.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ckeditor/build-config.js"></script>
     <script>
    CKEDITOR.replace('editor1', {
    	filebrowserBrowseUrl : '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
		filebrowserImageUploadUrl : '${pageContext.request.contextPath}/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
		filebrowserFlashUploadUrl : '${pageContext.request.contextPath}/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
    });
  </script>
  <script type="text/javascript">

function BrowseServer()
{
	// You can use the "CKFinder" class to render CKFinder in a page:
	var finder = new CKFinder();
	finder.basePath = '../';	// The path for the installation of CKFinder (default = "/ckfinder/").
	finder.selectActionFunction = SetFileField;
	finder.popup();

	// It can also be done in a single line, calling the "static"
	// popup( basePath, width, height, selectFunction ) function:
	// CKFinder.popup( '../', null, null, SetFileField ) ;
	//
	// The "popup" function can also accept an object as the only argument.
	// CKFinder.popup( { basePath : '../', selectActionFunction : SetFileField } ) ;
}

// This is a sample function which is called when a file is selected in CKFinder.
function SetFileField( fileUrl )
{
	document.getElementById( 'xFilePath' ).value = fileUrl;
}

	</script>
    <script>
	initSample();
	
	</script>

</html>