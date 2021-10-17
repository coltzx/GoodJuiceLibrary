<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导入jstl头部引用-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>首页</title>
    <link  href="css/css.css" rel="stylesheet" type="text/css">
    <link  href="css/index.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/js.js"></script>
    <script src="js/index.js"></script>

    <!--[if lt IE 9]>
    <script>for(var i=0,t="abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video, figcaption, main".split(", ");i<t.length;i++){document.createElement(t[i]);}</script>
    <![endif]-->
</head>

<!--[if lte IE 9]>
<body class="ie9-lt ">
<![endif]-->
<body>
<header class="clear">
    <img src="img/logo.jpg" >
    <div class="logo">
        <h1>好果汁图书馆</h1>
        <div class="clear"></div>
        <p>想看既看，想听既听得阅读</p>
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
        <!-- <div class="delu">
            <a  href="javascript:;">登录</a>
            <span>|</span>
            <a  href="javascript:;">注册</a>
          </div>-->
        <div class="delu2 clear">
            <div class="self ease">
                <a href="sign.html">登录</a>
                <a href="register.jsp">注册</a>
            </div>
            <span class="split">|</span>
            <a  href="javascript:;"  title="您有3条未读消息" class="news">消息<b>3</b></a>
        </div>
        <span>|</span>
        <a  href="tousu.html">意见反馈</a>
    </div>
</header><!--头部结束-->

<nav class="clear">
    <ul class="nav_1 clear">
        <div class="active"></div>
        <li><a href="javascript:;">首页</a></li>
        <li><a href="ArticleServlet">文学</a>
            <ul class="clear">
                <li><a href="javascript:;">现代文学</a></li>
                <li><a href="javascript:;">外国文学</a></li>
                <li><a href="javascript:;">古典文学</a></li>
                <li><a href="javascript:;">诗词歌赋</a></li>
                <li><a href="javascript:;">散文随笔</a></li>
            </ul>
        </li>
        <li><a href="list_article.jsp">社会学</a></li>
        <li><a href="list_article.jsp">心理学</a></li>
        <li><a href="list_article.jsp">经济学</a></li>
        <li><a href="list_article.jsp">自然科学</a></li>
        <li><a href="list_article.jsp">历史</a></li>
        <li><a href="list_article.jsp">其他</a>
            <ul class="clear">
                <li><a href="list_article2.html">旅游攻略</a></li>
                <li><a href="list_article2.html">周刊杂志</a></li>
                <li><a href="list_article2.html">经典短语</a></li>
            </ul>
        </li>
        <div class="submission">
            <a href="upload.jsp"><span class="icon_span"></span>我要投稿</a>
        </div>
    </ul>
</nav><!--导航结束-->

<div class="banner clear">
    <ul>
        <li class="active"><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
    </ul>
    <p class="num"><a href="javascript:;" class="active"></a><a href="javascript:;"></a><a href="javascript:;"></a><a href="javascript:;"></a></p>
    <p class="left_right">
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
    </p>
</div><!--banner结束-->

<div class="box">
    <h1>&emsp;&emsp;&emsp;欢迎来到好果汁图书馆请先&nbsp;<a href="sign.html"><i>登录</i></a>&nbsp;或&nbsp;<a href="register.jsp"><i>注册</i></a></h1>
</div><!--内容-->

<footer class="clear">
    <p>阅读天地是学习分享平台，如对本站有意见和建议请<a href="javascript:;">留言</a></p>
</footer>

</body>
</html>