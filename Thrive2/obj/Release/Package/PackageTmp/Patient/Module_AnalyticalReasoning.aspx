<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module_AnalyticalReasoning.aspx.cs" Inherits="Thrive2.Module_AnalyticalReasoning" %>

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
    <script type="text/javascript" src="../style/js/jquery-1.8.1.min.js"></script>
    <script type="text/javascript" src="../style/js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="../style/js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="../style/js/carousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.masonry.min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.slickforms.js"></script>


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
                        <li><a class="active">Module</a>
                            <ul>
                                <li><a href="Module_RegisteringPositiveThoughts.aspx">Moduole 1</a></li>
                                <li><a href="Module_AnalyticalReasoning.aspx">Module 2</a></li>
                                <li><a href="Module_AnIntroductiontoDepression.aspx">Module 3</a></li>
                            </ul>
                        </li>
                        <li><a>Assignment</a>
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


            <!-- Begin Content -->
            <div id="content">
                <h1 class="title">Module</h1>
                <div class="line"></div>
                <h3>Analytical Reasoning</h3>
                <div class="sample">
                    <p>
                        Anita is a high school principal. She has been on the job for only a few weeks, and several teachers and students have already approached her for advice on solving some problems that they are dealing with in their classes and activities. Read the following scenarios and choose the best suggestion for a solution that Anita can offer.
                                    <br />
                        <br />
                        Sarah is teaching a classroom of 9 special needs children. She's having a tough year because certain children do not get along with others and some are having a little too much fun together and are completely distracted and rowdy. Unfortunately, she's the only teacher for special needs adolescents so none of the children can be moved to other classrooms. She's taken notes over the course of the last month, recording the problems and positive developments. She asks Anita to review her notes and identify what she can do to improve the situation. The names of the students in the class are as follows: Bob, Sally, Andrew, Billy, Trina, Kate, Elliot, Tim and Ian.
                                    <br />
                        <br />
                        Here are the notes:       
                    </p>
                    <ul>
                        <li>When Kate and Ian are sitting adjacent to each other (in any direction), they are very disruptive because they are constantly joking around.
                        </li>
                        <li>Trina is most attentive during math and tends to goof off during reading and writing tasks.
                        </li>
                        <li>When Kate and Sally sat in the front row, they were much more attentive than when sitting in the middle or back rows.
                        </li>
                        <li>After observations, students seem to be equally well-behaved (or not) in the mornings and afternoon.
                        </li>
                        <li>Billy is diabetic and has to sit in the chair closest to the back door and exit, on the left side of the back of the room.
                        </li>
                        <li>Billy doesn't get along with any of the girls and will bother them if they sit next to him, in front of him, behind him, or diagonal to him.
                        </li>
                        <li>Bob seems to get along with everyone, but does best when he is seated away from the window.
                        </li>
                        <li>Sally gets anxious if she is placed away from the windows.
                        </li>
                        <li>Andrew and Sally are good friends and their giggling is disruptive if they are sitting even remotely near one another. They need to be as far away from each other as possible.
                        </li>
                        <li>Billy and Elliot seem to encourage each other to work hard and concentrate and therefore, do best if seated next to each other.
                        </li>
                        <li>Elliot, Kate, and Trina were all out sick four times last month.
                        </li>
                    </ul>
                    <br />

                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="#006600">Page 1 of 3</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow HorizontalAlign="Right">
                            <asp:TableCell>
                                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Right" Font-Bold="True" Font-Size="Medium">
                                        <a href="#" id="A2" class="display" style="font-size: medium">next</a>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </div>

                <div class="sample">

                    <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="White" Font-Bold="True" Font-Size="Large">Introduction</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center" ColumnSpan="2">
                                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Black" Font-Bold="True" Font-Size="Medium">Low mood and stress from a CBT perspective</asp:Label>
                                <p style="color: black;">
                                    Welcome to the second chapter of the iKapa treatment! In the previous chapter you got an introduction to CBT, and hopefully you achieved a better understanding of it. This chapter deepens your understanding of depression and stress, by providing an explanation of how they interact. Generally, different people have very different experiences. Therefore, you might easily relate to certain parts of the text, eg. the examples about low mood. It could also be the other way around, that the parts of the text dealing with stress are those that you feel most closely resemble your own situation.
                                </p>
                                <p style="color: black">
                                    In this chapter, the overarching concept is that the way you think and how you interpret what happens in your life are essential elements of both depression and stress. It is customary to place the so-called negative automatic thoughts at the heart of this. Therefore, you will learn a lot about automatic thoughts - how to recognize them, how to distinguish between them and how to register them. Many find that simply writing down one’s automatic thoughts is a good way of putting them into perspective. You will also learn how to become aware of your interpretations of your surroundings. This will be a first step towards learning to think differently, which you will get to practice even more in the next chapter. First of all, however, you will be given a bit more information about anxiety and depression in general.
                                </p>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#006600">Page 2 of 3</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" Font-Bold="True" Font-Size="Medium">
                                        <a href="#" id="A1" class="display" style="font-size: medium">prev</a>
                                        <a href="#" id="A3" class="display" style="font-size: medium;margin-left: 590px;">next</a>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>

                <div class="sample">
                    <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White" Font-Bold="True" Font-Size="Large">Third Page</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center" ColumnSpan="2">
                                <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="Black" Font-Bold="True" Font-Size="Medium">Low mood and stress from a CBT perspective</asp:Label>
                                <p style="color: black;">
                                    Welcome to the third chapter of the iKapa treatment! In the previous chapter you got an introduction to CBT, and hopefully you achieved a better understanding of it. This chapter deepens your understanding of depression and stress, by providing an explanation of how they interact. Generally, different people have very different experiences. Therefore, you might easily relate to certain parts of the text, eg. the examples about low mood. It could also be the other way around, that the parts of the text dealing with stress are those that you feel most closely resemble your own situation.
                                </p>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="#006600">Page 3 of 3</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow HorizontalAlign="Right">
                            <asp:TableCell>
                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Right" Font-Bold="True" Font-Size="Medium">
                                        <a href="#" id="A5" class="display" style="font-size: medium">prev</a>
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

