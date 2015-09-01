<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/gameInfo.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script src="js/move.js"></script>
<script type="text/javascript">

	$(document).ready(function(){

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
		//球员排名
		for(var i=0; i<16; i++){
			if(i%2 == 0){
				$("div.rank").find("li:eq("+i+")").mouseover(function(){
					for(var j=0; j<16; j++){
						if(j%2 == 0){
							$("div.rank").find("li:eq("+j+")").show();
						}
						if(j%2 != 0){
							$("div.rank").find("li:eq("+j+")").hide();
						}
					}
					$(this).hide();
					$(this).next().show();
				});
			}
			
		}

		//男、女排名切换
		$("div#rankImg").find("span").each(function(index){
			$(this).click(function(){	
				$("div.rank:eq("+index+")").show().siblings(".rank").hide();
				$(this).addClass("ginfo").siblings("span").removeClass("ginfo");
			});
		});

		
		//第二列的切换
		$("div#gameInfo").find("li").each(function(index){
			$(this).click(function(){
				$(this).children("a").css("color","#2101A0").parent().siblings("li").children("a").css("color","black");
				$("div.main2:eq("+index+")").show().siblings(".main2").hide();
			});
		});

		
		
	});

	



	
	
</script>
</head>
<body style="width:100%;">
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
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="gameInfo.jsp" style="color:#2101A0;">赛事信息</a></li>
					<li><a href="newsAct.jsp">新闻活动</a></li>
					<li><a href="imgVideo.jsp">图片视频</a></li>
					<li><a href="playerInfo.jsp">球员信息</a></li>
					<li><a href="serviceArea.jsp">服务专区</a></li>
					<li><a href="cooperativePartner.jsp">合作伙伴</a></li>
					<li><a href="mbCD.jsp">最美蓉城</a></li>
					<li><a href="aboutUs.jsp">关于我们</a></li>
				</ul>
			</div>
			
			
			<div style="width:100%;height:1000px;">
				<!-- 第一列 -->
				<div class="main1" style="float:left;width:330px;height:1000px;">
					<!-- 赛事信息 -->
					<div style="width:330px;height:400px;background:#E6E6E6;">
						<div id="p1_sub">
							<img src="images/p1_sub_title.png">
						</div>
						<div id="gameInfo">
							<ul>
								<li><a href="#" style="color:#2101A0;">关于赛事  ABOUT THE GAME</a></li>
								<li><a href="#">赛程安排  COMPETITION SHEDULE</a></li>
								<li><a href="#">对阵签表  SIGNING TABLE</a></li>
							</ul>
						</div>
					</div>
					<!-- 球员排名 -->
					<div style="width:330px;height:600px;background:#F2F2F2;">
						<div id="rankImg">
							<img src="images/sub_left_rank.png">
							<div style="margin-top:5px;"><span class="ginfo">MEN男子</span>&nbsp;<span>WOMEN女子</span></div>
						</div>
						<!-- 男的 -->
						<div class="rank">
							<ul>
								<li style="display:none;"><img src="images/els.jpg" width="20px" height="15px;">&nbsp;NO.安德烈.鲁布列夫</li>
								<li>
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno1.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/els.jpg" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：安德烈.鲁布列夫</p>
											<p>Andrey RUBLEV</p>
											<p>国籍：俄罗斯 </p>
										</div>
									</div>	
								</li>
								<li><img src="images/bx.png" width="20px" height="15px;">&nbsp;NO.奥兰多.鲁兹</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno2.png" width="60px" height="80px;"></div>
											<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
												<span><img src="images/bx.png" width="20px" height="15px;" style="margin-top:2px;"></span>
												<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
												<p>姓名：奥兰多.鲁兹 </p>
												<p>Orlando LUZ</p>
												<p>国籍：巴西 </p>
											</div>
									</div>
								</li>
								<li><img src="images/xby.png" width="20px" height="15px;">&nbsp;NO.佐米.穆纳尔</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno3.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/xby.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：佐米.穆纳尔 </p>
											<p>Jaume MUNAR</p>
											<p>国籍：西班牙 </p>
										</div>
									</div>
								</li>
								<li><img src="images/mg.png" width="20px" height="15px;">&nbsp;NO.泰勒.佛里茨 </li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno4.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/mg.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：泰勒.佛里茨  </p>
											<p>Taylor FRITZ</p>
											<p>国籍：美国 </p>
										</div>
									</div>
								</li>
								<li><img src="images/hg.png" width="20px" height="15px;">&nbsp;NO.郑允成</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno5.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/hg.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：郑允成  </p>
											<p>Yunseong CHUNG</p>
											<p>国籍：韩国 </p>
										</div>
									</div>
								</li>
								<li><img src="images/mg.png" width="20px" height="15px;">&nbsp;NO.迈克尔.莫阿</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno6.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/mg.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：迈克尔.莫阿 </p>
											<p>Michael MMOH</p>
											<p>国籍：美国 </p>
										</div>
									</div>
								</li>
								<li><img src="images/hg.png" width="20px" height="15px;">&nbsp;NO.李德熙</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno7.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/hg.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：李德熙 </p>
											<p>Duck Hee LEE </p>
											<p>国籍：韩国 </p>
										</div>
									</div>
								</li>
								<li><img src="images/bx.png" width="20px" height="15px;">&nbsp;NO.马塞洛.卓尔曼</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/mno8.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/bx.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：马塞洛.卓尔曼</p>
											<p>Marcelo ZORMANN</p>
											<p>国籍：巴西 </p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- 女的 -->
						<div class="rank" style="display:none;">
							<ul>
								<li style="display:none;"><img src="images/zg.jpg" width="20px" height="15px;">&nbsp;NO.徐诗霖</li>
								<li>
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno1.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/zg.jpg" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：徐诗霖</p>
											<p>Shilin XU</p>
											<p>国籍：中国  </p>
										</div>
									</div>
								</li>
								<li><img src="images/bels.png" width="20px" height="15px;">&nbsp;NO.伊琳娜.夏曼罗维奇</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno2.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/bels.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：伊琳娜.夏曼诺维奇 </p>
											<p>Iryna SHYMANOVICH </p>
											<p>国籍：白俄罗斯   </p>
										</div>
									</div>
								</li>
								<li><img src="images/rs.png" width="20px" height="15px;">&nbsp;NO.吉尔贝伦劳拉</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno3.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/rs.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：吉尔贝伦劳拉 </p>
											<p>Jil Belen Lara TEICHMANN </p>
											<p>国籍：瑞士    </p>
										</div>
									</div>
								</li>
								<li><img src="images/slfk.png" width="20px" height="15px;">&nbsp;NO.克里斯汀娜.施米德洛娃</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno4.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/slfk.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：克里斯汀娜.施米德洛娃  </p>
											<p>Kristina SCHMIEDLOVA </p>
											<p>国籍：斯洛伐克 </p>
										</div>
									</div>
								</li>
								<li><img src="images/ltwy.png" width="20px" height="15px;">&nbsp;NO.耶莲娜.奥斯塔彭科</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno5.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/slfk.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：耶莲娜.奥斯塔彭科  </p>
											<p>Jelena OSTAPENKO  </p>
											<p>国籍：拉脱维亚 </p>
										</div>
									</div>
								</li>
								<li><img src="images/xby.png" width="20px" height="15px;">&nbsp;NO.阿丽奥纳.贝尔索娃 扎多诺</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno6.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:170px;height:80px;font-size:12px;">
											<span><img src="images/xby.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：阿丽奥纳.贝尔索娃 扎多诺  </p>
											<p>Aliona BOLSOVA ZADOINOV  </p>
											<p>国籍：西班牙 </p>
										</div>
									</div>
								</li>
								<li><img src="images/hg.png" width="20px" height="15px;">&nbsp;NO.玛可塔.万卓索娃</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno7.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/xby.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：玛可塔.万卓索娃  </p>
											<p>Marketa VONDROUSOVA  </p>
											<p>国籍：捷克共和国 </p>
										</div>
									</div>
								</li>
								<li><img src="images/lmny.png" width="20px" height="15px;">&nbsp;NO.埃琳娜-加布里埃拉.鲁斯</li>
								<li style="display:none;">
									<div style="width:250px;height:80px;">
										<div style="float:left;"><img src="images/wno8.png" width="60px" height="80px;"></div>
										<div style="float:left;margin-left:20px;width:150px;height:80px;font-size:12px;">
											<span><img src="images/lmny.png" width="20px" height="15px;" style="margin-top:2px;"></span>
											<font style="font-weight:bold;color:#2101A0;font-size:16px;">NO.</font>
											<p>姓名：埃琳娜-加布里埃拉.鲁斯  </p>
											<p>Elena-Gabriela RUSE  </p>
											<p>国籍：罗马尼亚</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
				
				
				
				
				
				<!-- 第二列 -->
				<!-- 关于赛事    对应的右边的div -->
				<div class="main2" style="float:left;width:650px;height:1000px;">
					<!-- 白色区域 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="gameInfo.jsp">赛事信息</a>-><a href="#">关于赛事</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p1_1_title.jpg">
						</div>
					</div>
					<!-- 灰色区域 -->
					<div style="width:100%;height:300px;background:#F0F0F0;">
						<div style="float:left;width:35%;height:250px;margin-top:30px;margin-left:30px;">
							<img src="images/master.png" width="220px" height="200px;">
						</div>
						<div class="info">
							<!-- 一行信息 -->
							<div style="width:100%;height:30px;background:white;">
								<div class="infoInline" style="background:#A6D2FF;">中文名</div>
								<div class="infoInline" style="width:70%;">国际网联青少年大师赛</div>
							</div>
							<div style="width:100%;height:30px;background:white;margin-top:5px;">
								<div class="infoInline" style="background:#A6D2FF;">英文名</div>
								<div class="infoInline" style="width:70%;">ITF junior masters</div>
							</div>
							<div style="width:100%;height:30px;background:white;margin-top:5px;">
								<div class="infoInline" style="background:#A6D2FF;">举办地</div>
								<div style="width:70%;">中国·成都·双流</div>
							</div>
							<div style="width:100%;height:30px;background:white;margin-top:5px;">
								<div class="infoInline" style="background:#A6D2FF;">比赛时间</div>
								<div style="width:70%;">2015.3.31-4.6</div>
							</div>
							<div style="width:100%;height:30px;background:white;margin-top:5px;">
								<div class="infoInline" style="background:#A6D2FF;">球场</div>
								<div class="infoInline" style="width:70%;">四川国际网球中心</div>
							</div>
							<div class="shareA">
								分享:&nbsp;<a href="#">微信</a>&nbsp;<a href="#">微博</a>
							</div>
						</div>
					</div>
					<!-- 赛事简介 -->
					<div style="width:100%;height:400px;">
						<!-- 左边文字 -->
						<div style="float:left;width:50%;height:360px;margin-top:20px;margin-left:20px;">
							<div><img src="images/p1_1_title1.jpg"></div>
							<div style="margin-top:10px;">&nbsp;&nbsp;国际网联青少年大师赛是国际网球联合会（ITF）成立100年
							之际，倾力创办的一项全球顶级的青少年网球赛事，是继国际男子职业网球协会（ATP）和国际
							女子职业网球协会（WTA）两项年终总决赛之后，世界网坛的第三项网球年度总决赛，参赛选手
							为国际网联青少年（18岁及以下）排名男、女前八名的优秀选手，代表着全球青少年网球的最高
							水平。<br/><br/> &nbsp;&nbsp;赛事由国际网球联合会、中国网球协会、成都市人民政府主办，承办方为成都市
							体育局和双流县人民政府，四川川投国际网球中心开发有限责任公司负责赛事运营。 </div>
							<div class="shareA" style="margin-top:20px;">
								分享:&nbsp;<a href="#">微信</a>&nbsp;<a href="#">微博</a>
							</div>
						</div>
						<!-- 右边图片 -->
						<div style="float:left;width:40%;height:360px;margin-top:20px;margin-left:20px;">
							<img src="images/infoImg.JPG" width="250px" height="338px;">
						</div>
					</div>
					
					<!-- 赛事文化 -->
					<div style="width:100%;height:190px;background:#F2F2F2;">
						<div style="float:left;width:30%;height:170px;margin-top:20px;margin-left:20px;">
							<img src="images/gameCulture.png" width="195px" height="170px">
						</div>
						<div style="float:left;width:60%;height:170px;margin-top:20px;margin-left:20px;">
							<div><img src="images/p1_1_title2.png"></div>
							<div style="padding-top:20px;">&nbsp;&nbsp;作为青少年网球选手，我们是新星的一代，不仅在将来会
							成为新的网球巨星更是代表着网球事业的未来。我们自信、我们坚韧、我们年轻，具备无限潜能，
							我们会通过国际网联青少年大师赛的国际舞台，闪耀全球，与国际网联青少年大师赛一起腾飞。	
							</div>
						</div>
					</div>
				</div>
				
				
				
				<!-- 赛程安排 -->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<div style="width:100%;height:30px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="gameInfo.jsp">赛事信息</a>-><a href="#">赛程安排</a>	</p>
					</div>
					<div style="width:90%;height:960px;margin-left:50px;">
						<img src="images/scap.jpg" width="553px" height="200px;">
						<img src="images/scap2.jpg" width="553px" height="330px">
						<img src="images/scap3.jpg" width="553px" height="400px;">
					</div>
				</div>
				
				
				
				
				<!-- 对阵签表 -->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<div style="width:100%;height:50px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="gameInfo.jsp">赛事信息</a>-><a href="#">对阵签表</a>	</p>
					</div>
					<div style="width:90%;height:940px;margin-left:50px;">
						<img src="images/manSingle.jpg">
						<img src="images/womanSingle.jpg">
						
					</div>
				</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			</div>		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<!--   底部导航 -->
			<div style="width:100%;height:250px;background:#8A9339;">
				<div class="gpsDown">
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