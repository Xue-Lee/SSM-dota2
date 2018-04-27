<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>注册账号 - 完美世界通行证</title>
		<link rel="stylesheet" type="text/css" href="css/shopping/register.css" />
		<script type="text/javascript" src="js/shopping/shoppingCentre.js">			
		</script>
	</head>
	<body>
		<div class="as_register">
			<div class="as_wrap ">
				<h1>注册完美通行证</h1>
				<h4>创建完美世界账号，抢先享受全方位的游戏服务</h4>
				<a href="javascript:void(0);" class="tel-b">手机注册(推荐)</a>
				<a href="javascript:void(0);" class="email-b">邮箱注册</a>
				<div>
					<div class="reg-tel">
						
					</div>
					<form action="register.do" method="post">
						<div class="reg-email">
							<div class="in-email">
								<input type="text" name="userName"  placeholder="邮箱账号" id="email" onblur="blur()"/>
								<span class="ihint ihint_error" style="display: none;" id="es"></span>
							</div>
							<div class="in-pwd">
								<input type="text" name="pwd" placeholder="密码" />
								<span class="ihint ihint_error" style="display: none;"></span>
							</div>
							<!-- <div class="in-rpwd">
								<input type="text" name="rpwd" value="" placeholder="重复密码" />
								<span class="ihint ihint_error" style="display: none;"></span>
							</div> -->
							<div class="in-name">
								<input type="text" name="name" placeholder="真实姓名" />
								<span class="ihint ihint_error" style="display: none;"></span>
							</div>
							<div class="in-idNumber">
								<input type="text" name="idNumber" placeholder="身份证" />
								<span class="ihint ihint_error" style="display: none;"></span>
							</div>
							<div class="in-phone">
								<input type="text" name="phone" placeholder="手机号" />
								<span class="ihint ihint_error" style="display: none;"></span>
							</div>
							<div class="in-submint">
								<input type="submit" value="免费注册通行证" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
	
</html>