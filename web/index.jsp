<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Jack-PC
  Date: 2018/4/3
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html>
<head>
    <title>沁园春·雪</title>
    <script src="/resource/js/jquery-3.3.1.min.js" type="text/javascript"></script>
</head>
<body>

<h1>笨鸟先飞 JSP 测试实例</h1>

<form action="/cainiao/upload.jsp" enctype="multipart/form-data" method="post">
    <input type="submit" value="跳转页面">
</form>

<hr/>
<h1>设置 Cookie</h1>

<ul>
    <li><p><b>网站名:</b>
        <%= request.getParameter("name")%>
    </p></li>
    <li><p><b>网址:</b>
        <%= request.getParameter("url")%>
    </p></li>
</ul>

<%
    Cookie cookie = null;
    Cookie[] cookies = null;
    // 获取cookies的数据,是一个数组
    cookies = request.getCookies();
    if( cookies != null ){
        out.println("<h2> 查找 Cookie 名与值</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];

            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
            out.print("------------------------------------<br>");
        }
    }else{
        out.println("<h2>没有发现 Cookie</h2>");
    }
%>

</body>
</html>