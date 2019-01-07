<%@page import="com.herbmall.test.SimpleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean_ok.jsp</title>
</head>
<body>
<%
	//기존 방식
	request.setCharacterEncoding("utf-8");
	/* String userid=request.getParameter("userid");
	String name=request.getParameter("name");
	String no=request.getParameter("no");
	
	SimpleVO vo = new SimpleVO();
	vo.setUserid(userid);
	vo.setNo(Integer.parseInt(no));
	vo.setName(name); */	
%>
<jsp:useBean id="simpleVo" class="com.herbmall.test.SimpleVO" 
	scope="page"></jsp:useBean>
<%-- <jsp:setProperty property="userid" name="simpleVo"/>
<jsp:setProperty property="name" name="simpleVo"/>
<jsp:setProperty property="no" name="simpleVo"/> --%>
<jsp:setProperty property="*" name="simpleVo"/>
	
<h1>usebean 이용 - 파라미터</h1>
<%-- <p>userid :  <%=vo.getUserid() %></p>
<p>no :  <%=vo.getNo() %></p>
<p>name :  <%=vo.getName() %></p>
 --%>
 <p><jsp:getProperty property="userid" name="simpleVo"/> </p>
 <p><jsp:getProperty property="name" name="simpleVo"/> </p>
 <p><jsp:getProperty property="no" name="simpleVo"/> </p>
 
</body>
</html>





