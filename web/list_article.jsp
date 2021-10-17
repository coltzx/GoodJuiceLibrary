<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导入jstl头部引用-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>书籍列表页</title>
<link  href="css/css.css" rel="stylesheet" type="text/css">
<link  href="css/list.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/list.js"></script>
<script src="js/list_1.js"></script>
<style>
    /* Border styles */
    #table-1 thead, #table-1 tr {
        border-top-width: 1px;
        border-top-style: solid;
        border-top-color: #a8bfde;
    }
    #table-1 {
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-bottom-color: #a8bfde;
    }

    /* Padding and font style */
    #table-1 td, #table-1 th {
        padding: 5px 10px;
        font-size: 12px;
        font-family: Verdana;
        color: #5b7da3;
    }

    /* Alternating background colors */
    #table-1 tr:nth-child(even) {
        background: #d3dfed
    }
    #table-1 tr:nth-child(odd) {
        background: #FFF
    }
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

<h1 style="margin-left: 420px;color: cornflowerblue">${msg}</h1>

<div class="box clear">
     <div class="list">
         <div class="tit">
             <table id="table-1" width="700px" class="table table-hover">
                 <tr>
                     <td>书名</td>
                     <td>作者</td>
                     <td>价格</td>
                     <td>出版社</td>
                     <td>状态</td>
                 </tr>
                 <tr>
                     <td>${book.name}</td>
                     <td>${book.author}</td>
                     <td>${book.price} ¥</td>
                     <td>${book.press}</td>
                     <td>${book.stay}</td>
                 </tr>
             </table>
         </div>
     </div>
     <div class="list2">
           <div class="one">
                <p>新书上架</p>
                <div class="notice">
                    <ul>
                    <li><a href="list_info.html">文化苦旅</a></li>
                    <li><a href="javascrip:;">谢谢你曾来过我的世界</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
               <!-- <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>-->
                   </ul>
                </div>
            </div><!--新书上架结束-->
         
         <div class="two">
           <p><a href="javascript:;" class="active">本周最热排行</a><a href="javascript:;">本月最热排行</a></p>
                   <ul class="active">
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">谢谢你曾来过我的世界</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                   </ul>
                    <ul>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">谢谢你曾来过我的世界</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">文化苦旅</a></li>
                    <li><a href="javascrip:;">谢谢你曾来过我的世界</a></li>
                   </ul>
         </div><!--tab切换-->
     </div>
</div>

<footer class="clear">
    <p>阅读天地是学习分享平台，如对本站有意见和建议请<a href="javascript:;">留言</a></p>
    <p>本站所有信息仅用于学习交流，不用商业用途   <a href="http://www.womengda.cn/" >网站模板</a></p>
</footer>

</body>
</html>
