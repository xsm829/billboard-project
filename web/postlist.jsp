﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>NIC|BLOG</title>
    <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"
          name="viewport">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="resources/css/manage.css"/>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/pagination.css">
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/blog.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.pagination.js"></script>
    <%
        String context = request.getContextPath();
    %>
    <script>

        function deletePost(id) {
            if (confirm("确定删除文章？")) {
                $.ajax({
                    type: "POST",
                    async: true,
                    url: "<%=context %>/servlet/PosteditServlet",
                    data: {
                        "action": "delete",
                        "id": id
                    },
                    success: function (data) {
                        alert(data);
                        window.location.reload();
                    },
                    error: function () {
                        alert("请求失败");
                    },
                    dataType: "text"
                })
            }
        };
        // 点击分页按钮以后触发的动作
        function handlePaginationClick(new_page_index, pagination_container) {
            $("#postForm").attr("action", "<%=context %>/servlet/PostlistServlet?role=1&pageNum=" + (new_page_index + 1));
            $("#postForm").submit();
            return false;
        };
        $(function () {
            $("#News-Pagination").pagination(${result.totalRecord}, {
                items_per_page:${result.pageSize}, // 每页显示多少条记录
                current_page: ${result.currentPage} -1, // 当前显示第几页数据
                num_display_entries: 3, // 分页显示的条目数
                next_text: "下一页",
                prev_text: "上一页",
                num_edge_entries: 2, // 连接分页主体，显示的条目数
                callback: handlePaginationClick
            });
        })
    </script>
</head>

<body>
<%
    if(session.getAttribute("users") == null) {
%>
<script type="text/javascript" language="javascript">
    alert("您还没有登录，请先登录");
    top.location.href="../login.jsp";
</script>
<%
    }
%>
<div class="container-fluid">
    <div class="row">
        <div id="left-nav" class="col-md-2">
            <div class="author-nav">
                <img src="../img/avatar.jpg" alt="个人头像">
            </div>
            <div class="main-nav">
                <ul>
                    <a href="<%=context %>/servlet/PostlistServlet?role=1">
                        <li>所有文章</li>
                    </a>
                    <a href="<%=context %>/addpost.jsp">
                        <li class="current">写文章</li>
                    </a>
                    <a href="<%=context %>/servlet/CategoryServlet?action=getall">
                        <li>分类</li>
                    </a>
                    <a href="https://changyan.kuaizhan.com/">
                        <li>评论</li>
                    </a>
                    <a href="https://changyan.kuaizhan.com/">
                        <li>留言</li>
                    </a>
                    <a href="<%=context %>/personal.jsp">
                        <li>返回首页</li>
                    </a>
                </ul>
            </div>
        </div>
        <div id="list" class="col-md-10 col-xs-12">
            <h3>管理</h3>
            <hr/>
            <!-- 后台返回结果为空 -->
            <c:if test="${fn:length(result.dataList) eq 0 }">
                <span>查询的结果不存在</span>
            </c:if>
            <!-- 后台返回结果不为空 -->
            <c:if test="${fn:length(result.dataList) gt 0 }">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>主分类</th>
                        <th>二级分类</th>
                        <th>日期</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${result.dataList }" var="article">
                    <tr>
                        <td><c:out value="${article.title }"></c:out></td>
                        <td><c:out value="${article.mname }"></c:out></td>
                        <td><c:out value="${article.sname }"></c:out></td>
                        <td><c:out value="${article.createdate }"></c:out></td>
                        <td>
                            <a href="<%=context %>/servlet/PostlistServlet?role=3&id=${article.id }">
                                <button type="button" class="btn btn-primary">修改</button>
                            </a>
                            <button type="button" class="btn btn-danger" onclick="deletePost(${article.id })">删除
                            </button>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
                <br>
                <div id="News-Pagination" style="float: right"></div>
            </c:if>
        </div>
    </div>
</div>
</div>
</body>

</html>