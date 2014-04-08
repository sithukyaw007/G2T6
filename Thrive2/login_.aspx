<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_.aspx.cs" Inherits="Thrive2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login form</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--script-->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
</head>
<body>
    <div class="login">
        <!--start-loginform-->
        <form name="login-form" class="login-form">
            <span class="header-top">
                <img src="images/topimg.png" /></span>
            <div class="header">
                <h1>Login Form</h1>
                <span>Fill out the form below to login</span>
            </div>
            <div class="content">                
                <input id="username" type="email" class="input username" placeholder="Email" required="">
                <input type="password" class="input password" placeholder="Password" required="">
            </div>
            <div class="login_button">
                <script>
                    function check() {
                        if (username.value.match("david@ktph.com"))
                            return window.location = "Therapist/Home.aspx";
                        else if (username.value.match("rachel@gmail.com"))
                            return window.location = "Patient/Home.aspx";
                    }
                </script>
                <%--<input type="submit" name="btnEdit" value="Login" onclick="return check();" id="btnEdit" class="buttonstyle" />--%>
                <%--<asp:Button ID="Button1" name="submit" runat="server" Text="Login" class="button" OnClick="Button1_Click"/>--%>
                <input type="submit" name="submit" value="Login" onclick="return check();" class="button" />
            </div>
            <div>
                <center>
                <p>
                    <a href="ForgetPassword.aspx">Forgot password?</a>
                </p>                    
                <p>
                    <a href="Register.aspx">Register</a>
                </p>
                    </center>
            </div>
        </form>
        <!--end login form-->
        <!--side-icons-->
        <div class="user-icon"></div>
        <div class="pass-icon"></div>
        <!--END side-icons-->
        <!--Side-icons-->
        <script type="text/javascript">
            $(document).ready(function () {
                $(".username").focus(function () {
                    $(".user-icon").css("left", "-69px");
                });
                $(".username").blur(function () {
                    $(".user-icon").css("left", "0px");
                });

                $(".password").focus(function () {
                    $(".pass-icon").css("left", "-69px");
                });
                $(".password").blur(function () {
                    $(".pass-icon").css("left", "0px");
                });
            });
        </script>
        <p class="copy_right">&#169; 2014 by Team 180° </p>

    </div>
</body>
</html>
