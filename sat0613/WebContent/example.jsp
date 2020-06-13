<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" onclick="test()">테스트</button>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function test() {

		//정보객체, 익명함수, 익명함수, 익명함수
		$.ajax({

		
		url : "example1.jsp",
		type : "POST",
		data : {"name" : "홍길동"},
		contentType : "text/plain; charset=UTF-8",
		dataType : "json"

		
		
		}).done(function(result) {
				
				alert(result.name);
					
		}).fail(function(error) {
				
				alert("실패");
				
		}).always({
			
		});	
		
	}
</script>
</body>
</html>