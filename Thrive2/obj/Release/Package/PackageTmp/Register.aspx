<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Thrive2.Register" %>

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
    <form id="form1" runat="server">
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
        <!-- Header -->
        <div id="header">
        </div>
        <!-- Header end-->
        <script>
            function Back() {
                history.go(-1);
                return false;
            }

        </script>
        <div id="content">
        <div id="login">
            <table align="center" border="0">
                <tr>
                    <th>Registration</th>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Last Name</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Race</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>NRIC</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Birth Date</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Home No.</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="text" name="user" /></td>
                    
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Confirm Password</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <input type="submit" name="btnEdit" value="Back" onclick="return Back();" id="btnEdit" class="buttonstyle" />
                    </td>
                    <td>
                         <asp:Button runat="server" Text="Register" onclick="send_OnClick"></asp:Button></td>
                </tr>
            </table>
        </div>
            </div>
    </form>
   
</body>
</html>
