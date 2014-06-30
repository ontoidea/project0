<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guestbook List</title>

<script src="<c:url value="/resources/js/jquery-1.11.1.js"/>"></script>
<script type="text/javascript">
<!--
$(document).ready(function(){
	$('#submit').click(function(){
	    $('#articleId').val(0);
	    $('form').attr({action:'form'}).submit();
	});
});
 
function fnCmdEdit(articleId) {
	$('#articleId').val(articleId);
    $('#commandUrl').val('form');
    $('form').attr({action:'confirm1'}).submit();
}
 
function fnCmdDelete(articleId) {
	$('#articleId').val(articleId);
	$('#commandUrl').val('delete');
	$('form').attr({action:'confirm1'}).submit();
}
 
 
// -->
</script>

<style>
table {width:100%; border-top:dotted;}
</style>

</head>
<body>

<form:form id="guestbookVO" name="guestbookVO" method="post">
    <input type="hidden" id="articleId" name="articleId" />
    <input type="hidden" id="commandUrl" name="commandUrl" />

<c:forEach var="result" items="${list}" varStatus="status">
	<table>
    <tr>
        <td>${result.name}|${result.mail}</td>
        <td align="right">${result.cdate}</td>
    </tr>
    <tr>
        <td colspan="2">${result.content}</td>
    </tr>
    <tr>
        <td colspan="2" align="right">
        	<input type="submit" id="edit" value="수정" onclick="fnCmdEdit('${result.id}')" />
        	<input type="submit" id="delete" value="삭제" onclick="fnCmdDelete('${result.id}')" />
        </td>
    </tr>
	</table>
</c:forEach>

<table>
	<tr><td align="right"><br/>
		<input type="submit" id="submit" value="새 글" />
	</td></tr>
</table>

</form:form>

</body>
</html>
