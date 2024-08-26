<%@ page import="model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2024/8/3
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="./resources/css/style.css">
    <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="/header.jsp">
    <jsp:param value="2" name="flag"/>
</jsp:include>
<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <c:if test="${!empty msg }">
                <div class="alert alert-success">${msg }</div>
            </c:if>
            <c:if test="${!empty failMsg }">
                <div class="alert alert-danger">${failMsg }</div>
            </c:if>

            <div class="register-top-grid">
                <h3>个人中心</h3>
                <form action="/user_changeaddress" method="post">
                    <h4></h4>
                    <div class="input">
                        <span>用户名<label></label></span>
                        <input type="text" name="name" value="${user.username }" placeholder="请输入用户名">
                    </div>
                    <div class="input">
                        <span>电话</span>
                        <input type="text" name="phone" value="${user.phone }" placeholder="请输入电话">
                    </div>
                    <div class="input">
                        <span>电邮</span>
                        <input type="text" name="address" value="${user.email }" placeholder="请输入电邮">
                    </div>
                    <div class="input">
                        <span>名称</span>
                        <input type="text" name="address" value="${user.name }" placeholder="请输入名称">
                    </div>
                    <div class="register-but text-center">
                        <input type="submit" value="提交">
                    </div>
                    <!-- 收货信息 end -->
                </form>
                <hr>
                <form action="/user_changepwd" method="post">
                    <h4>安全信息</h4>
                    <div class="input">
                        <span>原密码</span>
                        <input type="text" name="password" placeholder="请输入原密码">
                    </div>
                    <div class="input">
                        <span>新密码</span>
                        <input type="text" name="newPassword" placeholder="请输入新密码">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="register-but text-center">
                        <input type="submit" value="提交">
                    </div>
                </form>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//account-->




<jsp:include page="/footer.jsp"></jsp:include>


</body>
</html>