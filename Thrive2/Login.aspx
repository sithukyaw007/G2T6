<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Thrive2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" type="image/x-icon" href="../style/images/favicon.png" />
    <link rel="stylesheet" type="text/css" href="../style.css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="../style/css/ie7.css" media="all" />
<![endif]-->
    <!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="../style/css/ie8.css" media="all" />
<![endif]-->
    <!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="../style/css/ie9.css" media="all" />
<![endif]-->
    <script type="text/javascript" src="../style/js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="../style/js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="../style/js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="../style/js/carousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.masonry.min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.slickforms.js"></script>
</head>
<body>
    
    <form id="form" runat="server">
    <!-- Begin Wrapper -->
        <div id="wrapper">
            <!-- Begin Sidebar -->
            <div id="sidebar">
                <div id="logo">
                    <a href="../index.html">
                        <img src="../style/images/logo.png" alt="Thrive" /></a>
                </div>

                <!-- Begin Menu -->
                <div id="menu" class="menu-v">
                    <center>
                    
                    <ul>
                        <%--<li><a href="../contact.html">Edit Profile</a></li>--%>
                        <li><a href="FAQ.aspx">FAQ</a></li>
                    </ul>
                   
                </div>
                <!-- End Menu -->


            </div>
            <!-- End Sidebar -->

            <!-- Begin Content -->
            <div id="content">
                <h1 class="title">Welcome To Thrive</h1>
                <div class="line"></div>
                <div class="intro">
                    <table>
                        <tr>
                            <td>REGISTERED EMAIL</td>
                            <td><asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>PASSWORD</td>
                            <td><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><a href="ForgetPassword.aspx">Forget Password</a></td>
                            <td><a href="Register.aspx">Register New Account</a></td>
                        </tr>
                        <tr>
                            <td><asp:Button runat="server" Text="Login" onclick="send_OnClick"></asp:Button></td>
                        </tr>
                    </table>
                </div>
                
                <!-- End Content -->
            </div>
            <!-- End Wrapper -->
        </div>
        <div class="clear"></div>
        <script type="text/javascript" src="../style/js/scripts.js"></script>
        <!--[if !IE]> -->
        <script type="text/javascript" src="../style/js/jquery.corner.js"></script>
        <!-- <![endif]-->
    </form>
</body>
</html>
