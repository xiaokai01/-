<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>美食商城</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"type="text/css" media="screen" />
<!--[if IE 6]><link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.ie6.css" type="text/css" media="screen" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.ie7.css" type="text/css" media="screen" /><![endif]-->

<script type="text/javascript"
	src="ebook/WebContent/js/script.js"></script>
<script type="text/javascript">
	var focus_width = 632;
	var focus_height = 320;
	var picPath;
	var linkUrl = "";
	var swfPath = "E://yrke_image/bj.jpg";
	var sp = "|";
    

	window.onload = function() {

		var usernamevalue = "${cookie.saveusername.value}"; //从cookie中获取saveusername值,得到的是utf-8码

		//alert(usernamevalue);

		document.getElementById("username").value = window.decodeURIComponent(usernamevalue, "utf-8");
		//通过decodeURIComponent这个函数完成utf-8解码操作.
	}
</script>
</head>
<body  background="E://yrke_image/bj.jpg">


	<div id="art-main">
		<div class="art-sheet">
			<div class="art-sheet-tl"></div>
			<div class="art-sheet-tr"></div>
			<div class="art-sheet-bl"></div>
			<div class="art-sheet-br"></div>
			<div class="art-sheet-tc"></div>
			<div class="art-sheet-bc"></div>
			<div class="art-sheet-cl"></div>
			<div class="art-sheet-cr"></div>
			<div class="art-sheet-cc"></div>
			<div class="art-sheet-body">
				<div class="art-header">
					<div class=""></div>
					<div class="art-header-jpeg"></div>
					<div class="art-logo">
						<h1 id="name-text" class="art-logo-name">
							<a href="#">美食商城</a>
						</h1>
						<div id="slogan-text" class="art-logo-text">吃货的购物天堂...</div>
					</div>
				</div>
				<div class="art-nav">
					<div class="l"></div>
					<div class="r"></div>
					<ul class="art-menu">
			        <li><a href="page.jsp" class="active"><span class="l"></span><span
								class="r"></span><span class="t">主页</span> </a>
						</li>
						
						<li><a href="#"><span class="l"></span><span class="r"></span><span
								class="t">商品分类</span> </a></li>
								
						<li><a href="#"><span class="l"></span><span class="r"></span><span
								class="t">关于我们</span> </a>
						</li>
							<li><a href="${pageContext.request.contextPath}/showCart.jsp"><span class="l"></span><span class="r"></span><span
								class="t">购物车</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/addProduct.jsp"><span
														class="l"></span><span class="r"></span><span class="t">添加商品</span>
												</a>
												</li>
								
						<li><a href="#"><span class="l"></span><span class="r"></span><span
								class="t">升级卖家</span> </a>
						</li>
						
                       
						<c:if test="${empty user }">
							&nbsp;&nbsp;<li background_color="red">&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户未登录</li>
						</c:if>

						<c:if test="${not empty user }">
							<li>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当前用户:${user.username}</li>
							<li><a
								href='${pageContext.request.contextPath}/user?method=logout'>注销</a>
							</li>
						</c:if>

					</ul>
				</div>
				<div class="art-content-layout">
					<div class="art-content-layout-row">
						<div class="art-layout-cell art-content">
							<div class="art-post">
								<div class="art-post-body">
									<div class="art-post-inner art-article">
										<div class="art-postmetadataheader">
											<h2 class="art-postheader">美食广场</h2>
										</div>
										<div class="art-postcontent">
											<!-- article-content -->
											<!--  <script type="text/javascript" src="mutilpleFlash.js"></script>-->
											<div id="myCarousel" class="carousel slide" align="center">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>   
					<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="E://yrke_image/myCarouse4.jpg" alt="First slide"  style="height:350px;width:100%">
					</div>
					<div class="item">
					<img src="E://yrke_image/myCarouse2.jpg" alt="Second slide"  style="height:350px;width:100%">
					</div>
					<div class="item">
					<img src="E://yrke_image/myCarouse3.jpg" alt="Third slide" style="height:350px;width:100%">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
					</a>
				</div> 
											<!-- /article-content -->
										</div>
										<div class="cleared"></div>
									</div>

									<div class="cleared"></div>
								</div>
							</div>

							<div class="art-post">
								<div class="art-post-tl"></div>
								<div class="art-post-tr"></div>
								<div class="art-post-bl"></div>
								<div class="art-post-br"></div>
								<div class="art-post-tc"></div>
								<div class="art-post-bc"></div>
								<div class="art-post-cl"></div>
								<div class="art-post-cr"></div>
								<div class="art-post-cc"></div>
								<div class="art-post-body">
									<div class="art-post-inner art-article">
										<div class="art-postmetadataheader">
											<h2 class="art-postheader">热卖商品销售中</h2>
										</div>
										<div class="art-postcontent">
											<!-- article-content -->
											<p>
												<span class="art-button-wrapper"> <span class="l">
												</span> <span class="r"> </span> <a class="art-button"
													href="javascript:void(0)">更多商品...</a> </span>
											</p>

											<div class="cleared"></div>


											<div class="art-content-layout overview-table">



												<div class="art-content-layout-row">
													  <c:forEach items="${ps}" var="p" varStatus="vs">
														<div class="art-layout-cell">
															<div class="overview-table-inner">
																<h4>${p.name }</h4>
																<img
																	src="${pageContext.request.contextPath}/${p.imgurl}"
																	width="55px" height="55px" alt="an image" class="image" />
																<p>价格: ￥${p.price }</p>
																<p>
																	<a
																		href='${pageContext.request.contextPath}/product?method=findById&id=${p.id}'>立即购买</a>
																</p>
															</div>
														</div>
														<!-- end cell -->

													  <c:if test="${vs.count%5==0}">  
												</div>
												<!-- end row -->
												<div class="art-content-layout-row">
													</c:if>

												 </c:forEach>
												</div>
												<!-- end row -->

											</div>
											<!-- end table -->

											<!-- /article-content -->
										</div>
										<div class="cleared"></div>
									</div>

									<div class="cleared"></div>
								</div>
							</div>
						</div>
						<div class="art-layout-cell art-sidebar1">
							<div class="art-vmenublock">
								<div class="art-vmenublock-body">
									<div class="art-vmenublockheader">
										<div class="l"></div>
										<div class="r"></div>
										<div class="t">第三方登录</div>
									</div>
									<div class="art-vmenublockcontent">
									<!--  <div class="art-vmenublockcontent-tl"></div>
										<div class="art-vmenublockcontent-tr"></div>
										<div class="art-vmenublockcontent-bl"></div>
										<div class="art-vmenublockcontent-br"></div>
										<div class="art-vmenublockcontent-tc"></div>
										<div class="art-vmenublockcontent-bc"></div>
										<div class="art-vmenublockcontent-cl"></div>
										<div class="art-vmenublockcontent-cr"></div>
										<div class="art-vmenublockcontent-cc"></div>-->
										<div class="art-vmenublockcontent-body">
											<!-- block-content -->
										<c:if test="${ empty user }">
											<ul class="art-vmenu">
												<li><a
													href="#"><span
														class="l"></span><span class="r"></span><span class="t">QQ登录</span>
												</a>
												</li>
												<li><a
													href="#"><span
														class="l"></span><span class="r"></span><span class="t">微信登录</span>
												</a>
												</li>

												<li><a
													href="#"><span
														class="l"></span><span class="r"></span><span class="t">微博登录</span>
												</a>
												</li>
												<li><a
													href="${pageContext.request.contextPath}/order?method=search"><span
														class="l"></span><span class="r"></span><span class="t">支付宝登录</span>
												</a>
												</li>

												<li><a
													href="${pageContext.request.contextPath}/download"><span
														class="l"></span><span class="r"></span><span class="t">淘宝登录</span>
												</a>
												</li>
												<li><a href="#"><span class="l"></span><span
														class="r"></span><span class="t">关于我们</span> </a>
												</li>
												<li><a href="#"><span class="l"></span><span
														class="r"></span><span class="t">联系方式</span> </a>
												</li>
											</ul>
											</c:if>
											<c:if test="${not  empty user }">
											       <li><img src="F:\资料+源码+笔记\资料+源码+笔记\bookEstore\WebRoot\images\pic6.jpg"width="150px" height="150px" alt="an image" class="image" /></li>
						 	                      <h3> <li>欢迎您:${user.username}</h3></li>
							                         <li><a
								                    href='${pageContext.request.contextPath}/user?method=logout'>注销</a>
						                    	</li>
						                   </c:if>
											<!-- /block-content -->

											<div class="cleared"></div>
										</div>
									</div>
									<div class="cleared"></div>
								</div>
							</div>
							<div class="art-block">
								<div class="art-block-body">
									<div class="art-blockheader">
										<div class="l"></div>
										<div class="r"></div>
										<div class="t">用户登陆</div>
									</div>
									 <div class="art-blockcontent">
										<!--<div class="art-blockcontent-tl"></div>
										<div class="art-blockcontent-tr"></div>
										<div class="art-blockcontent-bl"></div>
										<div class="art-blockcontent-br"></div>
										<div class="art-blockcontent-tc"></div>
										<div class="art-blockcontent-bc"></div>
										<div class="art-blockcontent-cl"></div>
										<div class="art-blockcontent-cr"></div>
										<div class="art-blockcontent-cc"></div>-->
										<div class="art-blockcontent-body">
											<!-- block-content -->
											<div>
												<form method="post" id="loginForm"
													action="${pageContext.request.contextPath}/user">
													<input type="hidden" name="method" value="login">
													<table>
														<tr>
															<td colspan="2"><font color='red'>${requestScope["login.message"]
																	}</font>
															</td>
														</tr>
														<tr>
															<td>用户:</td>
															<td><input type="text" value="" name="username"
																id="username" /><br /></td>
														</tr>
														<tr>
															<td>密码:</td>
															<td><input type="password" value="" name="password"
																id="password" /></td>
														</tr>
														<tr>
															<td colspan="2" style="font-family:"微软雅黑";font-size:15px;color:red;"><input type="checkbox"
																name="remember" value="on" />记住用户 <input
																type="checkbox" name="autologin" value="on" />自动登陆</td>
														</tr>
														<tr>
															<td colspan="2"><span class="art-button-wrapper">
																	<span class="l"> </span> <span class="r"> </span> <input
																	class="art-button" type="submit" name="loginbtn"
																	value="登陆" /> </span> &nbsp;&nbsp;&nbsp;<a
																href='${pageContext.request.contextPath}/regist.jsp'>注册</a>
															</td>
													</table>
												</form>
											</div>
											<!-- /block-content -->

											<div class="cleared"></div>
										</div>
									</div>
									<div class="cleared"></div>
								</div>
							</div>
							<div class="art-block">
								<div class="art-block-body">
									<div class="art-blockheader">
										<div class="l"></div>
										<div class="r"></div>
										<div class="t">查询商品</div>
									</div>
									<div class="art-blockcontent">
										<div class="art-blockcontent-tl"></div>
										<div class="art-blockcontent-tr"></div>
										<div class="art-blockcontent-bl"></div>
										<div class="art-blockcontent-br"></div>
										<div class="art-blockcontent-tc"></div>
										<div class="art-blockcontent-bc"></div>
										<div class="art-blockcontent-cl"></div>
										<div class="art-blockcontent-cr"></div>
										<div class="art-blockcontent-cc"></div>
										<div class="art-blockcontent-body">
											<!-- block-content -->
											<div>
												<form method="get" id="newsletterform"
													action="javascript:void(0)">
													<input type="text" value="" name="email" id="s"
														style="width: 95%;" /> <span class="art-button-wrapper">
														<span class="l"> </span> <span class="r"> </span> <input
														class="art-button" type="submit" name="search" value="查询" />
													</span>

												</form>
											</div>
											<!-- /block-content -->

											<div class="cleared"></div>
										</div>
									</div>
									<div class="cleared"></div>
								</div>
							</div>

							<div class="art-block">
								<div class="art-block-body">
									<div class="art-blockheader">
										<div class="l"></div>
										<div class="r"></div>
										<div class="t">联系信息</div>
									</div>
									<div class="art-blockcontent">
										<div class="art-blockcontent-tl"></div>
										<div class="art-blockcontent-tr"></div>
										<div class="art-blockcontent-bl"></div>
										<div class="art-blockcontent-br"></div>
										<div class="art-blockcontent-tc"></div>
										<div class="art-blockcontent-bc"></div>
										<div class="art-blockcontent-cl"></div>
										<div class="art-blockcontent-cr"></div>
										<div class="art-blockcontent-cc"></div>
										<div class="art-blockcontent-body">
											<!-- block-content -->
											<div>
												<img src="images/contact.jpg" alt="an image"
													style="margin: 0 auto;display:block;width:95%" /> <br />
												<b>网站信息</b><br />电子邮箱:
												 <a href="https://mail.qq.com/cgi-bin/frame_html?sid=Bqo_RobwTpyKZAZd&r=b083bc790bc36d6857ba6edad7e58f7b">1657979052@qq.com</a><br />
												<br /><a href:"tel:15716539228"></a>电话: 15716539228 <br /> 
											</div>
											<!-- /block-content -->

											<div class="cleared"></div>
										</div>
									</div>
									<div class="cleared"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="cleared"></div>
				<div class="art-footer">
					<div class="art-footer-t"></div>
					<div class="art-footer-l"></div>
					<div class="art-footer-b"></div>
					<div class="art-footer-r"></div>
					<div class="art-footer-body">
						<a href="#" class="art-rss-tag-icon" title="RSS"></a>
						<div class="art-footer-text">
							<p>
								<a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">网站推广</a>
								|
							</p>		
						</div>
						<div class="cleared"></div>
					</div>
				</div>
				<div class="cleared"></div>
			</div>
		</div>
		<div class="cleared"></div>
	</div>

</body>
</html>
