<%--
  Created by IntelliJ IDEA.
  User: Jack-PC
  Date: 2018/4/12
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>get 和 set 属性实例</title>
</head>
<body>

<jsp:useBean id="students"
             class="com.fox.StudentsBean">
    <jsp:setProperty name="students" property="firstName"
                     value="小强"/>
    <jsp:setProperty name="students" property="lastName"
                     value="王"/>
    <jsp:setProperty name="students" property="age"
                     value="10"/>
</jsp:useBean>

<p>学生名字:
    <jsp:getProperty name="students" property="firstName"/>
</p>
<p>学生姓氏:
    <jsp:getProperty name="students" property="lastName"/>
</p>
<p>学生年龄:
    <jsp:getProperty name="students" property="age"/>
</p>

</body>
</html>