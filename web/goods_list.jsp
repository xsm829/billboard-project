<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css">
    <script type="text/javascript" src="resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/js/layer.js"></script>
    <script type="text/javascript" src="resources/js/cart.js"></script>
    <script type="text/javascript" src="resources/css/flexslider.css"></script>
    <script>
        $(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
</head>
<body>
<div class="header-info">
    <div class="header-right search-box">
        <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
        <div class="search">
            <form class="navbar-form" action="/goods_list">
                <input type="text" class="form-control" name="keyword">
                <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜索</button>
            </form>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>

<jsp:include page="header.jsp">
    <jsp:param value="8" name="flag"/>
</jsp:include>


<div class="clearfix"> </div>
<!--products-->
<div class="products">
    <div class="container">
        <h2> 搜索 ‘${param.keyword }’的结果 </h2>

        <div class="col-md-12 product-model-sec">

            <c:forEach items="${p.list }" var="g">
                <div class="product-grid">
                    <div class="more-product"><span> </span></div>
                    <div class="product-img b-link-stripe b-animate-go  thickbox">
                        <div class="b-wrapper">
                            <h4 class="b-animate b-from-left  b-delay03">
                                <button>查看详情</button>
                            </h4>
                        </div>
                    </div>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4>${g.rank}</h4>
                            <h4>${g.title}</h4>
                            <h4>${g.singer}</h4>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <div class="clearfix"> </div>
            <div>
                <jsp:include page="page.jsp">
                    <jsp:param name="url" value="/goods_list"></jsp:param>
                    <jsp:param name="param" value="&keyword=${keyword}"></jsp:param>
                </jsp:include>
            </div>
        </div>
    </div>
    <!--//products-->

    <jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
