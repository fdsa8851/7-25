<%@page import="com.JejuTravel.vo.SportsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.JejuTravel.dao.SportsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
ArrayList<SportsVO> getListSports = SportsDAO.getExperience();
%>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>2 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/2-col-portfolio.css" rel="stylesheet">

  </head>

  <body>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">Extreme Sports
        <small>새로운 도전</small>
      </h1>

<div class="row">
      <%for(SportsVO vo : getListSports) { %>
     
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a><img class="card-img-top" src="<%=vo.getWebaddress() %>" alt="<%=vo.getName()%>"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a><%=vo.getName()%></a>
              </h4>
              <p class="card-text">  </p>
            </div>
          </div>
        </div>
        <% } %>

      </div>
      <!-- /.row -->

    <!-- /.container -->
          <!-- Pagination -->
<!--       <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#page1">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#page2">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#page3">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul> -->
    </div>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
