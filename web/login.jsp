<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2024/8/1
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>请登陆</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link href="resources/css/login.css" type="text/css" rel="stylesheet" />
</head>
<body>
<script>
    function check(form){
        if (form.user.value === "") {
            alert("请输入账号！");
            return false;
        }
        if (form.password.value === "") {
            alert("请输入密码！");
            return false;
        }
        return true;
    }

</script>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">欢迎来到billboard音乐论坛系统</h1>
<div class="main">
    <h5 class="title">
        <a href="login.jsp" id="login">登录</a>
        <b>&nbsp;·&nbsp;</b>
        <a href="register.jsp" id="register">注册</a>
    </h5>
    <form action="check_login" method="post" onsubmit="return check(this)">
        <div class="form-group">
            <input type="text" name="users" class="form-control user" placeholder="请输入用户名">
            <input type="password" name="password" class="form-control password" placeholder="请输入密码">
            <div class="remember-btn">
                <input type="checkbox" name="remember" value="true">
                <span>记住我</span>
            </div>
            <a href="forget.jsp" class="help">登录遇到问题？</a>
            <input type="submit" value="登录" class="btn btn-primary btn-lg btn-block" />
        </div>
    </form>
</div>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<!--//footer-->
</body>
</html>

<!--footer-->
