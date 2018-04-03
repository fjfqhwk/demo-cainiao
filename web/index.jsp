<%--
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
    <title>life.jsp</title>
    <script src="/Scripts/JS/jquery.1.9.1.min.js" type="text/javascript"></script>

</head>
<body>

<%!
    private int initVar = 0;
    private int serviceVar = 0;
    private int destroyVar = 0;
%>

<%!
    public void jspInit() {
        initVar++;
        System.out.println("jspInit(): JSP被初始化了" + initVar + "次");
    }

    public void jspDestroy() {
        destroyVar++;
        System.out.println("jspDestroy(): JSP被销毁了" + destroyVar + "次");
    }
%>

<%
    serviceVar++;
    System.out.println("_jspService(): JSP共响应了" + serviceVar + "次请求");

    String content1 = "初始化次数 : " + initVar;
    String content2 = "响应客户请求次数 : " + serviceVar;
    String content3 = "销毁次数 : " + destroyVar;
%>
<h1>菜鸟教程 JSP 测试实例</h1>
<p><%=content1 %>
</p>
<p><%=content2 %>
</p>
<p><%=content3 %>
</p>

<button onclick="open()">点击修改头像</button>
<script type="text/javascript">
function open() {
    window.navigator("/upload.jsp");
    alert("跳转");
    
}
</script>
</body>
</html>