<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPatientAssignment.aspx.cs" Inherits="Thrive2.Therapist.MyPatientAssignment" %>

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
    <form id="form1" runat="server" onsubmit="return confirm('Do you want to proceed this action?');">
        >
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
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="MyPatient.aspx" class="active">My Patient</a></li>
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
                <h1 class="title">My Patient</h1>
                <div class="line"></div>


                <div>
                    <asp:Table ID="Table2" runat="server">
                        <asp:TableRow>
                            <asp:TableCell Width="50px">
                        <img src="/img/user_avatar.png" style="width:50px; height:55px" />                        
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Left">
                                <asp:Label ID="lbl_pname" runat="server" Text="Patient Name"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lbl_assignment" runat="server" Text="Assignment No."></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell RowSpan="2" VerticalAlign="Top" HorizontalAlign="Center">
                                <asp:Label ID="Label2" runat="server" Text="Label">Feedback</asp:Label>
                                <br />
                                <asp:TextBox ID="tbx_feedback" runat="server" TextMode="MultiLine" Width="170px" Height="240px"></asp:TextBox>
                                Score:
                        <asp:TextBox ID="tbx_score" runat="server" Width="50px"></asp:TextBox>/10    
                        <br />
                                <br />
                                <asp:Button ID="btn_back" runat="server" Text="Back" Width="75px" OnClick="btn_back_Click" CssClass="Button" />
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="75px" OnClick="btn_submit_Click" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <div class="sample">
                                    <asp:Table ID="Table3" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:TextBox ID="tbx_assignment" runat="server" TextMode="MultiLine" Enabled="False" BorderStyle="None" Width="285px" Height="400px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
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


