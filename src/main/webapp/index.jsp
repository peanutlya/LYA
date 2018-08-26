<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/26
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>lya</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
</head>
<script>

    function test() {
        $.ajax({
            url:"${pageContext.request.contextPath}/AjaxServlet",
            beforeSend: function(){
                //layer.msg("hello",{time:2000});
                alert("before");
            },
            success:function (data) {
                alert("111");
                $('p').html("linux is very much!");
            }

        })
    }

</script>
<body>
    <div class="container">
        <h1 class="page-header">Bootstrap前端框架</h1>
    </div>
    <button onclick="test()">点击测试</button>
    <p></p>
</body>
</html>
