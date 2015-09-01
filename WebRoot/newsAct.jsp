<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/newsAct.css" type="text/css"></link>
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



		//新闻快讯中，每一条隐藏的div
		$("p.pText").each(function(index){
			$(this).mouseover(function(){
				$("div.pTextDiv:eq("+index+")").show().siblings(".pTextDiv").hide();
			}).mouseout(function(){
				$("div.pTextDiv:eq("+index+")").hide();
			});
		});
		
		//第二列的切换
		$("div#newsInfo").find("li").each(function(index){
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
					<li><a href="gameInfo.jsp">赛事信息</a></li>
					<li><a href="#" style="color:#2101A0;">新闻活动</a></li>
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
						<div id="p2_sub">
							<img src="images/p2_sub_title.png">
						</div>
						<div id="newsInfo">
							<ul>
								<li><a href="#" style="color:#2101A0;">新闻快讯  NEWS</a></li>
								<li><a href="#">图片新闻  PHOTO NEWS</a></li>
								<li><a href="#">活动专区  ACTIVITY</a></li>
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
				
				<!-- 新闻快讯    对应的右边的div -->
				<div class="main2" style="float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="newsAct.jsp">新闻活动</a>-><a href="#">新闻快讯</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p2_1_title.jpg">
						</div>
					</div>
					<!-- 新闻快讯详细信息 -->
					<div style="width:92%;height:800px;margin-left:20px;">
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								01
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">决赛之夜！头号种子“君临”蓉城</p>
									<p style="color:#CC0000;">2015/04/05</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:610px;">暂无简介</div>
							</div>
						</div>
						
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								02
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">男女半决赛赛况汇总！</p>
									<p style="color:#CC0000;">2015/04/05</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:710px;">暂无简介</div>
							</div>
						</div>
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								03
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">首轮战报！种子选手纷纷告捷！</p>
									<p style="color:#CC0000;">2015/04/04</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:810px;">暂无简介</div>
							</div>
						</div>
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								04
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">今日赛程！</p>
									<p style="color:#CC0000;">2015/04/04</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:910px;">暂无简介</div>
							</div>
						</div>
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								05
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">国际网联青少年大师赛顺利开幕！</p>
									<p style="color:#CC0000;">2015/04/04</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:1010px;">暂无简介</div>
							</div>
						</div>
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								06
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">大战前夜！大师赛你不知道的那些事</p>
									<p style="color:#CC0000;">2015/04/03</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:1110px;">暂无简介</div>
							</div>
						</div>
						<!-- 一行信息 -->
						<div style="width:100%;height:100px;border-style:dotted;border-width:0 0 1px 0;">
							<div class="oneNewsInfo"style="text-align:center;line-height:80px;">
								07
							</div>
							<div class="oneNewsInfo" style="width:80%;height:80px;border:0;margin-left:10px;font-size:14px;">
								<div style="float:left;width:50%;height:80px;font-size:14px;padding-top:0px;">
									<p class="pText" style="color:black;">集结！赛事志愿者培训工作火热展开</p>
									<p style="color:#CC0000;">2015/03/17</p>
								</div>
								<div style="float:left;width:10%;margin-left:180px;"><img src="images/index_more.png"></div>
								<!-- 高一层级的div -->
								<div class="pTextDiv"style="top:1210px;">国际网联青少年大师赛是国际网球联合会（ITF）成立100年
							之际，倾力创办的一项全球顶级的青少年网球赛事，是继国际男子职业网球协会（ATP）和国际
							女子职业网球协会（WTA）两项年终总决赛之后，世界网坛的第三项网球年度总决赛，参赛选手
							为国际网联青少年（18岁及以下）排名男、女前八名的优秀选手，代表着全球青少年网球的最高
							水平。</div>
							</div>
						</div>
						<!-- 显示分页 -->
						<div style="width:100%;height:100px;line-height:100px;text-align:center;background:blue;">
							显示分页
						</div>
					</div>
				</div>
				
				
				
				
				
				
				
				<!-- 图片新闻 -->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="newsAct.jsp">新闻活动</a>-><a href="#">图片新闻</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p2_2_title.png">
						</div>
					</div>
					<div style="width:100%;height:890px;background:#F2F2F2;"></div>
				</div>
				
				
				
				
				
				
				<!-- 活动专区 -->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="newsAct.jsp">新闻活动</a>-><a href="#">活动专区</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p2_3_title.jpg">
						</div>
					</div>
					<!-- 内容 -->
					<div style="width:100%;height:890px;background:#F2F2F2;">
						<!-- 一个一个的activity  div -->
						<div style="width:100%;height:750px;">
							<div class="oneActivity">
								<img src="images/ac1.jpg" width="145px" height="145px;">
								<div><a href="#">赛事媒体报名</a></div>
								<div>2015年4月3日-4月5日，国际网联青少年大师赛将会在中国 成都隆重举... </div>
								<div>
									2015/02/27
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac2.jpg" width="145px" height="145px;">
								<div><a href="#">2015国际网联青少年大师赛网络报名志愿者录取名单</a></div>
								<div>2015年国际网联青少年大师赛志愿者两场现场面试已于2015年1月3...  </div>
								<div>
									2015/02/04
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac3.jpg" width="145px" height="145px;">
								<div><a href="#">关于延迟公布志愿者名单的通知</a></div>
								<div>因本次网络报名志愿者面试时间为2015年1月9日和2015年1月30日，... </div>
								<div>
									2015/01/12
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac4.jpg" width="145px" height="145px;">
								<div><a href="#">关于2015国际网联青少年大师赛志愿者面试的通知</a></div>
								<div>2015年国际网联青少年大师赛志愿者网络招募报名已结束，根据赛事组委... </div>
								<div>
									2014/12/30
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac5.jpg" width="145px" height="145px;">
								<div><a href="#">【你转我送】国际网联青少年大师赛微信微博转送活动</a></div>
								<div>国际网联青少年大师赛与你一起过圣诞、迎新年啦！拉上你的小伙伴一起！马... </div>
								<div>
									2014/12/24
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac6.jpg" width="145px" height="145px;">
								<div><a href="#">志愿者招募公告</a></div>
								<div>2015国际网联青少年大师赛志愿者将面向高校和社会招募。  </div>
								<div>
									2014/12/01
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							<div class="oneActivity">
								<img src="images/ac7.jpg" width="145px" height="145px;">
								<div><a href="#">球童招募公告</a></div>
								<div>2015国际网联青少年大师赛球童将面向社会招募。  </div>
								<div>
									2014/09/28
									<a href="#"><img src="images/index_more.png"></a>
								</div>
							</div>
							
							
							
							
						</div>
						<!-- 显示分页 -->
						<div style="width:100%;height:50px;line-height:100px;text-align:center;">
							显示分页
						</div>
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