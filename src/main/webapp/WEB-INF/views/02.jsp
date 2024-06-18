<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	<p>
	<!-- 산술 연산 -->
	${iVal + 10 * 100 / 2 }<br />
	${fVal + 10 * 100 / 2 }<br />
	
	<!-- 비교 연산 -->
	${iVal < 100 }<br/>
	
	<!-- 논리 연산 -->
	${iVal == 1000 || fVal < 200 }<br />
	
	<!-- 객체의 null 비교 -->
	reqVal null? : ${empty reqVal}<br />
	userVo null? : ${not empty userVo }<br />
	
	</p>
</body>
</html>