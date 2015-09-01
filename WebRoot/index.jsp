<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script src="js/move.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
	//	alert($("div#wwr").find("div").eq(0).find("li").eq(0));
		
		//weibo
		$("div#wwr").find("div").eq(0).find("li").eq(0).mouseover(function(){
			$("div#wwr").find("div").eq(1).find("li").eq(0).show();
		}).mouseout(function(){
			$("div#wwr").find("div").eq(1).find("li").eq(0).hide();
		});
		$("div#wwr").find("div").eq(1).find("li").eq(0).mouseover(function(){
			$(this).show();
		}).mouseout(function(){
			$(this).hide();
		});
		//weixin
		$("div#wwr").find("div").eq(0).find("li").eq(1).mouseover(function(){
			$("div#wwr").find("div").eq(1).find("li").eq(1).show();
		}).mouseout(function(){
			$("div#wwr").find("div").eq(1).find("li").eq(1).hide();
		});
		$("div#wwr").find("div").eq(1).find("li").eq(1).mouseover(function(){
			$(this).show();
		}).mouseout(function(){
			$(this).hide();
		});

		//视频右边的图片透明度变换
		for(var m=0; m<3; m++){
			
			$("div#videoImg").find("img:eq("+m+")").mouseover(function(){
				$(this).removeClass("videoImgFilter");
			}).mouseout(function(){
				$(this).addClass("videoImgFilter");
			});
		}
		//图片集透明度变换
		for (var i=0; i<6; i++){
			$("div#tj").find("img:eq("+i+")").mouseover(function(){
				$(this).addClass("tjfilter");
			}).mouseout(function(){
				$(this).removeClass("tjfilter");
			});
		}

		//对阵签表点击放大
		$("div#duizhenTable").find("img").eq(0).click(function(){	
			if($(this).css("width") != '330px'){
				$(this).removeClass("duizhenTableImg");
			}else{
				$(this).addClass("duizhenTableImg");
			}
				
		});

		
		//比分直播
		$("div#scoreDate").find("li").each(function(index){
			var sLi = $(this);
			sLi.mouseover(function(){	
				sLi.addClass("bg").siblings().removeClass("bg");
				$("div#scoreTab").find("div:eq("+index+")").show().siblings().hide();
			});
		});
			

		
		
	});

	



	
	//js代码来实现news中图片切换
	var news_imagesInfo=["决赛之夜！头号种子“君临”蓉城",
	                 	"男女半决赛赛况汇总！",
	                 	"首轮战报！种子选手纷纷告捷！",
	                 	"今日赛程！"
	                ];
    window.onload = function(){
        
        var oNews = document.getElementById('news');
        var oul = oNews.getElementsByTagName('ul')[0];
        var aPicLi = oNews.getElementsByTagName('li');
        var oPoint = document.getElementById('point');
        var aPointLi = oPoint.getElementsByTagName('li');
        var oText = document.getElementById('text');
        var now = 0;
    	for(var i=0; i<aPointLi.length; i++){
    		aPointLi[i].index = i;
    		aPointLi[i].onclick = function(){
				now = this.index;
				tab();
			};
		}
		function tab(){
			for(var i=0; i<aPointLi.length; i++){
				aPointLi[i].className = '';
			}
			aPointLi[now].className = 'ac';
			startMove(oul,{left:-650*now});
			oText.innerHTML = news_imagesInfo[now];
		}
		
		function next(){
			now++;
			if(now == aPointLi.length){
				now = 0;
			}
			tab();
		}
		var timer = setInterval(next,5000);
		
		oNews.onmouseover = function(){
			clearInterval(timer);
		};
		oNews.onmouseout = function(){
			timer = setInterval(next,5000);
		};
    };
	
