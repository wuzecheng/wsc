<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="ms-login">
		<el-form :model="ruleForm" :rules="rules" ref="ruleForm"
			label-width="0px" class="demo-ruleForm"> <el-form-item
			prop="username"> <el-input v-model="ruleForm.username"
			placeholder="用户名"></el-input> </el-form-item> <el-form-item prop="password">
		<el-input type="password" placeholder="密码" v-model="ruleForm.password"
			@keyup.enter.native="submitForm('ruleForm')"></el-input> </el-form-item> <!-- `checked` 为 true 或 false -->
		<el-checkbox v-model="checked">记住密码</el-checkbox> <br>
		<br>
		<div class="login-btn">
			<el-button type="primary" @click="submitForm('ruleForm')">登录</el-button>
		</div>
		</el-form>
	</div>
</body>
</html>
