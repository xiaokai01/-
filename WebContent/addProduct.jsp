<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="privilege" uri="http://www.itcast.cn/privilege"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>添加商品</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css"
	type="text/css" media="screen" />
</head>

<body>
	<privilege:estore user="${user}"/>
	<br>
	<br>
	<form action="${pageContext.request.contextPath}/addProduct"
		method="post" enctype="multipart/form-data">
		<table border="1" width="65%" align="center">
			<caption>
				<b>添加商品</b>
			</caption>

			<tr>
				<td>商品名称</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>商品价格</td>
				<td><input type="text" name="price"></td>
			</tr>

			<tr>
				<td>商品类别</td>
				<td><select name="category">
						<option>--请选择类别--</option>
						<option value="面食">面食</option>
						<option value="甜品">甜品</option>
						<option value="西餐">西餐</option>
						<option value="其它">其它</option>
				</select></td>
			</tr>

			<tr>
				<td>商品数量</td>
				<td><input type="text" name="pnum"></td>
			</tr>

			<tr>
				<td>商品图片</td>
				<td><input type="file" name="f"></td>
			</tr>

			<tr>
				<td>商品描述</td>
				<td><textarea name="description" rows="10" cols="40"></textarea>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="添加商品"> <input type="reset" value="取消"></td>
			</tr>
		</table>

	</form>
</body>
</html>
