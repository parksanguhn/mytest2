<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope2.jsp</title>
</head>
<body>
<h1>scope2.jsp 페이지</h1>
<jsp:useBean id="vo" class="com.herbmall.test.CounterVO" scope="request"></jsp:useBean>
<jsp:setProperty property="count" name="vo"/>
<p>count 변수 : <jsp:getProperty property="count" name="vo"/> </p>
<hr>
<!-- <a href="result2.jsp">result2.jsp로 이동</a> -->
<jsp:forward page="result2.jsp"></jsp:forward>
</body>
</html>








