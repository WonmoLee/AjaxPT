<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- home.jsp?name=sungsu -->


<!-- HTML 방식 -->
<!-- <a href="/sat0613/home.jsp?name=sungsu">메인페이지 이동</a> -->


<!-- 자바스크립트 방식 -->
<script>
//  	location.href="/sat0613/home.jsp?name=sungsu";
</script>


<!-- 리다이렉트 방법 -->
<%
	//sendRedirect는 주소노출이 된다.
	response.sendRedirect("/sat0613/home.jsp?name=sungsu");
%>


<!-- 디스패쳐 방법 -->
<%
	//디스패처방식은 context root를 주지않아야한다. 또한 주소노출이 되지않는다.
// 	RequestDispatcher dis = request.getRequestDispatcher("/home.jsp?name=sungsu");
// 	dis.forward(request, response);
%>


<!-- JSTL 방법 -->
<!-- JSTL에서 redirect방식은 context root를 주지않아야한다. -->
<%-- <c:redirect url="/home.jsp?name=sungsu"></c:redirect> --%>
