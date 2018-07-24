<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%
    	// 현재 컨택스트(프로젝트명) 가져오기
    	String path = request.getContextPath();  // jsp 형식
    %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>로그인 페이지</title>

<!-- Bootstrap CSS -->
<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="<%=path %>/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="<%=path %>/css/elegant-icons-style.css" rel="stylesheet" />
<link href="<%=path %>/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="<%=path %>/css/style.css" rel="stylesheet">
<link href="<%=path %>/css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

<!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>
<body class="login-img3-body">
	<div class="container">
		<form class="login-form" action = "<%=path%>/login_proc.JejuTravel" method = 'post'>
			<div class="login-wrap">
				<p class="login-img">
					<!-- <i class="icon_lock_alt"></i> -->
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" name="email" id="email1" class="form-control"
						placeholder="Username" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" name="password" id="password1" class="form-control" placeholder="Password">
				</div>
				<label class="checkbox"> <input type="checkbox"
					value="remember-me"> 기억하기! <span class="pull-right">
						<a href="#"> 비밀번호 찾는거 미구현</a>
				</span>
				</label>
					<button class="btn signupbtn btn-lg btn-block" onclick="sendData()">로그인</button><br>
					
				</form>
				<form action = "<%=path%>/joinus.JejuTravel">
					<button class="btn btn-info btn-lg btn-block" type="submit">회원가입</button><br>
				</form>
				</div>
		

		<div class="text-right">
			<div class="credits">
				디자인은 <a href="https:///">김동현에게 문의 바람</a>
			</div>
		</div>

	<script>
    function sendData () {
    	var path = '/' + location.pathname.split('/')[1];
    	var email = $("#email").val();
        var password = $("#password").val();
        var postUrl = path + "/login_proc.JejuTravel";
      	console.log(email);
      	console.log(password);
      	console.log(postUrl);
        return ;
        $.post(postUrl,
        		{
        	email: email,
        	password: password
        		},
        		function(data, status){
        			
        			console.log("status" + data);
        			console.log("data" + data);
        			if(status.trim() == "success" && data.trim() == "OK"){
        					location.href = "<%=path %>/login_proc.JejuTravel";
        			}else{
        					alert("ID , PASSWORD를 확인해 주세요.");
        				}
        			
        			
        			//alert("data: " + data + "\nStatus : "+status);
        		});
    	
    }
</script>
</body>
</html>



