<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadTest2.jsp</title>
</head>
<body>
	<h1>여러 개 파일 업로드</h1>
	<form name="frm1" method="post" action="uploadTest2_ok.jsp"
		enctype="multipart/form-data">
		<p>아이디 : <input type="text" name="userid"></p>
		<p>파일 첨부1 : <input type="file" name="upfile1"></p>	
		<p>파일 첨부2 : <input type="file" name="upfile2"></p>
		<input type="submit" value="전송">	
	</form>
</body>
</html>








