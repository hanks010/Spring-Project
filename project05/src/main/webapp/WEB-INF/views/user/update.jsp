<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> 

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<h1>회원정보수정</h1>
	<form id="userUpdate" onsubmit="update(${principal.user.id},event)">
username <input type="text" name="username"  value="${principal.user.username}" readonly="readonly"><br/>
passwd<input type="text" name="password"><br/>
이름<input type="text" name="name" value="${principal.user.name}"><br/>
email<input type="text" name="email"  value="${principal.user.email}" readonly="readonly"><br/>
<button type="submit">회원정보수정</button>
</form>

<script>
//(1) 회원정보 수정
function update(userid,event) {
	event.preventDefault(); // 폼태그 액션 막기
	let data = $("#userUpdate").serialize();
	console.log(data);
	
	$.ajax({
		type: "PUT",
		url:  "user/update/"+userid,
		data: data,
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		dataType: "json" //응답받을 때 제이슨으로 달라
	}).done(res=>{
		alert("성공");
		console.log("업데이트 성공");
		location.href="/";
	}).fail(error=>{
		console.log(error);
		if(error.data == null) {
			alert(error.responseJSON.message);
		} else {
		alert(JSON.stringify(error.responseJSON.data));
		}
		console.log("업데이트 실패");
	});
}
</script>
</body>
</html>