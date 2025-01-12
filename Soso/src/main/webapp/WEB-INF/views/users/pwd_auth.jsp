<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageContext.request.contextPath}</title>
</head>
<body>
<div class="container">
    <c:choose>
        <c:when test="${isSuccess }">
            <p>
                <strong>${id }</strong> 님 인증 되었습니다.
                <a href="${requestScope.url}?isSuccess=${isSuccess}">확인</a>
            </p>
        </c:when>
        <c:otherwise>
            <p>
                이전 비밀번호가 일치하지 않습니다.
                <a href="pwd_authform?url=${requestScope.encodedUrl }">다시 시도</a>
            </p>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
