<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/serviceArea.css" type="text/css"></link>
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
		$("div#newsInfo").find("li").each(function(index){
			$(this).click(function(){
				$(this).children("a").css("color","#2101A0").parent().siblings("li").children("a").css("color","black");
				$("div.main2:eq("+index+")").show().siblings(".main2").hide();
			});
		});

		
		
	});

	//js代码来实现图片切换
	var backgroundImg1=["室内网球场",
	                 	"风雨棚球场",
	                 	"室外练习场",
	                 	"1、2号球场",
	                 	"中心球场"
	                ];
	var backgroundImg2=["休息室",
	                 	"健身房",
	                 	"壁球室",
	                 	"羽毛球室",
	                 	"乒乓球室",
	                 	"游泳馆"
	                ];
    var backgroundImg3=["套房",
                        "单间",
                        "标间",
                        "公寓",
                        "公寓"
                     ];
    var backgroundImg4=["v201",
                        "v001",
                        "锦绣厅",
                        "宏图厅",
                        "贵宾厅"						
                      ];
    var backgroundImg5=["大堂吧",
                        "外景",
                        "风情胡",
                        "阿波罗酒吧",
                        "包间",
                        "包间",
                        "中餐厅",
                        "宴会厅",
                        "西餐厅"						
                      ];
    window.onload = function(){

        //图2切换
        var oBackgroundImg1 = document.getElementById('backgroundImg1');
        var oul1 = oBackgroundImg1.getElementsByTagName('ul')[0];
		var aLi1 = oul1.getElementsByTagName('li');
		var oImg1Text = document.getElementById('img1Text');
		var oImg1L = document.getElementById('img1L');
		var oImg1R = document.getElementById('img1R');
		oImg1Text.innerHTML = '网球场  '+backgroundImg1[0]+'(1'+'/'+aLi1.length+')';
	    var now1 = 0;
	    
    	
		function tab1(){
			startMove(oul1,{left:-350*now1});
			oImg1Text.innerHTML = '网球场  '+backgroundImg1[now1]+'('+(now1+1)+'/'+aLi1.length+')';
		}
		
		oImg1L.onclick = function(){
			now1--;
			if(now1 == -1){
				now1 = 0;
			}
			tab1();
		};
		oImg1R.onclick = function(){
			now1++;
			if(now1 == aLi1.length){
				now1 = aLi1.length-1;
			}
			tab1();
		};



		//图2切换
		var oBackgroundImg2 = document.getElementById('backgroundImg2');
        var oul2 = oBackgroundImg2.getElementsByTagName('ul')[0];
		var aLi2 = oul2.getElementsByTagName('li');
		var oImg2Text = document.getElementById('img2Text');
		var oImg2L = document.getElementById('img2L');
		var oImg2R = document.getElementById('img2R');
		oImg2Text.innerHTML = '其他运动配套  '+backgroundImg2[0]+'(1'+'/'+aLi2.length+')';
	    var now2 = 0;
	    
    	
		function tab2(){
			startMove(oul2,{left:-350*now2});
			oImg2Text.innerHTML = '其他运动配套  '+backgroundImg2[now2]+'('+(now2+1)+'/'+aLi2.length+')';
		}
		
		oImg2L.onclick = function(){
			now2--;
			if(now2 == -1){
				now2 = 0;
			}
			tab2();
		};
		oImg2R.onclick = function(){
			now2++;
			if(now2 == aLi2.length){
				now2 = aLi2.length-1;
			}
			tab2();
		};


		//图3切换
		var oBackgroundImg3 = document.getElementById('backgroundImg3');
        var oul3 = oBackgroundImg3.getElementsByTagName('ul')[0];
		var aLi3 = oul3.getElementsByTagName('li');
		var oImg3Text = document.getElementById('img3Text');
		var oImg3L = document.getElementById('img3L');
		var oImg3R = document.getElementById('img3R');
		oImg3Text.innerHTML = '客房  '+backgroundImg3[0]+'(1'+'/'+aLi3.length+')';
	    var now3 = 0;
	    
    	
		function tab3(){
			startMove(oul3,{left:-350*now3});
			oImg3Text.innerHTML = '客房  '+backgroundImg3[now3]+'('+(now3+1)+'/'+aLi3.length+')';
		}
		
		oImg3L.onclick = function(){
			now3--;
			if(now3 == -1){
				now3 = 0;
			}
			tab3();
		};
		oImg3R.onclick = function(){
			now3++;
			if(now3 == aLi3.length){
				now3 = aLi3.length-1;
			}
			tab3();
		};


		//图4切换
		var oBackgroundImg4 = document.getElementById('backgroundImg4');
        var oul4 = oBackgroundImg4.getElementsByTagName('ul')[0];
		var aLi4 = oul4.getElementsByTagName('li');
		var oImg4Text = document.getElementById('img4Text');
		var oImg4L = document.getElementById('img4L');
		var oImg4R = document.getElementById('img4R');
		oImg4Text.innerHTML = '会议  '+backgroundImg4[0]+'(1'+'/'+aLi4.length+')';
	    var now4 = 0;
	    
    	
		function tab4(){
			startMove(oul4,{left:-350*now4});
			oImg4Text.innerHTML = '会议  '+backgroundImg4[now4]+'('+(now4+1)+'/'+aLi4.length+')';
		}
		
		oImg4L.onclick = function(){
			now4--;
			if(now4 == -1){
				now4 = 0;
			}
			tab4();
		};
		oImg4R.onclick = function(){
			now4++;
			if(now4 == aLi4.length){
				now4 = aLi4.length-1;
			}
			tab4();
		};
		//图5切换
		var oBackgroundImg5 = document.getElementById('backgroundImg5');
        var oul5 = oBackgroundImg5.getElementsByTagName('ul')[0];
		var aLi5 = oul5.getElementsByTagName('li');
		var oImg5Text = document.getElementById('img5Text');
		var oImg5L = document.getElementById('img5L');
		var oImg5R = document.getElementById('img5R');
		oImg5Text.innerHTML = '餐厅娱乐  '+backgroundImg5[0]+'(1'+'/'+aLi5.length+')';
	    var now5 = 0;
	    
    	
		function tab5(){
			startMove(oul5,{left:-350*now5});
			oImg5Text.innerHTML = '餐厅娱乐  '+backgroundImg5[now5]+'('+(now5+1)+'/'+aLi5.length+')';
		}
		
		oImg5L.onclick = function(){
			now5--;
			if(now5 == -1){
				now5 = 0;
			}
			tab5();
		};
		oImg5R.onclick = function(){
			now5++;
			if(now5 == aLi5.length){
				now5 = aLi5.length-1;
			}
			tab5();
		};
		

		
		
    };
	



	
	
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
					<li><a href="newsAct.jsp">新闻活动</a></li>
					<li><a href="imgVideo.jsp">图片视频</a></li>
					<li><a href="playerInfo.jsp">球员信息</a></li>
					<li><a href="serviceArea.jsp" style="color:#2101A0;">服务专区</a></li>
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
							<img src="images/p5_sub_title.png">
						</div>
						<div id="newsInfo">
							<ul>
								<li><a href="#" style="color:#2101A0;">场馆配套  FACILITIES</a></li>
								<li><a href="#">酒店服务  HOTEL</a></li>
								<li><a href="#">交通导航  TRANSPORT</a></li>
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
				
				<!-- 1场馆配套    对应的右边的div -->
				<div class="main2" style="float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="serviceArea.jsp">服务专区</a>-><a href="#">场馆配套</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p5_1_title.png">
						</div>
					</div>
					<!-- 场馆配套   详细信息 -->
					<div style="width:92%;height:850px;margin-left:20px;">
						<!-- 上半部分图片文字 -->
						<div style="width:100%;height:500px;font-size:12px;">
							<img src="images/5418016b4c988.png" width="598px">
							<br/><br/>
							<span> &nbsp;&nbsp;四川国际网球中心是按国际一流标准建造的以网球为主，包括多种运动项目的大型体育
							场馆。体育设施方面主要有可以举办ATP和WTA顶级赛事的网球赛事中心，一座包含多种体育项目
							的综合馆，一个带有高尔夫挥杆练习场的体育公园三大部分。 <br/><br/>  &nbsp;&nbsp;网球赛事中心赛事中心
							和室外练习场组成。中心赛场按国际网联ATP赛事标准建设，包含一座拥有6300多个普通观众座位、
							24间豪华观球包间的决赛场、两座2000座的半决赛场、大型露天展览平台、商业卖场、写字间和赛事功
							能用房等相关配套设施，是目前国内配套设施最完善、专业水平最高、赛事及运动服务最全面的专业网球
							赛事中心；预赛场按国际网联ATP赛事标准建设，由9片相连的专业场地组成，能满足各级别比赛流程要求，
							是网球比赛的最佳选择；风雨棚练习场由平行排列的12片标准网球场组成，是目前国内最大的连体风雨棚网球
							运动场地；网球预赛场和风雨棚网球场之间，是4组8片相连的国际标准室外练习场。 </span>
						</div>
						<!-- 下半部分图片和文字 -->
						<div style="width:100%;height:350px;">
							<div style="width:100%;height:20px;">
								<img src="images/p5_1_title1.png">
							</div>
							<div style="width:100%;height:250px;background:#F2F2F2;">
								<!-- 左边图片 -->
								<div id="backgroundImg" style="float:left;width:350px;height:250px;">
									<!-- 图片1 -->
									<div id="backgroundImg1" style="width:350px;height:125px;">
										<ul>
											<li><img src="images/54251a4acf797.jpg"></li>
											<li><img src="images/54251a497813f.jpg"></li>
											<li><img src="images/54251a4807e6f.jpg"></li>
											<li><img src="images/54251a46a8d72.jpg"></li>
											<li><img src="images/5417fc8970da9.png"></li>
										</ul>
									</div>
									<div id="img1Text"></div>
									<div id="img1L">&lt;</div>
									<div id="img1R">&gt;</div>
									<!-- 图片2 -->
									<div id="backgroundImg2" style="width:350px;height:125px;">
										<ul>
											<li><img src="images/54251c116a4ea.jpg"></li>
											<li><img src="images/54251c0f6d4f1.jpg"></li>
											<li><img src="images/54251c0d1a97d.jpg"></li>
											<li><img src="images/54251c0b9cce9.jpg"></li>
											<li><img src="images/54251c0a676f7.jpg"></li>
											<li><img src="images/5417fc6d5b38a.png"></li>
										</ul>
									</div>
									<div id="img2Text"></div>
									<div id="img2L">&lt;</div>
									<div id="img2R">&gt;</div>
								</div>
								
								<!-- 右边文字 -->
								<div style="float:left;width:200px;height:250px;margin-left:20px;font-size:12px;">
									<div style="width:100%;height:200px;">
										   &nbsp;&nbsp;网球场场地在绿树的掩映下，为比赛练习创造了舒适、安静的环境，是广大网球爱好人士的最佳选择。
										   <br/><br/> &nbsp;&nbsp;综合馆包括一个室内恒温游泳馆，一个有4片场地的室内网球馆，两片室内羽毛球场，两个室内壁球场，
										   一个健身房，一个乒乓球室等多种运动设施，为来此运动休闲的各界人士提供了丰富多样的选择。让你在感受网球中
										   心清新静谧气氛的同时得到高品质的运动生活享受。 
									</div>
									<div style="width:100%;height:40px;line-height:40px;text-align:center;margin-top:5px;border-style:dotted;border-width:1px 0 1px 0;">
										分享到：<a href="#">微博</a> <a href="#">微信</a> 
									</div>
								</div>
							</div>
							<div style="width:100%;height:70px;margin-top:10px;font-size:12px;">
								  &nbsp;&nbsp;四川国际网球中心从2008年底建成开业以来，已先后承办了多项重大的国内国际体育赛事，如2009、2010、2011
								  年ATP冠军巡回赛成都公开赛，2011、2012年ITF国际男子网球巡回赛，2011、2012年ITF（U18）国际青少年网球
								  巡回赛，2011、2012年中国业余网球公开赛—双流皇冠赛，2012年世界斯诺克台球锦标赛，2012年NJT全国青少年
								  （U12/U14/U16）网球排名赛及年度总决赛等等。	
							</div>
						</div>
							
						
						
						
					
					</div>
				</div>
				
				
				
				
				
				
				
				
				<!-- 2酒店服务 -->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="serviceArea.jsp">服务专区</a>-><a href="#">酒店服务</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p5_2_title.jpg">
						</div>
					</div>
					<!-- 酒店服务    详细内容-->
					<div style="width:92%;height:850px;margin-left:20px;font-size:12px;">
						<div style="width:100%;height:330px;">
							<img src="images/541805674c30d.jpg" width="598px;">
							<br/><br/>&nbsp;&nbsp; 川投国际酒店由是及住宿、餐饮、会议、网球比赛、康体功能于一体的五星
							级标准酒店，地处双流新城东区东升镇，距成都市中心20多分钟车程，紧邻双流国际机场。 
							<br/><br/>&nbsp;&nbsp;川投国际酒店身处16万平方米生态公园，坐落于龙江湖畔，环境优美，是您会议、餐饮、休闲、运动、娱乐的首选之地。 
						</div>
						
						<div style="width:100%;height:518px;background:yellow;">
							<div style="width:100%;height:20px;">
								<img src="images/p5_2_title1.jpg">
							</div>
							<div style="width:100%;height:498px;background:#F2F2F2;">
								<!-- 左边图片 -->
								<div style="float:left;width:350px;height:498px;">
									<!-- 图片3 -->
									<div id="backgroundImg3" style="width:350px;height:168px;">
										<ul>
											<li><img src="images/542527ce4171b.jpg"></li>
											<li><img src="images/542527cb25e5a.jpg"></li>
											<li><img src="images/542527cca440b.jpg"></li>
											<li><img src="images/542527cfb4be7.jpg"></li>
											<li><img src="images/542527d0e8d4d.jpg"></li>
										</ul>
									</div>
									<div id="img3Text"></div>
									<div id="img3L">&lt;</div>
									<div id="img3R">&gt;</div>
									
									<!-- 图片4 -->
									<div id="backgroundImg4" style="width:350px;height:168px;">
										<ul>
											<li><img src="images/542523c306ff6.jpg"></li>
											<li><img src="images/542523c156898.jpg"></li>
											<li><img src="images/542523bf3bdfe.jpg"></li>
											<li><img src="images/542523bdcba5a.jpg"></li>
											<li><img src="images/5417fc20bc0d5.jpg"></li>
										</ul>
									</div>
									<div id="img4Text"></div>
									<div id="img4L">&lt;</div>
									<div id="img4R">&gt;</div>
									
									<!-- 图片5 -->
									<div id="backgroundImg5" style="width:350px;height:168px;">
										<ul>
											<li><img src="images/5425266a2494b.jpg"></li>
											<li><img src="images/542525db20e55.jpg"></li>
											<li><img src="images/542525d92c8c1.jpg"></li>
											<li><img src="images/542525d75a54f.jpg"></li>
											<li><img src="images/542520b9e033a.jpg"></li>
											<li><img src="images/542520b788f51.jpg"></li>
											<li><img src="images/542520b607891.jpg"></li>
											<li><img src="images/542520b3f02a6.jpg"></li>
											<li><img src="images/5417fbff0479a.jpg"></li>
										</ul>
									</div>
									<div id="img5Text"></div>
									<div id="img5L">&lt;</div>
									<div id="img5R">&gt;</div>
								</div>
								<!-- 右边文字 -->
								<div style="float:left;width:200px;height:498px;margin-left:20px;font-size:12px;">
									<p style="color:#2101A0;margin-top:10px;">酒店内部简介：</p>
									<br/>&nbsp;&nbsp;川投国际酒店有6栋别墅、87间豪华大床房、63间豪华标准间、13间豪华套房、商务楼
									（副楼）有78间高级标准间，共计400多个床位，并可同时满足1000人左右的大型宴会
									和1000人的会议等综合服务。<br/><br/> 川投国际酒店餐饮包含西餐、中餐以及大型宴
									会。西餐开设中西式自助餐，西式套餐等；中餐主要以川菜为主，同时提供粤菜等。
									<br/><br/>&nbsp;&nbsp;  川投国际酒店能提供各种大型活动的解决方案，堪称功能最齐全的综合性酒店。  
									<div style="width:100%;height:40px;line-height:40px;text-align:center;margin-top:20px;border-style:dotted;border-width:1px 0 1px 0;">
										分享到：<a href="#">微博</a> <a href="#">微信</a> 
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				<!-- 3交通导航-->
				<div class="main2" style="display:none;float:left;width:650px;height:1000px;">
					<!-- 标题 -->
					<div style="width:100%;height:100px;padding-top:10px;padding-left:10px;">
						<p>您现在的位置：<a href="index.jsp">网站首页</a>-><a href="serviceArea.jsp">服务专区</a>-><a href="#">交通导航</a>	</p>
						<div style="width:200px;height:30px;margin-left:200px;margin-top:40px;">
							<img src="images/p5_3_title.jpg">
						</div>
					</div>
					<!-- 内容 -->
					<div style="width:92%;height:890px;margin-left:20px;font-size:12px;">
						<!-- 地图 -->
						<div style="width:99%;height:400px;background:#F2F2F2;;border:1px solid #575757;"></div>
						<!-- 交通路线图 -->
						<div style="width:100%;height:320px;margin-top:40px;">
							<div style="width:300px;height:20px;font-weight:bold;color:#2101A0;">交通路线图：</div>
							<div style="width:99%;height:260px;margin-top:20px;border:1px solid #575757;background:#F2F2F2;">
								<div style="width:98%;height:80px;padding-top:10px;margin-left:10px;border-style:solid;border-width:0 0 1px 0;">
									<span style="font-weight:bold;">路线一：</span><br/><br/>
									&nbsp;&nbsp;<span>天府广场 -> 衣冠庙 -> 永丰立交 -> 绕城高速（双流B出口）-> 蛟龙体育馆 -> 四川国际网球中心</span>
								</div>
								<div style="width:98%;height:80px;padding-top:10px;margin-left:10px;border-style:solid;border-width:0 0 1px 0;">
									<span style="font-weight:bold;">路线二：</span><br/><br/>
									&nbsp;&nbsp;<span>天府广场 -> 双楠二环路 -> 武侯立交 -> 双楠大道南沿线 -> 蛟龙体育馆 -> 四川国际网球中心</span>
								</div>
								<div style="width:98%;height:80px;padding-top:10px;margin-left:10px;">
									<span style="font-weight:bold;">路线三：</span><br/><br/>
									&nbsp;&nbsp;<span>双流机场 -> 西航港大道 -> 临港路 -> 航港路 -> 金河路 -> 四川国际网球中心</span>
								</div>
							</div>
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