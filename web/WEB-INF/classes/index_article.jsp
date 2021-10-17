<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导入jstl头部引用-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>频道列表页</title>
<link  href="css/css.css" rel="stylesheet" type="text/css">
<link  href="css/index_article.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
    <script>
        function stay(){
            //js获取html页面元素
            //js所有变量类型都是var
            //var name = document.form1.name.value;

            //方法一: js编写ajax 淘汰
            //方法二: jquery编写ajax
            $.ajax({
                url:"BookServlet",//请求地址
                //data:"name=" + name,//请求参数,url拼接的方式
                type:"get",//请求类型
                success:function(msg){
                    if(msg=="0"){
                        $("#res").text("借阅"); //text()方法文本赋值
                    }else{
                        $("#res").text("归还");
                    }
                },
                error:function(){

                }
            });
        }
    </script>

</head>

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
<div class="delu">
    <p>欢迎：${welcome}</p>
    <a href="LogoutServlet">注销</a>
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
</header><!--头部结束-->

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

<div class="box clear">
 <ul class="list left">
    <p>文学类</p>
     <li class="active"><a href="javascript:;">现代文学</a></li>
     <li><a href="javascript:;">外国文学</a></li>
     <li><a href="javascript:;">古典文学</a></li>
     <li><a href="javascript:;">诗词歌赋</a></li>
     <li><a href="javascript:;">散文随笔</a></li>
 </ul><!--左边列表-->
 
 <div class="con left">
   <div class="position"><a href="javascript:;">首页</a> > <a href="javascript:;">文学类</a> > <a href="javascript:;"  class="acative">现代文学</a></div>
   <ul class="con_list clear">
<c:forEach var="book" items="${list0}">
       <li class="ease">
       <a href="javascript:;"><img src="img/article2.jpg"></a>
       <div class="sm">
       <p> <a href="arcticle3.html">有声阅读</a> 
        <a href="list_info.html">在线阅读</a> </p>
       <p> <a href="BookServlet?id=${book.id}" onclick="stay()"><span class="icon down"></span> 借/还 </a>
        <a href="#"><span class="icon sc"></span>收藏</a></p>
       </div>
       <p class="s_n"><a href="javascript:;">${book.name}</a></p>
       </li>
</c:forEach>
   </ul>
   <!--列表内容-->
   
   <ul class="page clear">
       <li> <a href="ArticleServlet?changePageNow=0">首页</a></li>
       <li><a href="ArticleServlet?changePageNow=${pageNow - pageSize}">上一页</a></li>

       <c:forEach begin="1" end="${pageCount}" varStatus="status">
           <c:if test="${status.index==(pageNow/pageSize)+1}">
               <a style="color:red" href="ArticleServlet?changePageNow=${(status.index-1)*pageSize}">${status.index}</a>
           </c:if>
           <c:if test="${status.index!=(pageNow/pageSize)+1}">
               <a href="ArticleServlet?changePageNow=${(status.index-1)*pageSize}">${status.index}</a>
           </c:if>
       </c:forEach>

        <li><a href="ArticleServlet?changePageNow=${pageNow + pageSize}">下一页</a></li>
       <li><a href="ArticleServlet?changePageNow=${(pageCount-1)*pageSize}">尾页</a></li>
   </ul><!--分页-->
   
 </div><!--右边内容页-->

</div><!--中间内容区-->

<footer class="clear">
    <p>阅读天地是学习分享平台，如对本站有意见和建议请<a href="javascript:;">留言</a></p>
</footer>

</body>
</html>
