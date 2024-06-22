<%-- 
    Document   : registration
    Created on : 20-06-2024, 08:02:35
    Author     : long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link href="css/styleLogin.css" rel="stylesheet" type="text/css"/>
        <script>
            function validatePasswordComfirm() {
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;

                if (password !== confirmPassword) {
                    // Show error message
                    document.getElementById("confirmPasswordError").innerText = "Passwords do not match";
                    document.getElementById("submitBtn").disabled = true;
                    return false; // Prevent form submission
                } else {
                    // Clear error message
                    document.getElementById("confirmPasswordError").innerText = "";
                    document.getElementById("submitBtn").disabled = false;
                    return true; // Allow form submission
                }
            }
        </script>
    </head>
    <body>
        <div class="container-fluid row header">
            <div class="col-md-8 ">
                <a href="homePage"><img class="logo-home" src="images/logo/logohome.png" alt="home-logo"></a>
            </div>
            <h2 class="col-md-4" style="text-align: center;">Đăng ký</h2>
        </div>
        <div class="container-fluid">
            <div class="row register-container">
                <div class="col-md-6 login-logo">
                    <img src="images/logo/logoblack.png" alt="login-logo" />
                    <p class="slogan">Giải pháp cho bữa ăn lành mạnh, tiết kiệm thời gian</p>
                </div>
                <div class="col-md-6 register-form">
                    <form action="registrationAction" method="POST" accept-charset="UTF-8">
                        <h3 style="text-align: center; margin-bottom: 30px;">Đăng ký</h3>
                        <c:if test="${not empty requestScope.Error}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                ${requestScope.Error}
                            </div>                        
                        </c:if>
                        <div class="form-group">
                            <label for="username">Tên đăng nhập</label>
                            <input class="form-control" type="text" id="username" name="txtUsername" placeholder="Tên đăng nhập" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input class="form-control" type="email" id="email" name="txtEmail" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <label for="fullName">Họ và tên</label>
                            <input class="form-control" type="text" id="fullName" name="txtFullName" placeholder="Họ và tên" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input class="form-control" type="text" id="phone" name="txtPhone" placeholder="Số điện thoại" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input class="form-control" type="password" id="password" name="txtPassword" placeholder="Mật khẩu" required>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Nhập lại mật khẩu</label>
                            <input class="form-control" type="password" id="confirmPassword" name="txtConfirmPassword" placeholder="Nhập lại mật khẩu" required oninput="validatePasswordComfirm() ">
                            <span id="confirmPasswordError" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <input type="submit" id="submitBtn" value="ĐĂNG KÝ" disabled>
                        </div>
                        <p style="text-align: center; color: gray;">HOẶC</p>
                        <p class="register-btn">Bạn đã có tài khoản? <a href="loginPage">Đăng nhập</a></p>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>