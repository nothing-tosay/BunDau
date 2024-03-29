<%-- 
    Document   : login
    Created on : Mar 26, 2020, 3:44:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Space Login Form Flat Responsive Widget Template :: w3layouts</title>

        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Space Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Meta tag Keywords -->

        <!-- css files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- css files -->

        <!-- Online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
        <!-- //Online-fonts -->

    </head>
    <body>
        <!-- main -->
        <div class="main">
            <div class="main-w3l">
                <h1 class="logo-w3">Mẹt quán</h1>

                <div class="w3layouts-main">
                    <h2><span>Đăng nhập</span></h2>
                    <form action="${pageContext.request.contextPath}/Login" method="POST">
                        <p style="color:red">${noti}</p>
                        <input placeholder="Tên đăng nhập" name="username" type="text" required="">
                        <p style="color:red">${msg_user}</p>
                        <input placeholder="Mật Khẩu" name="password" type="password" required="">
                        <p style="color:red">${msg_pass}</p>
                        <input type="submit" value="Đăng Nhập" name="login">
                        <br>
                        <a href="${pageContext.request.contextPath}/Register">
                            <input type="button" value="Đăng Ký" name="sign">
                        </a>
                            <a href="${pageContext.request.contextPath}/TrangChu">
                            <input type="button" value="Trang Chủ" name="home">
                        </a>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>

