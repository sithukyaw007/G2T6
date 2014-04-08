<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment_RegisteringPositiveThoughts.aspx.cs" Inherits="Thrive2.Patient.Assignment_RegisteringPositiveThoughts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <title>Register Thoughts Assignment</title>
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
                    <a><img src="../style/images/rachel.png" alt="" title="Rachel" /></a>
                    <a href="Profile.aspx" style="color: white">My Profile</a>
                        <br />
                        <a href="../Login.aspx?url=logout" style="color: white">Logout</a>
                        </center>
                    <br />
                    <ul>
                        <%--<li><a href="../contact.html">Edit Profile</a></li>--%>
                        <li><a href="Home.aspx">Home</a></li>
                        <%--<li><a href="../">Notification <img id="image" class="showme" src="../style/images/notification.png" alt="some_text" style="border: none;" /> </a> </li>--%>
                        <li><a href="">Module</a>
                            <ul>
                                <li><a href="Module_RegisteringPositiveThoughts.aspx">Moduole 1</a></li>
                                <li><a href="Module_AnalyticalReasoning.aspx">Module 2</a></li>
                                <li><a href="Module_AnIntroductiontoDepression.aspx">Module 3</a></li>
                            </ul>
                        </li>
                        <li><a class="active" href="">Assignment</a>
                            <ul>
                                <li><a href="Assignment_RegisteringPositiveThoughts.aspx">Assignment 1</a></li>
                                <li><a href="Assignment_AnalyticalReasoning.aspx">Assignment 2</a></li>
                                <li><a href="Assignment_AnIntroductiontoDepression.aspx">Assignment 3</a></li>
                            </ul>
                        </li>
                        <li><a href="ViewProgress.aspx">My Progress</a></li>
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
                <h1 class="title">Assignment 1</h1>
                <div class="line"></div>
                <h3>Assignment for Registering Positive Thoughts</h3>

                <asp:Table ID="Table2" runat="server">
                    <asp:TableRow Height="50px">
                        <asp:TableCell VerticalAlign="Top">
                            <asp:TextBox ID="tbx_assignment" runat="server" Width="500px" Height="500px" TextMode="MultiLine" Enabled="False" BackColor="White"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="tbx_feedback" runat="server" Width="150px" Height="500px" TextMode="MultiLine" Enabled="False" BackColor="White"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" Height="35px" Width="80px" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

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

