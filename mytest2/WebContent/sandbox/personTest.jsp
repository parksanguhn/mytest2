<%@page import="com.herbmall.test.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sandbox/personTest.jsp</title>
</head>
<body>
	<h1>싱글톤 패턴 연습</h1>
	<%
		//Person p = new Person();	//new로 객체 생성 불가
		
		Person p = Person.getInstance();
		p.showInfo();
		
	%>
</body>
</html>












