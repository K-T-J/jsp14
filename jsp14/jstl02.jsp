<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--fmt 커스텀태그를 이 jsp 파일에서 사용하겠다~ --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl02.jsp</title>
</head>
<body>

	<h2>jstl 02 page</h2>
	<%-- RequestEncoding --%>
	<% //request.setCharacterEncoding("UTF-8"); 와 동일%>
	<fmt:requestEncoding value="UTF-8"/>
	
	
	<%--날짜 관련 --%>
	<fmt:formatDate value="${day}"/> <br />
	<fmt:formatDate value="${day}" type="date"/> <br /><%--날짜출력 --%>
	<fmt:formatDate value="${day}" type="time"/> <br /><%--시간출력 --%>
	<fmt:formatDate value="${day}" type="both"/> <br /><%--날짜,시간출력 --%>
	<br />
	
	
	<fmt:formatDate value="${day}" type="both" dateStyle="short"/> <br /><%--21. 7. 26 오전 10:09:04 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="medium"/> <br /><%--2021. 7. 26 오전 10:09:04 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="long"/> <br /><%--2021년 7월 26일 (월) 오전 10:09:04 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="full"/> <br /><%--2021년 7월 26일 월요일 오전 10:09:04 --%>
	<br />
	
	
	<fmt:formatDate value="${day}" type="both" dateStyle="short" timeStyle="short"/> <br /><%--21. 7. 26 오전 10:11 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="medium" timeStyle="medium"/> <br /><%--2021. 7. 26 오전 10:11:55 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="long" timeStyle="long"/> <br /><%--2021년 7월 26일 (월) 오전 10시 11분 55초 --%>
	<fmt:formatDate value="${day}" type="both" dateStyle="full" timeStyle="full"/> <br /><%--2021년 7월 26일 월요일 오전 10시 11분 55초 KST --%>
	<br />
	
	
	<%--내가 지정해둔 포맷으로 적용하고싶을때 --%>
	<fmt:formatDate value="${day}" pattern="yy년 MM월 dd일"/><br /> <br />
	






	
	<%--숫자관련 --%>
	<fmt:formatNumber value="1000000" groupingUsed="true"/><br /><%--1,000,000 --%>
	<fmt:formatNumber value="1000000" groupingUsed="false"/><br /><%--1000000 --%>
	<fmt:formatNumber value="1000000" type="number"/><br /><%--1,000,000 --%>
	<fmt:formatNumber value="1000000" type="currency" currencySymbol="\\"/><br /><%--\1,000,000 --%>
	<fmt:formatNumber value="1000000" type="currency" currencySymbol="$"/><br /><%--$1,000,000 --%>



	<fmt:formatNumber value="0.3" type="percent"/><br /><%--30% --%>
	<fmt:formatNumber value="1500.333" pattern=".0"/><br /><%--1500.3 --%>
	<fmt:formatNumber value="1500.333" pattern=".00"/><br /><%--1500.33 --%>


	<%--timezone 한국표준시간 KST --%>
	<fmt:timeZone value="GMT+1">
		런던 BR : <fmt:formatDate value="${day}" type="both"/>
	</fmt:timeZone><br />
	<fmt:timeZone value="GMT-4">
		뉴욕 NY : <fmt:formatDate value="${day}" type="both"/>
	</fmt:timeZone><br />


	<%--문자열을 숫자로 파싱(변환) integerOnly 속성을 사용하면 소숫점 날라감--%>
	<fmt:parseNumber value="1000.123" var="result" integerOnly="true"/><%--값을 result 변수에 담은것 integerOnly정수만 가져온다 --%>
	result : ${result}










</body>
</html>