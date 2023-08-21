<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SE_Project.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!--main css bootstrap-->
    <link href="css/responsive.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />


    <script src="js/bootstrap.min.js"></script>
    <!--main js bootstrap-->
    <script src="js/custom.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- about section -->

    <section class="about_section layout_padding2-top layout_padding-bottom">
        <div class="design-box">
            <img src="images/design-2.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>About Jewellery Shop
                            </h2>
                        </div>
                        <p>
                            Our Team never-ending search for beautiful and unique jewelry continues. We strive to curate the most incredible collection of one-of-a-kind vintage and antique jewelry for our customers and provide an experience that you will remember for a lifetime.           
                        </p>
                        <p id="para2" runat="server" visible="false">
                            The Bead it is a Pakistan based online boutique specializing in magnificent antique & vintage jewelry. Each piece is hand-picked by Aayaat, Warisha, Tehreem and Musfirah - the team of jewelry lovers behind The Antique Bead it online store!
                        </p>
                        <div>
                            <a href="" runat="server" id="readPara2" onserverclick="readPara2_ServerClick">Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="img-box">
                        <img src="images/about-img.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->



</asp:Content>
