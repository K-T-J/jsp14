<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>

<h2>기존 : <%=request.getAttribute("num") %></h2>



<h2>EL	:	${requestScope.num}</h2>
<h2>EL	:	${requestScope.id}</h2>
<h2>EL	:	${num}</h2>
<h2>EL	:	${id}</h2>



<h2>기존 : <%=request.getAttribute("myList") %></h2>
<h2>EL	:	${myList}</h2>


<h2>EL 문자형태 숫자 연산 : ${age + '10'}</h2>

<h1>기존 session num : <%=session.getAttribute("num") %> </h1>
<h1>EL session num : ${sessionScope.num} </h1>
<h1>arr : ${arr[0]}</h1>


<h1>list : ${list}</h1>
<h1>list : ${list[0]}</h1>배열 처럼 사용 가능
<h1>list : ${list.get(0)}</h1>arrayList의 get()메서드 사용 가능


<h2>vo.id : ${requestScope.vo.id}</h2>
<h2>vo.id : ${requestScope.vo.getId()}</h2>
<h2>vo.name : ${requestScope.vo.name}</h2>
<h2>vo.age : ${requestScope.vo.age}</h2>



</body>
</html>