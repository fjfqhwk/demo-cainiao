<%--
  Created by IntelliJ IDEA.
  User: Jack-PC
  Date: 2018/4/3
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传实例 - 测试测试</title>
</head>
<body>
<h1>文件上传实例 - 测试测试</h1>
<form method="post" action="upload" enctype="multipart/form-data">
    选择一个文件:
    <input type="file" name="uploadFile"/>
    <br/><br/>
    <input type="submit" value="上传"/> 
</form>

<form action="message.jsp" method=GET>
    站点名: <input type="text" name="name">
    <br />
    网址: <input type="text" name="url" />
    <input type="submit" value="提交" />
</form>

</body>
</html>