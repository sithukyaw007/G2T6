﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Thrive2.Therapist.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <title>Register Thoughts</title>
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
                        <img src="../style/images/logo.png" alt="Caprice" /></a>
                </div>

                <!-- Begin Menu -->
                <div id="menu" class="menu-v">
                    <center>               
                        <a style="color: white">Welcome back David</a>
                        <br />     
                        <a href="../Login.aspx?url=logout" style="color: white">Logout</a>
                        </center>
                    <br />
                    <ul>
                        <%--<li><a href="../contact.html">Edit Profile</a></li>--%>
                        <li><a href="Home.aspx" class="active">Home</a></li>
                        <li><a href="MyPatient.aspx">My Patient</a></li>
                        <li><a href="faq.aspx">FAQ</a></li>
                    </ul>
                </div>
                <!-- End Menu -->


            </div>
            <!-- End Sidebar -->

            <script>
                function f1() {
                    document.getElementById("n1").style.visibility = 'hidden';
                }
            </script>

            <script type='text/javascript'>//<![CDATA[ 
                $(window).load(function () {
                    // selects all the divs of class='sample',hides them, finds the first, and shows it
                    $('div.sample').hide().first().show();

                    // binds a click event-handler to a elements whose class='display'
                    $('a.display').on('click', function (e) {
                        // prevents the default action of the link
                        e.preventDefault();

                        // assigns the currently visible div.sample element to a variable
                        var that = $('div.sample:visible'),
                            // assigns the text of the clicked-link to a variable for comparison purposes
                            t = $(this).text();

                        // checks if it was the 'next' link, and ensures there's a div to show after the currently-shown one
                        if (t == 'next' && that.next('div.sample').length > 0) {
                            // hides all the div.sample elements
                            $('div.sample').hide();

                            // shows the 'next'
                            that.next('div.sample').show()
                        }
                            // exactly the same as above, but checking that it's the 'prev' link
                            // and that there's a div 'before' the currently-shown element.
                        else if (t == 'prev' && that.prev('div.sample').length > 0) {
                            $('div.sample').hide();
                            that.hide().prev('div.sample').show()
                        }
                    });
                });//]]>  

            </script>

            <!-- Begin Content -->
            <div id="content">
                <h1 class="title">Hi David..</h1>
                <div class="line"></div>
                <h3>Notifications</h3>
                <div class="info-box">
                    <p>
                        <asp:Label ID="lblNotification" runat="server" Text="Label"></asp:Label>
                    </p>
                </div>
                <%--<iframe src="../selectable.html" border="0" frameborder="0" height="500" width="800"></iframe>--%>

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