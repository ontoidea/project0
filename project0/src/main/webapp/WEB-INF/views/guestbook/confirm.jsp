<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guestbook Password Confirm</title>

<script src="<c:url value="/resources/js/jquery-1.11.1.js"/>"></script>
<script type="text/javascript">
<!--
$(document).ready(function(){
	$('#submit').click(function(){
	    $('form').attr({action:'${commandUrl}'}).submit();
	});
});
// -->
</script>

<style>
table {text-align:center;width:100%; border-top:dotted;}
</style>

</head>
<body>

<form:form id="guestbookVO" name="guestbookVO" method="post">
    <input type="hidden" name="articleId" value="${articleId}" />

	<table>
		<tr><td>패스워드를 입력하세요.</td></tr>
		<tr>
			<td>
				<input type="password" name="pwdInput" />
				<input type="submit" id="submit" value="확인" />
			</td>
		</tr>
	</table>
	
	<table>
		<tr><td align="right"><br/>
			<input type="button" id="button" value="목록" onClick="location.href='list'"; />
		</td></tr>
	</table>
</form:form>

</body>
</html>
