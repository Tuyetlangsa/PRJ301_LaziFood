<%-- 
    Document   : registration
    Created on : 20-06-2024, 08:02:35
    Author     : long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            .container {
                max-width: 600px;
                margin: auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                font-weight: bold;
            }
            .form-group input {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }
            .form-group input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
            }
            .form-group input[type="submit"]:hover {
                background-color: #45a049;
            }
            .error-message {
                color: red;
                font-size: 0.8em;
            }
        </style>
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
        <div class="container">
            <h2>Registration Form</h2>
            <form action="registrationAction" method="POST">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="txtUsername" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="txtPassword" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="confirmPassword" name="txtConfirmPassword" required oninput="validatePasswordComfirm() ">
                    <span id="confirmPasswordError" class="error-message"></span>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="txtEmail" required>
                </div>
                <div class="form-group">
                    <label for="fullName">Full Name:</label>
                    <input type="text" id="fullName" name="txtFullName" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="txtPhone" required>
                </div>
                <div class="form-group">
                    <input type="submit" id="submitBtn" value="register" disabled>
                </div>
            </form>
            <p>${requestScope.Error}</p>
    </body>
</html>
