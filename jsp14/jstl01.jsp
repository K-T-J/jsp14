<%@page import="web.jsp14.mvc.TestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--core 태그 사용하겠다 선언 --%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl01.jsp</title>
</head>
<body>
	<%--변수 선언 --%>
	<c:set var = "id" value="java"/><%--홑태그 --%>
	<c:set var = "name">피카츄</c:set><%--쌍태그 --%>
	<h2>id : ${id}</h2>
	<h2>name : ${name}</h2>
	

	<%-- 프로퍼티 설정 : 방식 통일해서 사용하기 --%>
	<%-- * 스크립트릿(자바), 표현식 사용:앞으로는 스크립트 태그를 사용안할것이니 몰라도된다 --%>
	<%-- <% TestVO vo = new TestVO(); %>
	<c:set target="<%=vo %>" property="id" value="pikachu"/>
	<h2>vo.id : <%=vo.getId()%></h2> --%>
	
	
	
	
	<%-- * 액션태그, EL 사용 : 이제부터 이방식 사용 --%>
	<jsp:useBean id="vo2" class="web.jsp14.mvc.TestVO" />
	<c:set target="${vo2}" property="id" value="krong"/>
	<h2>vo.id el : ${vo2.id}</h2>


	<%-- 변수 삭제(id/name) --%>
	<c:remove var="id"/>
	<c:remove var="name"/>
	<h2>id : ${id}</h2>
	<h2>name : ${name}</h2>



	<%-- if 조건문 --%>
	<c:set var="num" value="80"/>
	<c:if test="${num>=10 }">
		<h2>${num }은 100보다 크거나 같다.</h2>
	</c:if>
	<c:if test="${num<100} }">
		<h2>${num}은 100보다 작다. }</h2>
	</c:if>
	



	<%--choose --%>
	<c:choose>
	
		<c:when test="${num > 100 }">
			<h2>${num }은100보다 크다</h2>
		</c:when>
		<c:when test="${num < 100 }">
			<h2>${num }은100보다 작다</h2>
		</c:when>
		<c:otherwise>
			<h2>100이다</h2>
		</c:otherwise>
	
	</c:choose>



	<%--forEach --%>
	<c:set var="arr" value="<%=new int[]{1,2,3,4,5} %>"/>

	<c:forEach var="i" items="${arr}">
		<h3>${i}</h3>
	
	</c:forEach>

	<c:forEach	var="abc" begin="1" end="10" step="2">
		<h3>a : ${abc}</h3>
	
	</c:forEach>


	<%-- 구구단 2단 ~ 9단 전체 출력 --%>
	
	<c:forEach var="i" begin="2" end="9" step="1">
		<h1>** ${i }단 **</h1>
		
		<c:forEach var="j" begin="1" end="9" step="1">
			<h3>${i}*${j } = ${i*j}</h3>
		</c:forEach>
			
	</c:forEach>

	
	
	<c:forEach var="a" items="${arr}" begin="2" end="4" varStatus="status">
		<h3> a = ${a} /status.idex : ${status.index} / ${arr[status.index]}</h3>
	</c:forEach>



	
	<%-- <c:forEach var="vo" items="${articleList }">
		<h2>${vo.subject}</h2>
	</c:forEach> --%>


	<%--forTokens --%>
	<c:forTokens var="s" items="a,b,c,e,d,f,g" delims=",">
	
		<h2>${s}</h2>
	</c:forTokens>


	<%-- import --%>
	<c:import var="login" url="/jsp13/loginForm.jsp"/>

	${login}
	
	

	<%--url --%>
	<c:url var="u" value="../jsp13/loginForm.jsp">
		<c:param name="id" value="피카"></c:param>
		<c:param name="pw" value="11234"></c:param>
	
	</c:url>
	
	<%--페이지 이동 --%>
	<%-- <c:redirect url="${u}"/> --%>
	<%-- <c:redirect url="/jsp13/hello.jsp"/> --%> <%--context path는 생략하고 작성한다.(/web) --%>

	<%-- 단순출력 --%>
	<h1><c:out value="${num }"/></h1>
	<h1>${num}</h1>
	


</body>
</html>