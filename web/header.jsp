<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/23
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>

<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <!--navbar-header-->
                <ul class="nav navbar-nav">
                    <li ><a href="/goods_list?pageNumber=1&keyword=">billboard global 200年榜所有数据</a></li>
                    <li ><a href="/goods_search?pageNumber=1&keyword=">billboard hot 100年榜所有数据</a></li>
                    <li ><a href="/personal.jsp">个人中心</a></li>
                    <li ><a href="/search.jsp">信息检索</a></li>
                    <li ><a href="/updatepost.jsp">博客系统</a></li>
                    <li><a href="/user_logout">退出</a></li>
                </ul>
                <!--/.navbar-collapse-->
            <!--//navbar-header-->
        </nav>


            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
<div class="header-info">
    <div class="header-right search-box">
        <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
        <div class="search">
            <form class="navbar-form" action="/goods_search">
                <input type="text" class="form-control" name="keyword">
                <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜索</button>
            </form>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
<div class="clearfix"> </div>
</div>

