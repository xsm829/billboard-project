<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2024/7/31
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="dao.UserDao" %>
<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<%
  UserDao userD = new UserDao();
  User users = null;

  Cookie[] cookies = request.getCookies();
  if (cookies != null) {
    for (Cookie c : cookies) {
      String cookieName = c.getName();
      if ("name".equals(cookieName)) {
        String user = c.getValue();
        try {
          users = userD.findWithId(user);
        } catch (Exception e) {
          out.print(e);
        }
        if (users != null) {
          session.setAttribute("info", users);
          //response.sendRedirect("personal");
          return;
        }
      }
    }
  }
  response.sendRedirect("login.jsp");
%>
</body>
</html>
