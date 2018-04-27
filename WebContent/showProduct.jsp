<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>游戏手办</title>
		<link rel="stylesheet" type="text/css" href="css/shopping/shoppingCentre.css" />
		<link rel="stylesheet" type="text/css" href="css/shopping/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="css/shopping/game.css" />
		<script type="text/javascript" src="js/shopping/jquery-3.2.1.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/shopping/showProduct.js">			
		</script>
	</head>
	<body>
		<div class="login-box" id="login_box">
			<div class="login-left">
				<div>
					
				</div>
			</div>
			<div class="inline"></div>
			<div class="login-right">
				<div class="login-shut">
					<i class="icon-guanbi" id="login_shut">&#xe654;</i>
				</div>
				<h4>账号登录</h4>
				<P>${msg }</p>
				<form action="login.do" method="post">
					<div class="login-user">
						<i class="iconfont icon-zhanghao"></i><input type="text" name="userName" value="${cookie.userName.value }" placeholder="账号" class="" />
					</div>
					<div class="login-pwd">
						<i class="iconfont icon-password"></i><input type="password" name="pwd" value="${cookie.pwd.value }" placeholder="密码" />
					</div>
					<!--<div class="login-check">
						&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="check" value="" placeholder="验证码" />
						<img alt="null" src="ValidateServlet">
					</div>	-->
					3天自动登录<input type="checkbox" name="checkbox" checked="checked" style="width:14px;height:14px"><br>
					<input type="submit" value="登录" class="login-submit"/>
				</form>
				<div class="login-reg">
					<a href="register.jsp">注册新账号</a>
					|
					<a href="">忘记密码</a>
				</div>
			</div>
		</div>
		<div class="shop-box">
			<!--右侧悬浮导航条-start-->
			<div class="float-nav">
				<div class="float-nav-myOrder">
					<a href=""><i class="float-icon-touxiang">&#xe6a0;</i></a>
				</div>
				<div class="float-nav-myFocus">
					<a href=""><i class="float-icon-likefil">&#xe62b;</i></a>
				</div>
				<div class="float-nav-myCart">
					<a href=""><i class="float-icon-gouwuche1">&#xe603;</i><br />
						购<br />
						物<br />
						车<br />
						<span class="goods-num">0</span>
						<div class="float-nav-myCart-opacity">
				    		</div>
					</a>					
				</div>
				<div class="float-nav-xinxi">
					<a href=""><i class="float-icon-xinxi">&#xe633;</i></a>
				</div>
				<!--<div class="float-nav-return">
					<a href="">
						返回<br />
						首页
					</a>					
				</div>-->
			</div>
			<!--右侧悬浮导航条-end-->
			
			<!--头部悬浮导航条-start-->
			<div class="shop-header">
				<div class="shop-topper">
					<div class="shop-topper-box">
						<div class="logo-dota2-div">
							<a href="#">
								<img class="logo-dota2" src="img/shopping/logo-dota2.png" alt="" />
							</a>
						</div>
						<div class="logo-shop-div">
							<a href="#">
								<img class="logo-shop" src="img/shopping/logo-shop.png" alt="" />
							</a>
						</div>
						<div class="shop-login-div">
							
							<a class="myCart" href="#"><i class="iconfont icon-gouwuche1"></i>&nbsp;我的购物车 (<span>0</span>)</a>
							<a class="myFocus" href="#"><i class="iconfont icon-likefill"></i>&nbsp;我的关注</a>
							<a class="myOrder" href="#"><i class="iconfont icon-touxiang"></i>&nbsp;我的订单</a>
							
							<c:set var="u" scope="session" value="${sessionScope.user.name }"/>
							<c:choose>
								<c:when test="${not empty u}">
									<a class="shop-leave" href="signOut.do">&nbsp;&nbsp;&nbsp;&nbsp;退出</a>
									<a class="shop-login-name" href="javascript:void(0);">${u },</a>
								</c:when>
								<c:otherwise>
									<a class="shop-reg" href="register.jsp">快速注册</a>
									<a class="shop-login" href="javascript:void(0);" id="login_up">登录</a>
								</c:otherwise>
							</c:choose>
							<%-- <c:if test="${not empty u}">
								<a class="shop-leave" href="signOut.do">&nbsp;&nbsp;&nbsp;&nbsp;退出</a>
								<a class="shop-login-name" href="javascript:void(0);">${u },</a>
							</c:if>
							<c:set var="u" scope="session" value="${sessionScope.user.name }"/>
 							<c:if test="${empty u}">
 								<a class="shop-reg" href="register.jsp">快速注册</a>
								<a class="shop-login" href="javascript:void(0);" id="login_up">登录</a>
								
							</c:if> --%>
							<%-- <%
								String msg_sueccess = (String)session.getAttribute("msg_sueccsess");
								if(msg_sueccess == null){
									%>
									<a class="shop-login" href="javascript:void(0);" id="login_up">登录</a>
									<a class="shop-reg" href="register.jsp">快速注册</a>
									<%
								}else{
									%>
									<a class="shop-login-name" href="javascript:void(0);"><%=msg_sueccess %>,</a>
									<a class="shop-leave" href="signOut.do">&nbsp;&nbsp;&nbsp;&nbsp;退出</a>
									<%
								}
							%> --%>
							<!-- <a class="shop-login" href="javascript:void(0)" id="login_up">登录</a>
							<a class="shop-reg" href="#">快速注册</a> -->
							
							
						</div>
					</div>
				</div>
				<div class="shop-nav">
					<div class="shop-nav-box">
						<div class="shop-nav-div">
							<a class="shoppingCentre shop_nav_a" href="shoppingCentre.html" style="border-bottom-color:  #f85535; color:  #f85535;">首页</a>
							<a class="game shop_nav_a" href="showProduct.do?classId=1" href="className.do?id=1">游戏手办</a>
							<a class="subject shop_nav_a" href="showProduct.do?classId=2">主题服饰</a>
							<a class="T_shit shop_nav_a" href="showProduct.do?classId=3">创意T恤</a>
							<a class="toy shop_nav_a" href="showProduct.do?classId=4">毛绒玩具</a>
							<a class="live shop_nav_a" href="showProduct.do?classId=5">生活用品</a>
							<a class="limit shop_nav_a" href="showProduct.do?classId=6">特别限量</a>
						</div>	
						<div class="search-box">
							<form action="#" method="post">
								<input class="btn-submit icon-sousuo" type="submit" value="&#xe960;"/>
								<input class="text-input" type="text" name="text" value=""/>							
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--头部悬浮导航条-end-->
						
			<!--主要内容-start-->
			<div class="shop-game-content">
				<div class="game-nav-div">
					<div class="game-nav">
						<a href="">首页</a> > <a href="showProductAll.do">DOTA 2</a>
						<c:set var="className" scope="request" value="${className}"></c:set>
						<c:choose>
							<c:when test="${not empty className}">
								> <a href="">${className }</a>
							</c:when> 
							<c:otherwise></c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="game-product">
					<div class="sequence-div">
						<div class="sequence">
							<a href="#">销量</a>
							<a href="#">价格<i class="icon-up">&#xe602;</i></a>
							<a href="#" style="border: 0px;">上架时间</a>
						</div>						
					</div>
					<ul class="game-ul">
						<c:forEach items="${listProduct }" var="pro">
							<li class="game-li">
								<div class="li-top">
									
									<a href="#"><i class="iconfont icon-likefill1"></i>5</a>
								</div>
								<a href="">
									<img class="game-li-img" src="img/shopping/${pro.productLogo }" alt="" />
								</a>
								<h4>${pro.productName }</h4>
								<h5>¥${pro.productPrice }</h5>
								<div class="add-cart-div">
									<a class="add-star" href="#"><i class="icon-star">&#xe60e;&#xe60e;&#xe60e;&#xe60e;&#xe60e;</i></a>
									<a class="add-cart" href="#"><p><i class="icon-gouwuche">&#xe60a;</i> 加入购物车</p></a>
								</div>
							</li>
						</c:forEach>
						
						
					</ul>
				</div>			
			</div>
			<!--主要内容-end-->
			
			
			<!--底部内容-start-->
			<div class="shop-footer">
				<!--承诺、保证、快递-start-->
				<div class="promise">
					<div class="promise-box">
						<div class="promise-cont"><i class="iconfont icon-zan2"></i>正品保障</div>
						<div class="promise-cont"><i class="iconfont icon-kuaidichaxun"></i>快递配送</div>
						<div class="promise-cont"><i class="iconfont icon-tuihuo"></i>无忧退换</div>
					</div>
				</div>
				<!--承诺、保证、快递-end-->
				
				<!--客服、售后-start-->
				<div class="bottom-footer">
					<div class="bottom-box">
						<div class="bottom-customer">
							<dl>
								<dt>购物指南</dt>
								<dd>
									<a href="">常见问题</a>
								</dd>
								<dd>
									<a href="">购物流程</a>
								</dd>
								<dd>
									<a href="">支付方式</a>
								</dd>
							</dl>
							<dl>
								<dt>配送方式</dt>
								<dd>
									<a href="">配送范围</a>
								</dd>
								<dd>
									<a href="">快递费用</a>
								</dd>
							</dl>
							<dl>
								<dt>	售后服务</dt>
								<dd>
									<a href="">退换货流程</a>
								</dd>
								<dd>
									<a href="">退换货政策</a>
								</dd>
								<dd>
									<a href="">服务政策</a>
								</dd>
							</dl>
							<dl>
								<dt>关注我们</dt>
								<dd>
									<a href="">刀塔官网</a>
								</dd>
								<dd>
									<a href="">新浪微博</a>
								</dd>
								<dd>
									<a href="">官方微信
										<img class="launcher-weixin" src="img/shopping/launcher_weixin.png" alt="" />
									</a>
								</dd>
							</dl>
							<div class="bottom-contact">
								<h1>028-<br />68723666</h1>
								<p>周一至周日 0:00 - 24:00</p>
								<p><a href="">在线客服</a></p>
							</div>
						</div>						
					</div>
				</div>
				<!--客服、售后-end-->
			</div>
			<!--底部内容-end-->
		</div>		
	</body>
</html>