<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>게시글 관리</title>
    <link rel="shortcut icon" href="./images/favicon.ico" />

    <!-- link start -->
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/board.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />

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
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- link end -->
  </head>

  <body>
    <header id="fh5co-header-section" class="sticky-banner">
      <div class="container">
        <div class="nav-header">
          <a class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
          <a id="fh5co-logo" class="cover-color" href="main.html">
            <img class="mg-logo" src="./images/logo1.png" alt="ren" />
            산오르미</a>
          <!-- START #fh5co-menu-wrap -->
          <nav id="fh5co-menu-wrap" role="navigation">
            <ul class="sf-menu" id="fh5co-primary-menu">
              <li><a href="adminPage.html">관리자 페이지</a></li>
              <li><a href="contact.html">명산 소개</a></li>
              <li><a href="QnA.html">자주 묻는 질문</a></li>
              <li><a href="tablespage.html">커뮤니티</a></li>
              <li>
                <a class="fh5co-sub-ddown sf-with-ul">로그인</a>
                <ul class="fh5co-sub-menu">
                  <li><a href="login.html">로그인</a></li>
                  <li><a href="agree.html">회원가입</a></li>
                </ul>
              </li>
              <li>
                <a class="fh5co-sub-ddown sf-with-ul">마이페이지</a>
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
    <section class="write_content pd60">
      <div class="center">
        <h2>작성</h2>
        <hr/>
        <form action="#">
          <div>
            <label for="name">작성자:</label>
            <input type="text" class="form-control" id="name" placeholder="작성자를 입력하세요" name="name" required />
          </div>
          <div class="mb-3 mt-3">
            <label for="subject">제목:</label>
            <input type="text" class="form-control" id="subject" placeholder="제목을 입력하세요" name="subject" required />
          </div>
          <div class="mb-3 mt-3">
            <label for="content">내용:</label>
            <textarea class="form-control" rows="5" id="content" placeholder="내용을 입력하세요" name="content"></textarea>
          </div>
          <button type="submit" class="btncolor">작성완료</button>
          <button class="btncolor2" href="#">목록</button>
        </form>
      </div>
    </section>

    <!-- center -->
  </body>
  <footer>
    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <p class="fh5co-social-icons">
              <a href="#"><i class="icon-twitter2"></i></a>
				<a href="#"><i class="icon-facebook2"></i></a>
				<a href="#"><i class="icon-instagram"></i></a>
				<a href="#"><i class="icon-dribbble2"></i></a>
				<a href="#"><i class="icon-youtube"></i></a>
            </p>
            <p>
              Control Co., Ltd. &copy; Website 2023<i class="icon-heart3"></i>
            </p>
          </div>
        </div>
      </div>
    </div>
  </footer>
</html>