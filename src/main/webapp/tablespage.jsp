<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자유게시판</title>

<!-- link start --> 
<!-- Custom fonts for this template -->
<link
      href="vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
<link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet" />

<!-- Custom styles for this page -->
<link
      href="vendor/datatables/dataTables.bootstrap4.min.css"
      rel="stylesheet"
    />
<link rel="stylesheet" href="css/board.css" />
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="./images/favicon.ico" />
<link
      href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,300"
      rel="stylesheet"
      type="text/css"
    />

<!-- Custom fonts for this template -->
<link
      href="vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
<link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css" />
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css" />
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css" />
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css" />
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css" />
<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css" />
<!-- CS Select -->
<link rel="stylesheet" href="css/cs-select.css" />
<link rel="stylesheet" href="css/cs-skin-border.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/sub_layout.css" />
<link rel="stylesheet" href="css/styleguide.css" />
<link rel="stylesheet" href="css/community.css" />
<link rel="stylesheet" href="css/join.css" />
<link rel="stylesheet" href="css/reset.css" />
<!--  모두의 낚시 --> 

<!-- Modernizr JS --> 
<script src="js/modernizr-2.6.2.min.js"></script> 
<script src="js/nextpage.js"></script> 
<!-- FOR IE9 below --> 
<!--[if lt IE 9]>
      <script src="js/respond.min.js"></script>
    <![endif]--> 
<!-- link end -->
</head>

<body id="page-top">
<header id="fh5co-header-section" class="sticky-banner">
  <div class="container">
    <div class="nav-header"> <a class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a> <a id="fh5co-logo" class="cover-color" href="index.html"> <img class="mg-logo" src="./images/logo1.png" alt="ren" /> 산오르미</a
          > 
      <!-- START #fh5co-menu-wrap -->
      <nav id="fh5co-menu-wrap" role="navigation">
        <ul class="sf-menu" id="fh5co-primary-menu">
          <li><a href="indexAdmin.html">관리자 페이지</a></li>
          <li><a href="contact.html">명산 소개</a></li>
          <li><a href="QnA.html">자주 묻는 질문</a></li>
          <li><a href="tablespage.html">커뮤니티</a></li>
          <li> <a class="fh5co-sub-ddown sf-with-ul">로그인</a>
            <ul class="fh5co-sub-menu">
              <li><a href="login.html">로그인</a></li>
              <li><a href="agree.html">회원가입</a></li>
            </ul>
          </li>
          <li> <a class="fh5co-sub-ddown sf-with-ul">마이페이지</a>
            <ul class="fh5co-sub-menu">
              <li><a href="mypage.html">작성글 확인</a></li>
              <li><a href="update.html">회원정보 수정</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</header>

