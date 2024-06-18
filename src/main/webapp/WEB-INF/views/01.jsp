<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<h3>JSP 방식</h3>
	<%
	int iVal = (int)request.getAttribute("iVal");		// Object이기 때문에 Downcasting 필요
	Object nullVal = request.getAttribute("nullVal");
	%>
	<p>iVal : <%= iVal %></p>
	<p>nullVal : <%= nullVal %></p>
	
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	<h3>EL 방식</h3>
	<ul>
		<li>fVal : ${fVal}</li>
		<li>bVal : ${bVal}</li>	
		<li>sVal : ${sVal}</li>
		<li>nullVal : ${nullVal}</li>	<!-- JSP방식에서는 "null"이라는 문자로 출력되었지만 EL방식에서는 공백으로 출력된다.-->
		
		<li>userVo : ${UserVo}</li>		<!-- toString() 메서드 호출 결과 -->
		<li>객체 속성 접근 : ${UserVo.email}</li>	<!-- 명명규칙에 따라 getter 호출 -->
	</ul>
	
</body>
</html>