<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

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
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tin t???c<h6>
                            
                        </div>
                        <a href="${pageContext.request.contextPath}/quan-ly/news/add"><button type="button" class="btn btn-success">Th??m tin t???c</button></a>                        
                        <div class="card-body">                        
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>STT</th>
                                            <th>T??n</th>
                                            <th>H??nh ???nh</th>
                                            <th>Tr???ng th??i</th>
                                            <th>C???p Nh???t</th>
                                            <th>X??a</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        	<th>STT</th>
                                            <th>T??n</th>
                                            <th>H??nh ???nh</th>
                                            <th>Tr???ng th??i</th>
                                            <th>C???p Nh???t</th>
                                            <th>X??a</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="news" items= "${allnew}">
                                        <tr>
                                        	<td>${news.getId() }</td>
                                            <td>${news.getTitle() }</td>
                                            <td><img src="${pageContext.request.contextPath}/resources/${news.getImage() }" witdth ="70" height="70" alt="${news.getImage() }"></td>
                                            <c:if test ="${news.getStatus() == true}">
                                            <td><img src="${pageContext.request.contextPath}/resources/images/checked.png" witdth ="50" height="50" alt="C??"></td>
                                            </c:if>
                                            <c:if test ="${news.getStatus() == false}">
                                            <td><img src="${pageContext.request.contextPath}/resources/images/unchecked.png" witdth ="50" height="50" alt="Kh??ng"></td>
                                            </c:if>
                                            <td><a href="${pageContext.request.contextPath}/quan-ly/news/edit/${news.getId() }"><img src="${pageContext.request.contextPath}/resources/imgad/update.png" witdth ="50" height="50" alt="C???p nh???t"></a></td>
                                            <td><a href="${pageContext.request.contextPath}/quan-ly/news/delete/${news.getId() }"><img src="${pageContext.request.contextPath}/resources/imgad/delete.png" witdth ="50" height="50" alt="X??a"></a></td>
                                        </tr>
                                     </c:forEach>                                      
                                     </tbody>
                                </table>
                            </div>
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

</html>