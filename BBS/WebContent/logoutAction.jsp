<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
    session.invalidate(); /* 이 페이지에 접속하면 session을 빼앗김 */
%>
<script>
    location.href = 'main.jsp';
</script>
</body>
</html> 
