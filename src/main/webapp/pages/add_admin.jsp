<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
    Author     : TerraByte
--%>

<%@page import="com.models.SchoolAdmin"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.models.Clas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.models.Teacher"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Subject" />

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New School&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->
    
 <section class="container">
    <div class="row">
  <%
    DBAccess db = new DBAccess();
    ArrayList<SchoolAdmin> admins = (ArrayList<SchoolAdmin>)db.getAllAdmins();
    
    if(!admins.isEmpty()) {
      for(SchoolAdmin ad: admins) {
  %>
  	<!-- Student Subject -->
      <!--<a href="teacher_subject.jsp?class=">-->
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="glyphicon glyphicon-user fa-4x text-primary sr-icons"></i>
              <h3><%= ad.getSchool() %></h3>
              <h5 class="text-info"><%= ad.getName() %></h5>
          </div>
        </div>
      <!--</a>-->
  <%
      }
    } else {
      session.setAttribute("subject", "No Schools");
  %>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="glyphicon glyphicon-blackboard fa-4x text-primary sr-icons"></i>
              <h3>No Schools</h3>
              <p class="text-faded">Please contact a school admin to add them on the platform.</p>
          </div>
        </div>
    </div>
  
  <%
    }
   %>
 </section>
<section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <h4 class="text-center text-primary">Add School:</h4>
            <h6 class="text-info"><%= (HashMap)request.getAttribute("errors") != null ? (HashMap)request.getAttribute("errors") : " Successfully Added Schoool Admin "  %></h6>
        <form method="POST" action="../AddAdmin" >
          <input type="hidden" name="id" value="<%= session.getAttribute("id") %>" />
          <input type='text' class="form-control input-sm chat-input"
                 name="admin_num"	placeholder='Admin Number'/><br/>
          <input type='text' class="form-control input-sm chat-input"
                 name="name" placeholder='Name'/><br/> 
          <input type='text' class="form-control input-sm chat-input"
                 name="lastname" placeholder='Last Name'/><br/> 
          <input type='text' class="form-control input-sm chat-input"
                 name="username" placeholder='Username'/><br/> 
          <input type='text' class="form-control input-sm chat-input"
                 name="password" placeholder='Password'/><br/> 
          <input type='text' class="form-control input-sm chat-input"
                 name="school" placeholder='School'/><br/> 
          <input class="btn btn-primary" type="submit" name="submit" value="Add" />
        </form>
      </div>
      </div>
    </div>
</section>
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
  </body>
</html>
