package com.fox;


import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintStream;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("GBK");
        res.setContentType("text/html;charSet=GBK");

        String name = req.getParameter("name");
        PrintStream out = new PrintStream(res.getOutputStream());

        out.println("这是一个测试页面----" + name);
        System.out.println("测试成功！");

    }

}
