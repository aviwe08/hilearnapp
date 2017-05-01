<%-- 
    Document   : index
    Created on : 21 Dec 2016, 5:08:43 AM
    Author     : terra
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <jsp:include page="pages/head.jsp?title=Hi-Learn" />
</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Hi-Learn</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#profile">Profile</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    <li>
                      <a href="login/login.jsp">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
    <div class="header-content">
      <div class="header-content-inner">
        <h1 id="homeHeading">Need to share files with your students?</h1>
          <hr>
        <p>Hi-Learn is a right platform for your school, and students.</p>
        <a href="#about" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
      </div>
    </div>
  </header>

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">We've got what you need!</h2>
                    <hr class="light">
                    <p class="text-center">Hi-Learn is a student-centric e-learning platform for high schools.
              The aim is to provide efficient teacher-to-student, student-to-student communication,
              and allow quick response to student study rising questions while off-class.</p>
                    <a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>
                </div>
            </div>
        </div>
    </section>

  <section id="services" class="bg-info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">At Your Service</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-book text-primary sr-icons"></i>
                        <h3>Upload Sturdy Materials</h3>
                        <p class="text-muted">Hi-Learn allows you to have a digital study material 
                        cabinet for your students.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-users text-primary sr-icons"></i>
                        <h3>Student View Study Material</h3>
                        <p class="text-muted">Student Registered to your School, in your class 
                        can view content any-where they are.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-whatsapp text-primary sr-icons"></i>
                        <h3>Instant Replies</h3>
                        <p class="text-muted">Student can post uprising questions, and teachers
                        can instant reply to them.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-heart text-primary sr-icons"></i>
                        <h3>Made with Love</h3>
                        <p class="text-muted">With Eastern Cape bad Matric Results, we love to solve
                        the problem.</p>
                    </div>
                </div>
            </div>
          <a href="#profile" 
             class="page-scroll btn btn-default btn-xl sr-button">
            Company Profile
          </a>
        </div>
    </section>
  
    <section class="bg-primary" id="profile">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Efinovation (Pty) Ltd.</h2>
                    <hr class="light">
                    <p class="text-center"></p>
                    <a href="#contact" class="page-scroll btn btn-default btn-xl sr-button">Get In Touch!</a>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to digitize your school? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>079 298 9679</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:simthembile@efinovation.com">simthembile@efinovation.com</a></p>
                </div>
            </div>
        </div>
    </section>
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="pages/footer.jsp" />
  </section>  
</body>
</html>

