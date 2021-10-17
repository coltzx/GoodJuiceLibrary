<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
<link  href="css/css.css" rel="stylesheet" type="text/css">
<link  href="css/sign.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/sign.js"></script>

    <script type="text/javascript">
        function checkname(){
            //js获取html页面元素
            //js所有变量类型都是var
            var name = document.form1.name.value;

            //方法一: js编写ajax 淘汰
            //方法二: jquery编写ajax
            $.ajax({
                url:"CheckNameServlet",//请求地址
                data:"name=" + name,//请求参数,url拼接的方式
                type:"post",//请求类型
                success:function(msg){
                    if(msg=="0"){
                        $("#span").text("该用户名可以使用"); //text()方法文本赋值
                        $("#span").css("color","green"); //css()样式赋值
                        //$("input:submit").attr("disabled",false);//attr()禁用input submit按钮
                    }else{
                        $("#span").text("该用户名已被占用");
                        $("#span").css("color","red");
                        $("input:submit").attr("disabled",true);
                    }
                },
                error:function(){

                }
            });
    }

        function checkemail(){
            //js获取html页面元素
            //js所有变量类型都是var
            var email = document.form1.email.value;

            //方法一: js编写ajax 淘汰
            //方法二: jquery编写ajax
            $.ajax({
                url:"CheckEmailServlet",//请求地址
                data:"email=" + email,//请求参数,url拼接的方式
                type:"post",//请求类型
                success:function(msg1){
                    if(msg1=="0"){
                        $("#span2").text("该邮箱可以使用"); //text()方法文本赋值
                        $("#span2").css("color","green"); //css()样式赋值
                        // $("input:submit").attr("disabled",false);//attr()禁用input submit按钮
                    }else{
                        $("#span2").text("该邮箱已被占用");
                        $("#span2").css("color","red");
                        $("input:submit").attr("disabled",true);
                    }
                },
                error:function(){

                }
            });
        }

    </script>

<style>
.submit{ margin-left:82px;}
</style>
<!--<script>
$(document).ready(function(e) {
   (function()
	{
		var fm_img=$('.up_fm .fm_img');
		var fm_del=$('.up_fm .fm_colse');
		var file=$('.up_img .up_img2');
		fm(file.eq(0),fm_img.eq(0),fm_del.eq(0));
	})();//设置头像
	
	/*$('.up_img2').change(function()
	{
	   //console.dir($('.up_img2')[0].files)
	    console.dir($('.up_text2')[0].files[0].name)  //上传的文件名称
	});//多个上传文件信息
	*/
	(function()
	{
		var name=/^\s*[\w\.\@\u4e00-\u9fa5]{2,20}\s*$/;
		var email=/^\s*([a-zA-Z0-9][\w\.]{2,15})+@([a-zA-Z0-9]{2,5})+\.([a-zA-Z0-9]{2,5})\s*$/;
		var pwd=/^\s*[\w]{6,9}\s*$/;
		var ver=/^\s*[\w]{5,5}\s*$/;
		
		reg($('.text_1'),name);
		reg($('.text_2'),email);
		reg($('.text_3').eq(0),pwd);
		equal($('.text_3').eq(1),$('.text_3').eq(0))
		reg($('.style_none'),ver);
		
		$('.submit').click(function()
		{
			if(!name.test($('.text_1').val()))
			{
				$('.text_1').siblings('.none').slideDown('slow');
				$('.text_1').siblings('.none').find('i').css('color','red');
				return false;
			}
			if(!email.test($('.text_2').val()))
			{
				$('.text_2').siblings('.none').slideDown('slow');
				$('.text_2').siblings('.none').find('i').css('color','red');
				return false;
			}
			if(!pwd.test($('.text_3').eq(0).val()))
			{
				$('.text_3').eq(0).siblings('.none').slideDown('slow');
				$('.text_3').eq(0).siblings('.none').find('i').css('color','red');
				return false;
			}
			if(!pwd.test($('.text_3').eq(1).val()))
			{
				$('.text_3').eq(1).siblings('.none').slideDown('slow');
				$('.text_3').eq(1).siblings('.none').find('i').css('color','red');
				return false;
			}
			if($('.text_3').eq(1).val()!==$('.text_3').eq(0).val())
			{
				$('.text_3').eq(1).siblings('.none').slideDown('slow');
				$('.text_3').eq(1).siblings('.none').find('i').css('color','red');
				return false;
			}

			if(!ver.test($('.style_none').val()))
			{
				$('.style_none').siblings('.none').slideDown('slow');
				$('.style_none').siblings('.none').find('i').css('color','red');
				return false;
			}
			/*
			
			提交表单
			*/
		});
		
	})();
});

</script>-->
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

<div class="box">
<h3>注册账号<span class="right">已经有账号了？ 点击<a href="sign.html">登录</a></span></h3>

       <div class="menu_3">
         <form name="form1" id="user_name" action="RegisterServlet">
          <p><span>用 户 名：</span> <input type="text" name="name" value="" class="text_1" placeholder="用户名" autocomplete="off" onchange="checkname()" required>
              <br/>
              <span id="span"></span>

           </p>
           <p><span> 邮 &nbsp; &nbsp; &nbsp;箱：</span> <input type="text" name="email"  class="text_2"   autocomplete="off" onchange="checkemail()" required>
              <br/>
               <span id="span2"></span>
          </p>
          <p><span> &nbsp;密 码：</span> <input type="text" name="password"  class="text_3"   autocomplete="off" required>
              <br/>
          </p>
          <p><input type="submit"  value="提交保存"  class="submit"></p>
          </form>
       </div>
</div>
<footer class="clear">
    <p>阅读天地是学习分享平台，如对本站有意见和建议请<a href="javascript:;">留言</a></p>
    <p>本站所有信息仅用于学习交流，不用商业用途   <a href="http://www.womengda.cn/" >网站模板</a></p>
</footer><!--底部结束-->
</body>
</html>
