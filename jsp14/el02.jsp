<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el02.jsp</title>
</head>
<%
	//테스트용으로 스크립트릿 사용 (앞으로는 안쓸거임)
	request.setAttribute("name", "피카츄"); //앞으로는 controller에 작성될것임. 지금은 그냥 여기다 작성 테스트용으로

	request.setAttribute("memId", "java");
	session.setAttribute("memId", "pika");
%>

<body>

	요청URI	: ${pageContext.request.requestURI }<br />
	request의 name 속성 : ${requestScope.name }<br />
	test 파라미터 : ${param.test }<br />
	
	이름만 지정 : ${name}<br />
	
	값이 존재하지 않는 경우 : ${memId}<br />


</body>
</html>