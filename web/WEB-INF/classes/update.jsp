<%--
  Created by IntelliJ IDEA.
  User: zxwon
  Date: 2021/9/13
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改</title>
    <link  href="css/css.css" rel="stylesheet" type="text/css">
    <link  href="css/sign.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/js.js"></script>
    <script src="js/sign.js"></script>
    <style>
        .submit{ margin-left:68px;}
    </style>
</head>
<body>
<header class="clear">
    <img src="img/logo.jpg" >
    <div class="logo">
        <h1>好果汁图书馆</h1>
        <div class="clear"></div>
        <p>想看既看，想听既听的阅读</p>
    </div>
    <div class="search left">
        <form  action="" method="get">
            <input type="text" value="" placeholder="请输入书名或作者名称">
            <input type="submit" value="搜索">
        </form>
        <p class="left">
            <span>热门推荐：</span>
            <a href="javascript:;">原来你还在这里</a>
            <a href="javascript:;">原来你还在这里</a>
            <a href="javascript:;">原来你还在这里</a>
            <a href="javascript:;">原来你还在这里</a>
        </p>
    </div>
    <div class="reg">
        <!--<div class="delu">
            <a  href="javascript:;">登录</a>
            <span>|</span>
            <a  href="javascript:;">注册</a>
          </div>-->
        <div class="delu2 clear">
            <div class="self ease">
                <a href="javascript:;" class="clear">雪剑无影<span class="icon ease"></span></a>
                <div class="clear"></div>
                <ul  class="clear">
                    <li><a href="javascript:;">个人中心</a></li>
                    <li><a href="javascript:;">我的书架</a></li>
                    <li><a href="javascript:;">账号设置</a></li>
                    <li><a href="javascript:;">上传文件</a></li>
                    <li><a href="javascript:;">退出登录</a></li>
                </ul>
            </div>
            <span class="split">|</span>
            <a  href="javascript:;"  title="您有3条未读消息" class="news">消息<b>3</b></a>
        </div>
        <span>|</span>
        <a  href="javascript:;">意见反馈</a>
    </div>
</header>
<!--头部结束-->

<nav class="clear">
    <ul class="nav_1 clear">
        <div class="active"></div>
        <li><a href="javascript:;">首页</a></li>
        <li><a href="javascript:;">文学</a>
            <ul class="clear">
                <li><a href="javascript:;">现代文学</a></li>
                <li><a href="javascript:;">外国文学</a></li>
                <li><a href="javascript:;">古典文学</a></li>
                <li><a href="javascript:;">散文随笔</a></li>
            </ul>
        </li>
        <li><a href="javascript:;">社会学</a></li>
        <li><a href="javascript:;">心理学</a></li>
        <li><a href="javascript:;">经济学</a></li>
        <li><a href="javascript:;">自然科学</a></li>
        <li><a href="javascript:;">历史</a></li>
        <li><a href="javascript:;">其他</a>
            <ul class="clear">
                <li><a href="javascript:;">旅游攻略</a></li>
                <li><a href="javascript:;">周刊杂志</a></li>
                <li><a href="javascript:;">经典短语</a></li>
            </ul>
        </li>
        <div class="submission">
            <a href="javascript:;"><span class="icon_span"></span>我要投稿</a>
        </div>
    </ul>
</nav><!--导航结束-->
<div style="margin-left: 450px">
<form action="UpdateServlet" method="post">
    <!--hidden隐藏域-->
    <input type="hidden" name="id" value="${book1.id}"/>
    <br/>
    <br/>
    <input type="text" name="name" value="${book1.name}"/>
    <br/>
    <br/>
    <!--number数字框-->
    <input type="number" name="price" value="${book1.price}"/>
    <br/>
    <br/>
    <input type="text" name="press" value="${book1.press}"/>
    <br/>
    <br/>
    <input type="submit" value="修改"/>
</form>
</div>
</body>
</html>
