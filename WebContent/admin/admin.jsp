
<%@page import="java.util.ArrayList"%>
<%@page import="com.JejuTravel.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<UserVO> getList = (ArrayList<UserVO>)request.getAttribute("userlist");  
	System.out.println(getList);
	//ArrayList<UserVO> 에 저장되어 있는 값들을 들고온다.

       %>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>회원정보 변경 Table</h2>
  <p>일단 연습</p>                   
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>u_idx </th>
        <th>name</th>
        <th>email</th>
        <th>username</th>
        <th>pw</th>
        <th>grade</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    </tr>
<%for (UserVO vo : getList) { %> 
      <tr> 
        <td><%=vo.getU_idx()%>
        <input type="text" id="u_idx" value="<%=vo.getU_idx()%>">
        </td>
        <td><%=vo.getName()%></td>
        <td><%=vo.getEmail()%></td>
        <td><%=vo.getUsername()%></td>
        <td><%=vo.getPw()%></td>
        <td><%=vo.getGrade()%>
        
        <select name="selectBox" id="selectBox" style ="height :30px; width:40px;">
        <option value ="1">1</option>
        <option value ="2">2</option>
        <option value ="3">3</option>
        </select>
        <button type="button" class="btn btn-success" onclick="updateInfo()">수정</button>
        <button type="button" class="btn btn-danger" onclick="deleteInfo()">삭제</button>
		</td>
      </tr>
      <%} %>
  
    </tbody>
  </table>
</div>
<script>
function updateInfo() {
	var U_idx = $("#u_idx").val();
	var grade = document.getElementById("selectBox");
	var path = '/' + location.pathname.split('/')[1];
	console.log(grade);
	console.log(U_idx);
	return ;
    $.ajax({
        type: 'POST',
        url: path + "/updateinfo.JejuTravel",
        data: {
        	"u_idx" : U_idx,
            "grade" : grade
        },
        success: function(data){
        	console.log(data);
            if($.trim(data) == 'OK'){
            	console.log('수정');
            	alert(grade + "수정이 완료 되었습니다.");
            	location.reload();
            } else { 
            	console.log('서버 에러');
            }
        }, 
    });    //end ajax 
}

function deleteInfo() {
	var U_idx = $("#u_idx").val();
	var path = '/' + location.pathname.split('/')[1];
	alert(U_idx + "   정보를 삭제 하시겠습니까? ");
	console.log("이거나오냐?");
	// ajax 사용
    $.ajax({
        type: 'POST',
        url: path + '/delinfo.JejuTravel',
        data: {
            "u_idx" : U_idx,
        },
        success: function(data){
        	console.log(data);
            if($.trim(data) == 'OK'){
            	console.log('삭제완료');
            	alert("삭제 되었습니다.");
            	location.reload();   // 페이지 새로 고침
            } else { 
            	console.log('서버 에러');
            }
        }, 
    });    //end ajax 
}
</script>
</body>
</html>