<%-- 
    Document   : login
    Created on : Jun 19, 2024, 8:22:49 PM
    Author     : Kim Nha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link href="css/styleLogin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid row header">
            <div class="col-md-8 ">
                <a href="homePage"><img class="logo-home" src="images/logo/logohome.png" alt="home-logo"></a>
            </div>
            <h2 class="col-md-4" style="text-align: center;">Đăng nhập</h2>
        </div>
        <div class="container-fluid">
            <div class="row login-container">
                <div class="col-md-6 login-logo">
                    <img src="images/logo/logoblack.png" alt="login-logo" />
                    <p class="slogan">Giải pháp cho bữa ăn lành mạnh, tiết kiệm thời gian</p>
                </div>
                <div class="col-md-6 login-form">
                    <form action="loginAction" method="post">
                        <h3 style="text-align: center; margin-bottom: 30px;">Đăng nhập</h3>
                        <label>TÊN ĐĂNG NHẬP</label>
                        <p><input class="form-control" type="text" placeholder="Tên đăng nhập" name="txtusername" value="${param.txtusername}" required/></p>
                        <label>MẬT KHẨU</label>
                        <p><input class="form-control" type="password" placeholder="Mật khẩu" name="txtpassword" value="${param.txtpassword}" required/></p>
                        <p><button type="submit">ĐĂNG NHẬP</button></p>
                        <c:if test="${not empty requestScope.ERROR}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                ${requestScope.ERROR}
                            </div>
                        </c:if>
                        <p style="text-align: center; color: gray;">HOẶC</p>
                        <p class="register-btn">Chưa có tài khoản? <a href="registrationPage">Đăng ký</a></p>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>

