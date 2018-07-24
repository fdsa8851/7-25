<%-- <%@page import="com.JejuTravel.dao.FoodDAO"%> --%>

<%@page import="com.JejuTravel.dao.SportsDAO"%>
<%@page import="com.JejuTravel.vo.SportsVO"%>
<%@page import="com.JejuTravel.vo.HotelVO"%>
<%@page import="com.JejuTravel.dao.HotelDAO"%>
<%@page import="com.JejuTravel.dao.CafeDAO"%>
<%@page import="com.JejuTravel.vo.CafeVO"%>
<%@page import="com.JejuTravel.dao.FoodDAO"%>
<%@page import="com.JejuTravel.vo.FoodVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String email = (String)session.getAttribute("email");
	ArrayList<FoodVO> getList = FoodDAO.getFood();
	ArrayList<CafeVO> getListCafe = CafeDAO.getCafe();
	ArrayList<HotelVO> getListHotelFood = HotelDAO.getHotelFood();
	ArrayList<SportsVO> getListSports = SportsDAO.getExperience();
	String path = request.getContextPath();
%>
<!DOCTYPE html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
#video { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}
</style>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Always force latest IE rendering engine -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Meta Keyword -->
        <meta name="keywords" content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <!-- meta character set -->
        <meta charset="utf-8">

        <!-- Site Title -->
        <title>제주도 여행 준비</title>
        
        <!--
        Google Fonts
        ============================================= -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css">
		
        <!--
        CSSdm
        ============================================= -->
        <!-- Fontawesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- Animate -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">
        <!-- Main Responsive -->
        <link rel="stylesheet" href="css/responsive.css">
		
		
		<!-- Modernizer Script for old Browsers -->
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
		
    </head>
	
    <body>

        <!--
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top">
            <div class="container">

                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->

                    <!-- logo -->
                    <h1 class="navbar-brand">
                        <a href="#body">
                            <img src="img/jejulogo.png" alt="Jeju Travel">
                        </a>
                    </h1>
                    <!-- /logo -->

                    </div>

                    <!-- main nav -->
                    <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                        <ul id="nav" class="nav navbar-nav">
                            <li class="current"><a href="#home">Home</a></li>
                            <li><a href="#service">Service</a></li>
                            <li><a href="#portfolio">중요한 음식</a></li>
                            <li><a href="#about">해수욕장~</a></li>
                            <li><a href="#subscribe">맛집 지도</a></li>
                            <% if(email == null) { %>
					<li><a href="<%=path%>/login/login.jsp">login</a></li>
					<% } else { %>
					<li><a href="<%=path %>/logout.JejuTravel">Logout</a></li>
					<% }  %>
                        </ul>
                    </nav>
                    <!-- /main nav -->
                </div>

            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->


        <!--
        Home Slider
        ==================================== -->
        <section id="home">     
            <div id="home-carousel" class="carousel slide" data-interval="false">
                <ol class="carousel-indicators">
                    <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#home-carousel" data-slide-to="1"></li>
                    <li data-target="#home-carousel" data-slide-to="2"></li>
                </ol>
                <!--/.carousel-indicators-->

                <div class="carousel-inner">

                    <div class="item active" style="background-image: url('img/beach/hawng.jpg')" >
                     <div class="carousel-caption">
                    <div class="animated bounceInRight">
                                <h2>황우지 해안<br>숨은 명소</h2>
                                <p> 한번 가보면 계속 가보고 싶을것이다.
                                	어떤 해수욕장 보다 가장 좋았다.
                                	다른 해수욕장과 다른점은 천연 풀장이라는 점이다. <br>
                                	다이빙은 물론이고 풍경도 정말 아름다워서 가장 추천하는곳이다.
                                </p>
                            </div> 
                        </div>
                    </div>              

                    <div class="item" style="background-image: url('img/beach/non.JPG') ">
                        <div class="carousel-caption">
                            <div class="animated bounceInDown">
                                <h2>논짓물 해수욕장<br></h2>
                                <p>여기도 잘만들어진 풀장이다. 어린애들과 놀기에는 안성맞춤인 장소 <br>
	                                                              놀다가 지치면 잠깐의 휴식으로 동쪽으로 조금만 가면 깻깍주상절리대가 보이며 그 경치는 매우 아름답다. <br>
                           		주변을 돌다 보면 색달동 다람쥐 굴도 있기에 논짓물 해수욕장은 어린애들이 없더라도 가볼 만한 장소이다.
                                 </p>
                            </div>
                        </div>
                    </div>

                    <div class="item" style="background-image: url('img/beach/waterfall.jpg')">                 
                         <div class="carousel-caption">
                            <div class="animated bounceInUp">
                                <h2>돈내코 계곡 원앙폭포, 소정방폭포<br></h2>
                                <p>자연경관 하나는 정말 끝내준다. 물도 차가워서 쉬원하게 하루를 보낼 수 있다.<br>
                                	돈내코 계곡 맞은편 캠핑장을 무료로 사용할 수 있다. 여름철 무더위 피하기 딱 좋다! <br>
                                	 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.carousel-inner-->
                <nav id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a class="sl-prev hidden-xs" href="#home-carousel" data-slide="prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a class="sl-next" href="#home-carousel" data-slide="next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </nav>

            </div>
        </section>
        <!--
        End #home Slider
        ========================== -->

        
        <!--
        #service
        ========================== -->
        <section id="service">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center wow fadeInDown">
                            <h2>제주도에 관한 주제</h2>    
                            <p>최고의 휴가를 보내기 위해 사투를 버립니다.!</p>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-6 col-sm-12 wow fadeInLeft">
                        <div class="media">
                            <a href="#home" class="pull-left">
                                <img src="img/icons/monitor.png" class="media-object" alt="Monitor">
                            </a>
                            <div class="media-body">
                                <h3>제주도 최고의 물놀이 지역 선정</h3>
                                <p>물놀이 하는곳중 최고로 좋고 경치가 좋고 놀기 좋은 곳을 선정해 보았습니다.</p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6 col-sm-12 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="media">
                            <a href="#about" class="pull-left">
                                <img src="img/icons/cog.png" alt="Cog">
                            </a>
                            <div class="media-body">
                                <h3>17개의 해수욕장</h3>
                                <p>해수욕장 하나하나가 그림같은 곳입니다.<br> 직접가서 자신만의그림을 그리고 마음에 세겨보세요</p>
                            </div>
                        </div>
                        
                    </div>

                    <div class="col-md-6 col-sm-12 wow fadeInLeft">
                        <div class="media">
                            <a href="#portfolio" class="pull-left">
                                <img src="img/icons/ruler.png" alt="Ruler">
                            </a>
                            <div class="media-body">
                                <h3>2018 제주도 최고의 맛집</h3>
                                <p>맛집 선정!</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="media">
                            <a href="#about-us" class="pull-left">
                                <img src="img/icons/camera.png" alt="Camera">
                            </a>
                            <div class="media-body">
                                <h3>익스트림 스포츠</h3>
                                <p>휴가에서 빠질수 없는 익스트림 스포츠 기대가 됩니다.</p>
                            </div>
                        </div>
                    </div>

                </div> <!-- end .row -->
            </div> <!-- end .container -->
        </section>
        <!--
        End #service
        ========================== -->


        <!--
        #Portfolio
        ========================== -->
        
        <section id="portfolio">

            <div class="section-title text-center wow fadeInDown">
                <h2>2018 고메위크 선정 맛집</h2>    
                <p>2018년 제주도 최고의 맛집을 만나보세요</p>
            </div>
            
            <nav class="project-filter clearfix text-center wow fadeInLeft"  data-wow-delay="0.5s">
                <ul class="list-inline">
                    <li><a href="javascript:;" class="filter" data-filter="all">전체</a></li>
                    <li><a href="javascript:;" class="filter" data-filter=".app">맛집</a></li>
                    <li><a href="javascript:;" class="filter" data-filter=".photography">CAFE&BAR</a></li>
                    <li><a href="javascript:;" class="filter" data-filter=".web">호텔맛집!</a></li>
            <!--         <li><a href="javascript:;" class="filter" data-filter=".print">Print</a></li> -->
                </ul>
            </nav>

            <div id="projects" class="clearfix">
				 <% for(FoodVO vo : getList) { %>
				    <figure class="mix portfolio-item app">
                    <img class="img-responsive" src="<%=path%>/img/jejuFood/<%=vo.getU_idx()%>.jpg" alt="Portfolio Item">
                    <a href="<%=path%>/img/jejuFood/<%=vo.getU_idx()%>.jpg" title="<%=vo.getName()%>,휴무 : <%=vo.getHoliday()%> 주소: <%=vo.getAddress()%>" rel="portfolio" class="fancybox"><span class="plus"></span></a>
                    <figcaption class="mask">
                        <h3><%=vo.getName()%></h3>
                        <span><%=vo.getFood()%></span>
                    </figcaption>
                </figure> 
                <% } %>

                
               <%--  <%for(FoodVO vo : getList) { %> --%> 
               <% for(CafeVO vo : getListCafe) { %>
                <figure class="mix portfolio-item photography">
                    <img class="img-responsive" src="<%=path%>/img/jejuCafe_Bar/cafe&bar<%=vo.getU_idx()%>.jpg" alt="Portfolio Item">
                    <a href="<%=path%>/img/jejuCafe_Bar/cafe&bar<%=vo.getU_idx()%>.jpg" title="<%=vo.getName()%>, 휴무 : <%=vo.getHoliday()%> 주소: <%=vo.getAddress()%>" rel="portfolio" class="fancybox"><span class="plus"></span></a>
                    <figcaption class="mask">
                        <h3><%=vo.getName()%></h3>
                        <span><%=vo.getFood()%></span>
                    </figcaption>
                </figure>
                <% } %> 
                <% for(HotelVO vo : getListHotelFood) { %>
                <figure class="mix portfolio-item web app">
                    <img class="img-responsive" src="<%=path%>/img/hotel/hotel<%=vo.getU_idx()%>.jpg" alt="Portfolio Item">
                    <a href="<%=path%>/img/hotel/hotel<%=vo.getU_idx()%>.jpg" title="<%=vo.getName()%>, 휴무 : <%=vo.getHoliday()%> 주소: <%=vo.getAddress()%>" rel="portfolio" class="fancybox"><span class="plus"></span></a>
                    <figcaption class="mask">
                        <h3><%=vo.getName()%></h3>
                        <span><%=vo.getFood()%></span>
                    </figcaption>
                </figure>
                
				<% } %> 
               <%--  <figure class="mix portfolio-item print">
                    <img class="img-responsive" src="<%=path%>/img/jejuFood/jeju4.jpg" alt="Portfolio Item">
                    <a href="img/portfolio/portfolio-2.jpg" title="Title Seven" rel="portfolio" class="fancybox"><span class="plus"></span></a>
                    <figcaption class="mask">
                        <h3>맛집</h3>
                        <span>Photography</span>
                    </figcaption>
                </figure>
            </div> --%> <!-- end #projects -->

        </section>
        <!--
        End #Portfolio
        ========================== -->

        <!--
        #about
        ========================== -->
        <section id="about">
            <div class="container">
                <div class="row">

                    <div class="section-title text-center wow fadeInUp">
                        <h2>제주도의 해수욕장!</h2>    
                        <p>가본적이 없거나 모르는 해수욕장도 한번 보고 떠나보세요~</p>
                    </div>
                    
                    <div class="about-us text-center wow fadeInDown">
                        <img src="img/beach/dol.png" alt="About Us" class="img-responsive">
                    </div>
                </div>
            </div>
        </section>
        <!--
        End #about
        ========================== -->
        

        <!--
        #count
        ========================== -->
        <section id="count">
            <div class="container">
            <iframe src="beach.jsp" style="border:none"  frameborder="0" width="100%" height="1500px" style="border:1px solid #aaa;"></iframe>
                <div class="row">
                  			
                </div>
            </div>
        </section>
        <!--
        End #count
        ========================== -->

        <!--
        #about-us
        ========================== -->
        <section id="about-us">
            <div class="container">
                <div class="row">
<iframe src="exterem.jsp" style="border:none"  frameborder="0" width="100%" height="2000" style="border:1px solid #aaa;"></iframe>

                </div>
            </div>
        </section>
        <!--
        End #about-us
        ========================== -->

        <!--
      

        <!--
        #subscribe
        ========================== -->
        <section id="subscribe">
            <div class="container">
                <div class="row">
                 <div class="call-to-action text-center">
                            <p>동선 체크 하기 위한 지도</p>
                            <span></span><br>
 				  <p><iframe src="//kr.batchgeo.com/map/e4f9db8c6589dd63eae33fdf42434861" frameborder="0" width="100%" height="550" style="border:1px solid #aaa;"></iframe></p><p><small>View <a href="https://kr.batchgeo.com/map/e4f9db8c6589dd63eae33fdf42434861">익스트림스포츠</a><- 여기 클릭시 큰화면</small></p>
                  <p><iframe src="https://batchgeo.com/map/f2a59d0ecfdddbb5d963086aa4d8eb76" frameborder="0" width="100%" height="550" style="border:1px solid #aaa;"></iframe></p><p><small>View <a href="https://batchgeo.com/map/f2a59d0ecfdddbb5d963086aa4d8eb76">2018 맛집 선정</a><- 여기 클릭시 큰화면</small></p>
                  </div>                        
                </div>
            </div>
        </section>
        
        <!--
        End #subscribe
        ========================== -->

        <!--
        #footer
        ========================== -->
        <footer id="footer" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="footer-logo wow fadeInDown">
                            <img src="img/jejulogo.png" alt="logo">
                        </div>

                        <div class="footer-social wow fadeInUp">
                            <h5> fdsa8851@naver.com 문의 주세요.(다음에 여행 갈때 쓸려고 만든 사이트)</h5><br>
                            <ul class="text-center list-inline">
                                <li><a href="https://ko-kr.facebook.com/happyjejudo/"><i class="fa fa-facebook fa-lg"></i></a></li>
                                <li><a href="https://twitter.com/happyjejudo"><i class="fa fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble fa-lg"></i></a></li>
                            </ul>
                        </div>

                        <div class="copyright">
                            <p>Developed by <a target="_blank" href="">김동현</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </footer>
        <!--
        End #footer
        ========================== -->


        <!--
        JavaScripts
        ========================== -->
        
        <!-- main jQuery -->
        <script src="js/vendor/jquery-1.11.1.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- jquery.nav -->
        <script src="js/jquery.nav.js"></script>
        <!-- Portfolio Filtering -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- Fancybox -->
        <script src="js/jquery.fancybox.pack.js"></script>
        <!-- Parallax sections -->
        <script src="js/jquery.parallax-1.1.3.js"></script>
        <!-- jQuery Appear -->
        <script src="js/jquery.appear.js"></script>
        <!-- countTo -->
        <script src="js/jquery-countTo.js"></script>
        <!-- owl carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- WOW script -->
        <script src="js/wow.min.js"></script>
        <!-- theme custom scripts -->
        <script src="js/main.js"></script>
    </body>
</html>
