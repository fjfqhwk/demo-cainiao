<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Jack-PC
  Date: 2018/4/4
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>熟读唐诗三百首</title>
    <link href="https://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
</head>
<body>

<form action="gettime" method="post" id="form1">
    <td>
        <dd>用户名：<input type="text" name="name"></dd>
        <hr>
        <dd><input type="submit" value="提交"></dd> 
    </td>
</form>

<form action="form.jsp" method="POST" target="_self">
    <input type="checkbox" name="google" checked="checked" /> Google
    <input type="checkbox" name="runoob"  /> 菜鸟教程
    <input type="checkbox" name="taobao" checked="checked" />
    淘宝
    <input type="submit" value="选择网站" />
</form>

<h1>读取所有表单参数</h1>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>参数名</th><th>参数值</th>
    </tr>
    <%
        Enumeration paramNames = request.getParameterNames();

        while(paramNames.hasMoreElements()) {
            String paramName = (String)paramNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getParameter(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
    %>
</table>
</body>
</html>
