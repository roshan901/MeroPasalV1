<%-- 
    Document   : products
    Created on : Dec 27, 2019, 11:58:29 AM
    Author     : ROSHAB
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

   <!-- sidebar was here -->
   
   
<%--<jsp:include page ="sidebar.jsp"/> --%>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

      
          <%@include file="header.jsp" %>
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">All products here</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>

          <div class="row">
              <c:forEach items="${productlist1}" var="prod">
                   <div class="col-sm-12 col-md-6 col-lg-3">
                       <div class="card">
                           <div class="card-header">
                                <span class="card-title">${prod.name}</span>
              </div>
              <div class="card-body">
                  <img class="img-thumbnail" src="${pageContext.request.contextPath}/product_image/${prod.image}" alt="${product.name}" height="200" width="230"/>
              </div>
              <div class="card-footer">
                  <ul type="none">
                      <li>${prod.brand}</li>
                      <li>${prod.price}</li>
                      <li>${prod.category.name}</li>
                      <li><a class="btn btn-info" href=""> View Detail</a></li>
                      <li><a class="btn btn-info" href="">Add to cart</a></li>
                  </ul>
              </div>
                       </div>
                   </div>
              </c:forEach>
             
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/static/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/static/js/sb-admin-2.min.js"></script>

</body>

</html>