</script>
</head>
<body style="width:100%;height:1900px;">
	<!-- 锚属性 -->
	<a name="top"></a>
	
	<!-- 最顶端的导航 -->
	<div class="topDiv">
	<a href="#">欢迎访问 2015 ITF Junior Masters 中国·成都 国际网联青少年大师赛官方网站 </a>
	<a href="#" style="margin-left:500px;">简体中文</a>&nbsp;&nbsp;
	<a href="#">ENGLISH</a>
	</div>
	
	<!-- logo图片 -->
	<div class="subDiv">
		<img src="images/sub_logo.png"/>
	</div>
	
	<!-- logo图片上面的四张图 -->
	<div class="mainDiv">
		<a href="#"><img src="images/main_logo01.png"/></a>
		<a href="#"><img src="images/main_logo02.png"/></a>
		<a href="#"><img src="images/main_logo03.png"/></a>
		<a href="#"><img src="images/main_logo04.png"/></a>
		
	</div>
	
	<!-- 左侧在线订票 -->
	<div class="order">
		<a href="#"><img src="images/order.jpg"></a>
	</div>
	
	
	<div id="wwr">
		<!-- 微博微信返回顶部 -->
		<div style="float:left;">
			<ul style="list-style:none;">
				<li><a href="#"><img src="images/wb.jpg"></a></li>
				<li><a href="#"><img src="images/wx.jpg"></a></li>
				<li><a href="#top"><img src="images/retop.jpg"></a></li>
			</ul>
		</div>
		<!-- 微博微信二维码 -->
		<div style="float:left;">
			<ul style="list-style:none;">
				<li style="display:none;position:absolute;top:0px;right:15px;"><a href="#"><img src="images/wb_box.png"></a></li>
				<li style="display:none;position:absolute;top:45px;right:15px;"><img src="images/wx_box.png"></li>
			</ul>
		</div>
	</div>
	
	<!-- 下半部分 -->
	<div class="downContent">
		<!-- 中间部分 -->
		<div class="mainContent">
			<!-- 导航栏 -->
			<div class="gps">
				<ul style="list-style:none;">
					<li><a href="index.jsp" style="color:#2101A0;">网站首页</a></li>
					<li><a href="gameInfo.jsp">赛事信息</a></li>
					<li><a href="newsAct.jsp">新闻活动</a></li>
					<li><a href="imgVideo.jsp">图片视频</a></li>
					<li><a href="playerInfo.jsp">球员信息</a></li>
					<li><a href="serviceArea.jsp">服务专区</a></li>
					<li><a href="cooperativePartner.jsp">合作伙伴</a></li>
					<li><a href="mbCD.jsp">最美蓉城</a></li>
					<li><a href="aboutUs.jsp">关于我们</a></li>
				</ul>
			</div>
			
			<!-- 第一板块 news-->
			<div style="width:100%;height:375px;">
				<!-- 左边新闻图片 -->
				<div id="news">
					<ul style="list-style:none;">
						<li><a><img src="images/news1.JPG"></a></li>
						<li><a><img src="images/news2.JPG"></a></li>
						<li><a><img src="images/news3.JPG"></a></li>
						<li><a><img src="images/news4.png"></a></li>
					</ul>
				</div>
				<!-- 图片上的文字 -->
				<div id="text">
					决赛之夜！头号种子“君临”蓉城
				</div>
				<!-- 图片上的点点 -->
				<div id="point">
					<ul>
						<li class="ac"></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<!-- 右边新闻文字 -->
				<div id="topNews">
					<div><img src="images/index_pic_title.png"></div>
					<div><a href="#">决赛之夜！头号种子“君临”蓉城</a></div>
					<div style="margin-top:80px;">04/05<a href="#">男女半决赛赛况汇总！</a></div>
					<div>04/04<a href="#">首轮战报！种子选手纷纷告捷！</a></div>
					<div>04/04<a href="#">今日赛程！</a></div>
				</div>
			</div>
			
			<!-- 第二板块视频 -->
			<div style="width:100%;height:375px;">
				<!-- 左边部分 -->
				<div style="float:left;width:650px;height:375px;">
					<!-- 标题图片and more -->
					<div style="width:650px;height:50px;line-height:30px;">
						<div style="float:left;width:100px;height:28px;line-height:28px;margin-left:40px;margin-top:20px;"><a href="#"><img src="images/index_video_title.png"></a></div>
						<div style="float:left;width:100px;height:28px;line-height:28px;margin-left:400px;margin-top:20px;"><a href="#"><img src="images/index_more.png"></a></div>
					</div>
					<!-- 视频和图片 -->
					<div style="width:650px;height:280px;">
						<div style="float:left;width:400px;height:280px;margin-left:40px;">
							<video width="400" height="280" controls="controls">
								<source src="video/best future.mp4" type="video/ogg">
								Your browser does not support the video tag.
							</video>
						</div>
						<div id="videoImg">
							<ul>
								<li><img src="images/videoImg1.png" class="videoImgFilter"></li>
								<li><img src="images/videoImg2.png" class="videoImgFilter"></li>
								<li><img src="images/videoImg3.png" class="videoImgFilter"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 右边    比分直播 -->
				<div class="score">
					<div class="scoreImg">
					<a href="#"><img src="images/score.png"></a>
					</div>
					<div id="scoreDate">
						<ul>
							<li>4月3日</li>
							<li>4月4日</li>
							<li>4月5日</li>
						</ul>
					</div>
					<div id="scoreTab">
						<!-- 4月3日 1、2场 -->
						<div style="width:280px;height:250px;">
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第一场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px">徐诗霖</th>
									<th width="55px">6</th>
									<th width="55px">6</th>
									<th width="55px">&nbsp;</th>
								</tr>
								<tr>
									<th  width="90px">阿丽奥纳·贝尔索娃·扎多诺</th>
									<th width="55px">3</th>
									<th width="55px">3</th>
									<th width="55px">&nbsp;</th>
								</tr>
							</table>
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第二场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px">徐诗霖</th>
									<th width="55px">6</th>
									<th width="55px">6</th>
									<th width="55px">&nbsp;</th>
								</tr>
								<tr>
									<th  width="90px">阿丽奥纳·贝尔索娃·扎多诺</th>
									<th width="55px">3</th>
									<th width="55px">3</th>
									<th width="55px">&nbsp;</th>
								</tr>
							</table>
						</div>
						<!-- 4月4日 1、2场 -->
						<div style="display:none;width:280px;height:250px;">
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第一场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px">泰勒·佛里茨</th>
									<th width="55px">6</th>
									<th width="55px">3</th>
									<th width="55px">6</th>
								</tr>
								<tr>
									<th  width="90px">奥兰多·鲁兹</th>
									<th width="55px">2</th>
									<th width="55px">3</th>
									<th width="55px">1</th>
								</tr>
							</table>
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第二场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px">阿丽奥纳·贝尔索娃·扎多诺</th>
									<th width="55px">4</th>
									<th width="55px">7</th>
									<th width="55px">6</th>
								</tr>
								<tr>
									<th  width="90px">玛可塔·万卓索娃</th>
									<th width="55px">6</th>
									<th width="55px">6</th>
									<th width="55px">1</th>
								</tr>
							</table>
						</div>
						<!-- 4月5日 1、2场 -->
						<div style="display:none;width:280px;height:250px;">
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第一场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px"> 徐诗霖</th>
									<th width="55px">7</th>
									<th width="55px">4</th>
									<th width="55px">6</th>
								</tr>
								<tr>
									<th  width="90px">吉尔· 泰克曼</th>
									<th width="55px">6</th>
									<th width="55px">6</th>
									<th width="55px">3</th>
								</tr>
							</table>
							<table border="1" style="font-size:12px;">
								<tr>
									<th width="90px">第二场</th>
									<th width="55px">第一盘</th>
									<th width="55px">第二盘</th>
									<th width="55px">第三盘</th>
								</tr>
								<tr>
									<th  width="90px">埃琳娜-加布里埃拉·鲁斯</th>
									<th width="55px">2</th>
									<th width="55px">6</th>
									<th width="55px">2</th>
								</tr>
								<tr>
									<th  width="90px">耶莲娜·奥斯塔彭科</th>
									<th width="55px">6</th>
									<th width="55px">3</th>
									<th width="55px">6</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- 第三板块 图片集锦和对阵签表 -->
			<div style="width:100%;height:375px;">
				<!-- 左边对阵签表 -->
				<div style="float:left;width:330px;height:375px;">
					<div style="width:330px;height:75px;padding-left:80px;padding-top:25px;background:#9E9E9E;">
						<a href="#"><img src="images/dzqb.png"></a>
					</div>
					<div id="duizhenTable" style="width:330px;height:300px;z-index:10;position:absolute;">
						<img src="images/duizhen.jpg" width="330px" height="300px">
					</div>
				</div>
				<!-- 右边图片锦集 -->
				<div style="float:left;width:650px;height:375px;background:#E8E8E8;">
					<!-- 标题图片and more -->
					<div style="width:650px;height:75px;">
						<div style="float:left;width:100px;height:28px;line-height:28px;margin-left:40px;margin-top:30px;"><a href="#"><img src="images/index_pic_title.png"></a></div>
						<div style="float:left;width:100px;height:28px;line-height:28px;margin-left:400px;margin-top:30px;"><a href="#"><img src="images/index_more.png"></a></div>
					</div>
					<!-- 图片集 -->
					<div id="tj">
						<div><a href="#"><img src="images/tj1.jpg"></a></div>
						<div><a href="#"><img src="images/tj2.jpg"></a></div>
						<div style="width:250px;"><a href="#"><img src="images/tj3.jpg"></a></div>
						<div style="width:250px;"><a href="#"><img src="images/tj4.jpg"></a></div>
						<div style="padding-left:0;"><a href="#"><img src="images/tj5.jpg"></a></div>
						<div><a href="#"><img src="images/tj6.jpg"></a></div>
					</div>
				</div>
			</div>
			
			
			<!-- 第四板块    合作单位 -->
			<div style="width:100%;height:375px;">
				<div style="width:100%;height:335px;overflow:hidden;">
					<img src="images/hezuodanwei.jpg" >
				</div>
			</div>
			
			<!-- 第五板块  底部导航 -->
			<div style="width:100%;height:250px;background:#8A9339;">
				<div class="gpsDown"style="">
					<dl style="">
						<dt><a href="#">赛事信息</a></dt>
						<dd><a href="#">关于赛事</a></dd>
						<dd><a href="#">赛事安排</a></dd>
						<dd><a href="#">对阵签表</a></dd>
						<dd><a href="#">实时比分</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">新闻活动</a></dt>
						<dd><a href="#">新闻快讯</a></dd>
						<dd><a href="#">图片新闻</a></dd>
						<dd><a href="#">活动专区</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">图片视频</a></dt>
						<dd><a href="#">宣传视频</a></dd>
						<dd><a href="#">精彩图集</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">球员信息</a></dt>
						<dd><a href="#">男子球员</a></dd>
						<dd><a href="#">女子球员</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">服务专区</a></dt>
						<dd><a href="#">场馆配套</a></dd>
						<dd><a href="#">酒店服务</a></dd>
						<dd><a href="#">交通导航</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">关于我们</a></dt>
						<dd><a href="#">公司介绍</a></dd>
						<dd><a href="#">联系我们</a></dd>
					</dl>
					<dl style="float:left;margin-left:30px;">
						<dt><a href="#">友情连接</a></dt>
						<dd><a href="#">国际网球</a></dd>
						<dd><a href="#">联合会中国网球协会</a></dd>
						<dd><a href="#">成都市体育局</a></dd>
					</dl>

					
				</div>
				<div style="float:left;width:230px;height:180px;margin-top:30px;">
					<div>
						<img src="images/wb.jpg">
						<img src="images/wx.jpg">
					</div>
					<p>欢迎关注ITF官方微博微信</p>
				</div>
			</div>
			
			<!-- 底部版权 -->
			<div style="width:100%;height:90px;text-align:center;padding-top:20px;font-size:12px;background:#A7BE49;">
				<p>@COPYRIGHT 2014-2028 ALL RIGHTS RESERVED POWORD BY JL-TECH </p>
				<p>四川国际网球中心开发有限责任公司 蜀ICP备14023357号</p>
			</div>
		</div>
	</div>
	
	
</body>
</html>