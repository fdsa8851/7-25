<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    %>
<html>
<head>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>너에게 필요한 제주도 모음집</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<style type="text/css">
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

video#bgvid {
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
	background: url(polina.jpg) no-repeat;
	background-size: cover;
}

video {
	position: fixed;
	top: 50%;
	left: 50%;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
	background-size: cover;
	-webkit-transition: 1s opacity;
	transition: 1s opacity
}

div {
	font-family: Agenda-Light, Agenda\ Light, Agenda, Arial\ Narrow,
		sans-serif;
	font-weight: 100;
	background: rgba(0, 0, 0, .3);
	color: #fff;
	padding: 2rem;
	width: 33%;
	margin: 2rem;
	float: right;
	font-size: 1.2rem
}

h1 {
	font-size: 3rem;
	text-transform: uppercase;
	margin-top: 0;
	letter-spacing: .3rem
}

a {
	display: inline-block;
	color: #fff;
	text-decoration: none;
	background: rgba(0, 0, 0, .5);
	padding: .5rem;
	-webkit-transition: .6s background;
	transition: .6s background
}

a:hover {
	background: rgba(0, 0, 0, .9)
}

#myVideo {
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
}

/* Add some content at the bottom of the video/page */
.content {
	position: fixed;
	bottom: 0;
	background: rgba(0, 0, 0, 0.5);
	color: #f1f1f1;
	width: 100%;
	padding: 20px;
}
#botton1 { left:0; right:0; margin-left:auto; margin-right:auto; 
		  top: 0; bottom:0; margin-top:auto; margin-bottom:auto; }
#botton2{
position: absolute;
margin:0;
right:40px;
}

/* Style the button used to pause/play the video */
#myBtn {
	width: 200px;
	font-size: 18px;
	padding: 10px;
	border: none;
	background: #000;
	color: #fff;
	cursor: pointer;
}

#myBtn:hover {
	background: #ddd;
	color: black;
}
</style>

<body>
 	<embed src="<%=path%>/movie/mp3.mp3" loop="true" autostart="true" hidden="true" width="0" height="0"></embed>
	<video id="myVideo" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" class="mySlides">
		<source src="movie/travelmovie.mp4" type="video/mp4">
	</video>
	<video id="myVideo" preload="auto" autoplay="true" loop="loop" volume="0" class="mySlides">
		<source src="movie/movie.mp4" type="video/mp4">
	</video>
	</div> 
	<div class="content">
		<h1></h1>
		<p></p>
		<a onclick="plusDivs(1)"><</a>
		<%-- <% for(int i=0 ; i<15 ;i++){ %>
		 &nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;
		 <%} %>  --%>
	
		<a id="botton2"onclick="plusDivs(-1)">></a>
		
		<!-- <button class="prev" type="button" onclick="plusDivs(1)"><p><</p></button>
		<button id="botton2" class="next" type="button" onclick="plusDivs(-1)"><p>></p></button> -->
	</div>
	
	<div id="polina">

		<h1>제주도로 떠나는 여행</h1>
		<p>간단한 TIP 이용
		<p />
		<a href="https://www.visitjeju.net/kr/#">제주도의 모든정보 </a> <a
			href="<%=path %>/start.jsp">나만의 정보 </a>
		<p>
			당신의 여름은 어떻게 보내실 생각인가요 ?<br> 우리나라에서 가장 아름다운 섬 제주도로 한번 떠나보시는건 어떨까요?<br> 당신의 휴가를 즐겁게 보내기엔 충분할것 같습니다!
		</p>
	</div>
	
	<div class="polina">
	<h1>시원한 바다 어떠세요?</h1>
	<p>
	다른곳과 다른 제주도의 특별한 바다를 한번 둘러보세요 <br>
	<a href="<%=path %>/start.jsp">정말 시원한 물놀이</a>
	<a href="<%=path %>/start.jsp">짜릿한 경험을 느기고 싶다면</a>
	</p>
	</div>
	<div id="polina">
		<h1>필요한 정보 모음 사이트</h1>
		<p>혹시나 필요 할 수도 있는 사이트 모음!</p>
		<a href="http://web.kma.go.kr/aboutkma/intro/jeju/one_click/one_click4.jsp">기상청 날씨</a>
		<a href="http://bus.jeju.go.kr/search/line">제주 버스 노선</a>
		<a href="https://oshare.kr/">제주도 물품 대여 서비스<br></a>
		<a href="http://www.e-gen.or.kr/egen/search_hospital.do?searchType=general&lat=&lon=&sidoCode=50&gugunCode=110&dongCode=&loca=29&emogdstr=2902&addrhosp=&trtPrtCod=&day=&emogdesc=">병원찾기 사이트</a>
		<h2></h2>
	</div>


<script>
 var slideIndex = 1;
  showDivs(slideIndex);
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
 </script>

</body>

</html>