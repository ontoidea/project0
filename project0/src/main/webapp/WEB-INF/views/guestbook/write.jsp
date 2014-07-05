<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Guestbook Write</title>

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" media="screen">
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-1.11.1.js"/>"></script>

<script>
<!--
$(document).ready(function(){
	var name = $('#name');
	var mail = $('#mail');
	var pwd = $('#pwd');
	var content = $('#content');
	
	$('#submit').click(function(){
	    // 정규식 - 이메일 유효성 검사
	    var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	    if(!name.val()) {
	        alert('이름을 입력해주세요.');
	        name.focus();
	        return false;
	    } else if(!mail.val()){
	        alert('이메일주소를 입력해주세요.');
	        mail.focus();
	        return false;
	    } else if(!regEmail.test(mail.val())) {//클라이언트측 이메일 검증
	            alert('이메일주소가 유효하지 않습니다');
	            mail.focus();
	            return false;
	    } else if(!pwd.val()){
	        alert('비밀번호를 입력해주세요.');
	        pwd.focus();
	        return false;
	    } else if(!content.val()){
	        alert('내용을 입력해주세요.');
	        content.focus();
	        return false;
	    }
	    
	 	if(confirm('정말로 글을 등록하시겠습니까?')) {
	 		$('form').attr({action:'${commandUrl}'}).submit();
	 	}
   });
});
// -->
</script>
</head>
<body>
 
<form:form id="guestbookVO" name="guestbookVO" method="post">
    <input type="hidden" name="id" value="${result.id}" />

<br/>
<div class="row-fluid">
  <div class="span8 offset2">

	<table class="table table-bordered">
    <tr>
        <th width="150px">
        	<p class="text-center"><label class="control-label" for="name">이 름</label></p>
        </th>
        <td>
        	<input type="text" id="name" name="name" value="${result.name}" placeholder="이름을 입력하세요." autofocus />
        </td>
    </tr>
    <tr>
        <th>
        	<p class="text-center"><label class="control-label" for="mail">이메일</label></p>
        </th>
        <td>
        	<input type="email" id="mail" name="mail" value="${result.mail}" placeholder="메일주소를 입력하세요." />
        </td>
    </tr>
    <tr>
        <th>
        	<p class="text-center"><label class="control-label" for="pwd">비밀번호</label></p>
        </th>
        <td>
        	<input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요." />
        </td>
    </tr>
    <tr>
        <th>
        	<p class="text-center"><label class="control-label" for="content">내 용</label></p>
        </th>
        <td>
        	<textarea rows="4"  id="content" name="content" placeholder="내용을 입력하세요." class="span10">${result.content}</textarea>
        </td>
    </tr>
    </table>
    
    <table width="100%">
	<tr>
		<td><button type="button" class="btn" onclick="location.href='list'";><i class="icon-list"></i> 목록으로</button></td>
		<td>
			<p class="text-right">
			<button id="submit" type="submit" class="btn btn-primary"><i class="icon-pencil"></i> 등록하기</button>
			</p>
		</td>
	</tr>
	</table>
	
  </div>
</div>

</form:form>

</body>
</html>
