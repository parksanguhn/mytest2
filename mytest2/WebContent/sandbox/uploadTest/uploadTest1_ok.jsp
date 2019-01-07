<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadTest1_ok.jsp</title>
</head>
<body>
	<%
		//파일 업로드를 위한 변수
		String uploadDir="upload";  //업로드할 파일을 저장할 경로
		//업로드 path의 실제 물리적 경로 구하기
		String saveDir=config.getServletContext().getRealPath(uploadDir);
		System.out.println("[1]upload path의 물리적 경로:"+ saveDir);
		//또는
		saveDir=application.getRealPath(uploadDir);
		System.out.println("[2]upload path의 물리적 경로:"+ saveDir);
		
		//테스트 경로
		saveDir="D:\\parksanguhn\\java\\java\\workspace_list\\jsp_ws\\herbmall\\WebContent\\upload";
		
		int maxSize=2*1024*1024;  //업로드 파일의 최대 용량 : 2M
		String encoding="utf-8";  //인코딩
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		//=> 업로드할 파일이 이미 존재할 때 덮어쓰기 방지, 자동으로 파일명을 변경해줌
		
		try{
			MultipartRequest mr 
			= new MultipartRequest(request, saveDir, maxSize, encoding, policy);
			//MultipartRequest 객체를 생성하면 업로드처리가 됨
			System.out.println("업로드 완료됨");
			
			//업로드된 파일의 정보 구하기
			String fileName =mr.getFilesystemName("upfile");
			out.println("업로드 파일명 : "+ fileName+"<br>");
			
			//파일이 업로드된 경우에만 처리
			if(fileName !=null && !fileName.isEmpty()){
				String originalFileName =mr.getOriginalFileName("upfile");
				String contentType =mr.getContentType("upfile");
				File file =mr.getFile("upfile");
				long fileSize=file.length();
				
				out.print("업로드 파일의 변경전 파일명:"+ originalFileName+"<br>");
				out.print("업로드 파일의 contentType:"+ contentType+"<br>");
				out.print("업로드 파일의 크기:"+ fileSize+"<br>");				
			}
			
			String id=request.getParameter("userid");
			String userid=mr.getParameter("userid");
			String address=mr.getParameter("address");
			out.println("request를 이용해서 읽어온 파라미터 id="+ id+"<br>");
			out.println("파라미터 userid="+ userid+"<br>");
			out.println("파라미터 address="+ address+"<br>");			
		}catch(IOException e){
			System.out.println("업로드 용량이 2M를 초과하였습니다!!");
			e.printStackTrace();
		}
	
	%>
</body>
</html>





