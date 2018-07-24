<%@page import="com.JejuTravel.dao.BeachDAO"%>
<%@page import="com.JejuTravel.vo.BeachVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%
         
 		ArrayList<BeachVO> getList = BeachDAO.getBeach();
 			//getList를 브라우저(jsp)에서 전달을 해줘야 하는데
 			// 전달 할 수 있는 방법이
    	String path = request.getContextPath();  // jsp 형식
    %> 
    

<!DOCTYPE html>
<html>
<head>
<style>
body {font-size:15pt; color:white; font-family:MD개성체; }

div.img {
    border: 1px solid #ccc;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body>

<h2 style="text-align:center">놀러가기 좋은 해수욕장!</h2>
<h3 style="text-align:center">사진 클릭시 위치</h3>
<%for(BeachVO vo : getList) {%>
<div class="responsive">
  <div class="img">
    <a target="_blank" href="<%=vo.getAddress()%>">
      <img src="img/beach/beach<%=vo.getU_idx()%>.jpg" alt="Trolltunga Norway" width="300" height="200">
    </a>
    <div class="desc" color="white"><%=vo.getName()%></div>
  </div>
</div>
<% } %>


<div class="clearfix"></div>

<!-- <div style="padding:12px;">
  <p>가 즈 아  </p>
  <p>12345</p>
  <h4>11111111111111111111111111111</h4>
</div> -->

</body>
</html>
