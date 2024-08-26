<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2024/8/4
  Time: 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息检索</title>
    <style>
        .header-info {
            background: linear-gradient(to bottom, #f0f0f0, #e0e0e0); /* 添加渐变背景色 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
            padding: 10px; /* 调整内边距 */
        }
        .search-box {
            display: flex;
            align-items: center;
        }
        .search-box a {
            color: #333; /* 设置链接颜色 */
            text-decoration: none;
            margin-right: 10px;
        }
        .search-box input[type="text"] {
            border: 1px solid #ccc; /* 设置输入框边框 */
            padding: 5px;
            border-radius: 4px;
        }
        .search-box button {
            background-color: #007bff; /* 设置按钮背景色 */
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }
         .footer {
             background-color: #f9f9f9; /* 设置背景颜色 */
             padding: 10px; /* 调整内边距 */
             text-align: center; /* 文本居中 */
             font-size: 14px; /* 设置字体大小 */
             color: #333; /* 设置文字颜色 */
         }
        .footer a {
            color: #007bff; /* 设置链接颜色 */
            text-decoration: none;
        }
    </style>

</head>
<body>
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <!--navbar-header-->
            <ul class="nav navbar-nav">
                <li ><a href="/goods_list?pageNumber=1&keyword=">billboard global 200年榜所有数据</a></li>
                <li ><a href="/goods_search?pageNumber=1&keyword=">billboard hot 100年榜所有数据</a></li>
                <li ><a href="/personal.jsp">个人中心</a></li>
                <li ><a href="/search.jsp">信息检索</a></li>
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
                <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }"></c:if>搜索</button>
            </form>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
<div class="clearfix"> </div>
</div>

<div class="header-info">
    <div class="header-right search-box">
        <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
        <div class="search">
            <form class="navbar-form" action="/goods_list">
                <input type="text" class="form-control" name="keyword">
                <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }"></c:if>搜索</button>
            </form>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
<div class="clearfix"> </div>
</div>
<div class="footer">
    <div class="container">
        <div class="text-center">
            copyright @xsm829 2024
        </div>
    </div>
</div>
</body>
</html>
