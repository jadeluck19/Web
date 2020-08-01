<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> <!-- 참조  -->
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
    String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (session.getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
    
    String number = request.getParameter("number");
%>
    <nav class ="navbar navbar-default">
        <div class="navbar-header"> <!-- 홈페이지의 로고 -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class ="navbar-brand" href="main.jsp">JSP 게시판 만들기</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp">메인</a></li>
                <li class="active"><a href="lecture.jsp">강의</a></li>
                <li><a href="bbs.jsp">게시판</a></li>
            </ul>
            <%
            // 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
                if(userID == null)
                {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" aria-haspopup="true"
                    aria-expanded="false">접속하기<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp">로그인</a></li>
                        <li><a href="join.jsp">회원가입</a></li>                    
                    </ul>
                </li>
            </ul>
            <%
            // 로그인이 되어있는 사람만 볼수 있는 화면
                } else {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" aria-haspopup="true"
                    aria-expanded="false">회원관리<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
            <%
                }
            %>
        </div>
    </nav> 
 	<!--  여기까지는 위에 기본 -->
 
    <div class="container">
        <div class="row">
            <table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th colspan="3" style="background-color:#eeeeee; text-align:center;">
                        JSP 게시판 만들기 강좌 <%=number%>강</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                        	<iframe width="644" height="362" 
                        	<%
                        	switch(request.getParameter("number")){
                        	case "1":%>src="https://www.youtube.com/embed/wEIBDHfoMBg?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                        		<%break;
                        	case "2":%>src="https://www.youtube.com/embed/MtxFWczSFqU?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                        		<%break;
                        	case "3":%>src="https://www.youtube.com/embed/kN8xRG6UPZM?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                        		<%break;
                        	case "4":%>src="https://www.youtube.com/embed/RYo3OGlRoJw?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "5":%>src="https://www.youtube.com/embed/-Kbhn2TJGn4?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "6":%>src="https://www.youtube.com/embed/v2mmPRLjJGw?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "7":%>src="https://www.youtube.com/embed/eJRB__ErXd4?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "8":%>src="https://www.youtube.com/embed/pCqaGoexV5c?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "9":%>src="https://www.youtube.com/embed/OHvWkg9Bdf0?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "10":%>src="https://www.youtube.com/embed/EmbxlHakkfY?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "11":%>src="https://www.youtube.com/embed/Q-TzxXw2jQY?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "12":%>src="https://www.youtube.com/embed/SC7EP8ID9D8?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "13":%>src="https://www.youtube.com/embed/W9NLm_RNMvI?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "14":%>src="https://www.youtube.com/embed/sFqx8zbPjEE?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	case "15":%>src="https://www.youtube.com/embed/Bb7OZobUqwc?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6"
                            		<%break;
                        	}
                        	%>
                        		frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; 
                        		picture-in-picture" allowfullscreen>
                        	</iframe>
                        </td>   
                    </tr>
                </tbody>
             </table>
             
            <a href="lecture.jsp" class="btn btn-primary">목록</a>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
      $('.starRev span').click(function(){
  	  $(this).parent().children('span').removeClass('on');
  	  $(this).addClass('on').prevAll('span').addClass('on');
  	  return false;});
    </script>
    <script src="js/bootstrap.js"></script>
</body>
</html>