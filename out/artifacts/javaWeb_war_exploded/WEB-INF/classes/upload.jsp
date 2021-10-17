<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导入jstl头部引用-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>上传图书</title>
    <link  href="css/css.css" rel="stylesheet" type="text/css">
    <link  href="css/list.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/js.js"></script>
    <script src="js/list.js"></script>
    <script src="js/list_1.js"></script>
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
        <div class="delu">
            <a  href="javascript:;">登录</a>
            <span>|</span>
            <a  href="javascript:;">注册</a>
        </div>
        <!--  <div class="delu2 clear">
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
          </div>-->
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

<div class="c_4" style="margin-left: 450px">
    <form name="form1" class="up_file2" enctype="multipart/form-data" id="word_file" action="UploadServlet">
    <p class="border_b"></p>
    <div class="banqu">
        我们支持text,pdf,word等文件格式，文件≤200M，请上传合格文档。
        <p class="red"> 如上传盗版内容，将会导致下架、封号、索赔，甚至被追究刑事责任。</p>
    </div>
        <br/>
        <br/>
        <br/>
        <b class="blur">书名</b><input type="text" name="title" placeholder="输入书名">
        <br/>
        <br/>
        <b class="blur">作者</b> <input type="text" name="author" placeholder="输入作者">
        <br/>
        <br/>
        <b class="blur">出版社</b> <input type="text" name="press" placeholder="输入出版社">
        <br/>
        <br/>
        <b class="blur">定价</b> <input type="text" name="price" placeholder="输入价格">
        <p style="margin-left:70px; padding-top:20px"><input type="submit" value="保存" class="submit"></p>
    </form><!--文件信息-->
</div><!--上传普通文档 -->
</body>
</html>
