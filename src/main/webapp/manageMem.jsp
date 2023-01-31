<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회원 관리</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="./images/favicon.ico" />

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet" />

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
</head>

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand --> 
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminPage.do">
    <div class="sidebar-brand-icon rotate-n-15"> <i class="fas fa-laugh-wink"></i> </div>
    <div class="sidebar-brand-text mx-3">산오르미 <sup>admin</sup></div>
    </a> 
    
    <!-- Divider -->
    <hr class="sidebar-divider my-0" />
    
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active"> <a class="nav-link" href="main.do"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>산오르미 페이지</span></a> </li>
    
    <!-- Divider -->
    <hr class="sidebar-divider" />
    
    <!-- Heading -->
    <div class="sidebar-heading">Management</div>
    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <h6 class="collapse-header">Login Screens:</h6>
        <a class="collapse-item" href="login.do">Login</a> <a class="collapse-item" href="register.do">Register</a> <a class="collapse-item" href="forgot.do">Forgot Password</a>
        <div class="collapse-divider"></div>
        <h6 class="collapse-header">Other Pages:</h6>
        <a class="collapse-item" href="error404.do">404 Page</a> <a class="collapse-item" href="blank.do">Blank Page</a> </div>
    </div>
    
    <!-- Nav Item - Charts -->
    <li class="nav-item"> <a class="nav-link" href="charts.do"> <i class="fas fa-fw fa-chart-area"></i> <span>통계</span></a> </li>
    
    <!-- Nav Item - Tables -->
    <li class="nav-item"> <a class="nav-link" href="manageBoards.do"> <i class="fas fa-fw fa-table"></i> <span>게시글 관리</span></a> </li>
    
    <!-- Nav Item - Tables -->
    <li class="nav-item active"> <a class="nav-link" href="manageMem.do"> <i class="fas fa-fw fa-table"></i> <span>회원 관리</span></a> </li>
    
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block" />
    
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-cent	er d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
  </ul>
  <!-- End of Sidebar --> 
  
  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column"> 
    <!-- Main Content -->
    <div id="content"> 
      <!-- Topbar -->
      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"> 
        <!-- Sidebar Toggle (Topbar) -->
        <form class="form-inline">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3"> <i class="fa fa-bars"></i> </button>
        </form>
        
        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">
          <!-- Nav Item - Search Dropdown (Visible Only XS) -->
          <li class="nav-item dropdown no-arrow d-sm-none"> <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-search fa-fw"></i> </a> 
            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
              <form class="form-inline mr-auto w-100 navbar-search">
                <div class="input-group">
                  <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                  <div class="input-group-append">
                    <button class="btn btn-success" type="button"> <i class="fas fa-search fa-sm"></i> </button>
                  </div>
                </div>
              </form>
            </div>
          </li>
          <div class="topbar-divider d-none d-sm-block"></div>
          
          <!-- Nav Item - User Information -->
          <li class="nav-item dropdown no-arrow"> <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span> <img class="img-profile rounded-circle" src="img/undraw_profile.svg" alt="사람그림"/> </a> 
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown"> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout </a> </div>
          </li>
        </ul>
      </nav>
      <!-- End of Topbar --> 
      
      <!-- Begin Page Content -->
      <div class="container-fluid"> 
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
        <p class="mb-4">회원 정보를 확인하거나 수정합니다.</p>
        
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">회원 목록</h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable_manageMem" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th class="sorting_con">아이디</th>
                    <th class="sorting_con">이메일</th>
                    <th class="sorting_con">이름</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="vo" items="${mList}">
                  <tr>
                    <td><a href="manageMemDetail.do?id=${vo.id }">${vo.id }</a></td>
                    <td>${vo.mEmail }</td>
                    <td>${vo.mName }</td>
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
    
    <!-- Footer -->
    <footer class="sticky-footer bg-white">
      <div class="container my-auto">
        <div class="copyright text-center my-auto"> <span>Control Co., Ltd. &copy; Website 2023</span> </div>
      </div>
    </footer>
    <!-- End of Footer --> 
  </div>
  <!-- End of Content Wrapper --> 
</div>
<!-- End of Page Wrapper --> 

<!-- Scroll to Top Button--> 
<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i> </a> 

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
      </div>
      <div class="modal-body"> 현재 세션을 종료할 준비가 되었으면 아래에서 "로그아웃"을 선택하십시오.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
        <a class="btn btn-primary" href="logout.do?mPw=${sessionScope.mPw}">로그아웃</a> </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript--> 
<script src="vendor/jquery/jquery.min.js"></script> 
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> 

<!-- Core plugin JavaScript--> 
<script src="vendor/jquery-easing/jquery.easing.min.js"></script> 

<!-- Custom scripts for all pages--> 
<script src="js/sb-admin-2.min.js"></script> 

<!-- Page level plugins --> 
<script src="vendor/datatables/jquery.dataTables.min.js"></script> 
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> 

<!-- Page level custom scripts --> 
<script src="js/demo/datatables-demo.js"></script>
</body>
</html>