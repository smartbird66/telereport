<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
    <title>注册</title>

</head>
<body>
<center>
    <%--提示信息--%>
    <span id="message">${msg}</span>
    <span id="message">${username}</span>
    <span id="message">${password}</span>


    <form action="${pageContext.request.contextPath}/register.action" method="post" enctype="multipart/form-data">
        账号：<input id="username" type="text" name="username"/>
        <br/>
        密码：<input id="password" type="password" name="password"/>
        <br/>
        名言：<input id="note" type="text" name="note">
        <br/>
        <input placeholder="请选择头像" type="file" name="image"/>
        <br/>
        <input type="submit" value="确认"/>


    </form>
</center>
</body>
</html>