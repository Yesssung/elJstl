<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	<h2>el</h2>     
	<h3>Scope TEST 1</h3>
	<!-- 요청의 속성에 접근하는 방법 : Scope명.attribute명 -->
	<ul>
		<li>RequestScope : ${requestScope.userVo.name }</li>
		<li>SessionScope : ${sessionScope.userVo2.name }</li>
		<li>ApplicationScope : ${applicationScope.userVo3.name}</li>
	</ul>         

	<h3>Scope TEST 2</h3>
	<!-- if Scope를 명시하지 않으면 
	pageScope -> requestScope -> sessionScope -> applicationScope 순으로 검색 -->
	<ul>
		<li>RequestScope : ${userVo.name }</li>
		<li>SessionScope : ${userVo2.name }</li>
		<li>ApplicationScope : ${userVo3.name }</li>
	</ul>
	
	
</body>
</html>