<!-- Page Wrapper -->
<div id="wrapper"> 
  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column"> 
    <!-- Main Content -->
    <div id="content"> 
      <!-- End of Topbar -->
      
      <div class="freeboard">
        <div class="content">
          <div class="top">
            <div class="left_top">
              <div class="left_top_01"></div>
            </div>
          </div>
        </div>
      </div>
      <div style="padding: 0px 200px 50px">
        <div class="bottom">
          <ul class="list_wrap">
            <div class="left_top_02">
              <h5 class="sub_eng mt">PREE BOARD</h5>
              <h3 class="sub_title">자유게시판</h3>
            </div>
            <!-- DataTales Example -->
            <div>
              <div class="card-body">
                <div class="table-responsive">
                  <table
                        class="table"
                        id="dataTable"
                        width="100%"
                        cellspacing="0"
                        style="
                          font-family: Nunito, -apple-system, BlinkMacSystemFont,
                            'Segoe UI', Roboto, 'Helvetica Neue', Arial,
                            sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji',
                            'Segoe UI Symbol', 'Noto Color Emoji';
                          font-weight: 400;
                          line-height: 1.5;
                        "
                      >
                    <thead>
                      <tr>
                        <th class="sorting_con">순번</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th class="sorting_con">조회수</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Aager Nixon</td>
                        <td>System Architect</td>
                        <td>9 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Accountant</td>
                        <td>leejaehwan</td>
                        <td>28 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Junior Technical Author</td>
                        <td>Kimhanla</td>
                        <td>44 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Senior Javascript Developer</td>
                        <td>Ostin</td>
                        <td>76 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>Accountant</td>
                        <td>Ojun</td>
                        <td>112 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>Integration Specialist</td>
                        <td>Sinsta</td>
                        <td>132 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>7</td>
                        <td>Sales Assistant</td>
                        <td>Kimjanjun</td>
                        <td>32 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td>Integration Specialist</td>
                        <td>Welston</td>
                        <td>10 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>9</td>
                        <td>Javascript Developer</td>
                        <td>Tony</td>
                        <td>22 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>10</td>
                        <td>Software Engineer</td>
                        <td>Austin</td>
                        <td>88 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>11</td>
                        <td>Office Manager</td>
                        <td>Jane</td>
                        <td>10 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>12</td>
                        <td>Support Lead</td>
                        <td>Kine</td>
                        <td>91 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>13</td>
                        <td>Regional Director</td>
                        <td>Leedongsook</td>
                        <td>32 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>14</td>
                        <td>Senior Marketing Designer</td>
                        <td>Handonggyeung</td>
                        <td>19 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>15</td>
                        <td>Regional Director</td>
                        <td>kangdongwon</td>
                        <td>42 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>16</td>
                        <td>Marketing Designer</td>
                        <td>Wendy</td>
                        <td>103 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>17</td>
                        <td>Chief Financial Officer (CFO)</td>
                        <td>azack</td>
                        <td>94 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>18</td>
                        <td>Systems Administrator</td>
                        <td>Administrator</td>
                        <td>62 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>19</td>
                        <td>Software Engineer</td>
                        <td>zoncina</td>
                        <td>34 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>20</td>
                        <td>Personnel Lead</td>
                        <td>Personnel</td>
                        <td>2 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>21</td>
                        <td>Development Lead</td>
                        <td>anjelina</td>
                        <td>33 <i class="far fa-eye"></i></td>
                      </tr>
                      <tr>
                        <td>22</td>
                        <td>Chief Marketing Officer (CMO)</td>
                        <td>Chief</td>
                        <td>32 <i class="far fa-eye"></i></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </ul>
        </div>
        <!-- /.container-fluid -->
        <div class="button_wrap clearfix"> 
          <!--<button type="button" class="delete_btn">삭제하기</button>--> 
          <!-- <a href="#" class="list_btn">목록보기</a> --> 
          <a href="writingpage.html" class="write_btn m_write_btn"
                >작성하기</a
              > 
          <!-- <a href="#" class="modify_btn">수정하기</a> --> 
        </div>
      </div>
    </div>
    
    <!-- Footer -->
    <footer>
      <div id="footer">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
              <p class="fh5co-social-icons"> <span><i class="icon-twitter2"></i></span> <span><i class="icon-facebook2"></i></span> <span><i class="icon-instagram"></i></span> <span><i class="icon-dribbble2"></i></span> <span><i class="icon-youtube"></i></span> </p>
              <p> Control Co., Ltd. &copy; Website 2023 <i class="icon-heart3"></i> </p>
            </div>
          </div>
        </div>
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
<div
      class="modal fade"
      id="logoutModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button
              class="close"
              type="button"
              data-dismiss="modal"
              aria-label="Close"
            > <span aria-hidden="true">×</span> </button>
      </div>
      <div class="modal-body"> Select "Logout" below if you are ready to end your current session. </div>
      <div class="modal-footer">
        <button
              class="btn btn-secondary"
              type="button"
              data-dismiss="modal"
            > Cancel </button>
        <a class="btn btn-primary" href="login.html">Logout</a> </div>
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