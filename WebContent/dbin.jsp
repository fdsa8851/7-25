<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%
    	// 현재 컨택스트(프로젝트명) 가져오기
    	String path = request.getContextPath();  // jsp 형식
    	// ${pageContext.request.contextPath} => 같다(EL 형식)
    %>
    

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->

		<!-- Website CSS style -->
		<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel
	    
	    
	    ="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=path %>/signup/style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>db넣기</title>
	</head>
	<body>
	
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h5></h5>
					<form onsubmit="return input_check_func()" class="" method="post" action="<%=path %>/beachupdate3.JejuTravel">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="address" name="address" placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name"  id="name"  placeholder="Email을 적어주세요~"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">bHours</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="bHours" id="bHours"  placeholder="Enter your Username"/>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label" >food</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="food" id="food"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">holiday</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="holiday" id="holiday"   placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">groupf</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="groupf" id="groupf"   placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit" id="button" name="signup"  class="form-control" value="회원가입">
						</div>
						
					</form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
	</body>
</html>


<script>
//회원가입 폼 전체를 채우도록 만들기 위한 기능
 function input_check_func() {
    var id = document.getElementById('userEmail').value;
    var pw = document.getElementById('password').value;
    var username = document.getElementById('nickname').value;
    var na = document.getElementById('name').value;
    
    if(id == null || pw == null || username == null || na == null || 
     id == ""   || pw == ""   || username == "" || na == "") {
        alert("전부다 적어 주세요!");
        return false;
    } else {
    	
        return true;
    }
}      

</script>