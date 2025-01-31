<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2024/8/2
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link href="resources/css/register.css" type="text/css" rel="stylesheet" />
</head>
<body>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">欢迎来到billboard音乐论坛系统</h1>
<div class="main">
    <h5 class="title">
        <a href="login.jsp" id="login">登录</a>
        <b>&nbsp;·&nbsp;</b>
        <a href="register.jsp" id="register">注册</a>
    </h5>
    <form action="check_register" method="post" >
        <div class="form-group">
            <input type="text" name="username" class="form-control user" placeholder="用户名">
            <input type="email" name="email" class="form-control email" placeholder="安全邮箱">
            <input type="password" name="password" class="form-control password1" placeholder="密码">
            <input type="text" name="name" class="form-control password1" placeholder="名称">
            <input type="text" name="phone" class="form-control password1" placeholder="电话">
            <input type="text" name="address" class="form-control password1" placeholder="地址">
            <!--<input type="text" name="code" placeholder="验证码" class="code">-->
            <!--<img src="code.jsp" id="image" style="float: right; width: 90px;height: 50px; margin-top: 10px" onclick="refresh()">-->
            <input type="submit" value="注册" class="btn btn-primary btn-lg btn-block we" />
        </div>
    </form>
</div>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
