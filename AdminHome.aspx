<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SE_Project.AdminHome" %>

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
<%--    <h1>Welcome Admin</h1>--%>
    <!-- slider section -->
    <section class=" slider_section position-relative">
        <div class="design-box">
            <img src="images/design-1.png" alt="">
        </div>
        <div class="slider_number-container d-none d-md-block">
            <div class="number-box">
                <span>01
                </span>
                <hr>
                <span class="jwel">J
                    <br>
                    e
                    <br>
                    w
                    <br>
                    e
                    <br>
                    l
                    <br>
                    l
                    <br>
                    e
                    <br>
                    r
                    <br>
                    y
                </span>
                <hr>
                <span>02
                </span>
            </div>
        </div>
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
              <%--      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2">03</li>--%>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail_box">
                                    <h2>
                                        <span>Welcome</span>
                                        <hr>
                                    </h2>
                                    <h1>Admin
                                    </h1>
                                    <p>
                                        
Welcome to our exclusive admin portal for our exquisite jewelry website! This platform empowers you with the tools to manage and curate an extraordinary online shopping experience for our discerning customers. From here, you can effortlessly oversee product listings, track orders, update inventory, and engage with our clientele. Seamlessly blending elegance and functionality, our admin portal is your gateway to crafting a captivating online jewelry emporium.
                                    </p>
                                  <%--  <div>
                                        <a href="">Shop Now</a>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="img-box">
                                    <img src="images/slider-img.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <div class="carousel-item ">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail_box">
                                    <h2>
                                        <span>New Collection</span>
                                        <hr>
                                    </h2>
                                    <h1>Jewellery
                                    </h1>
                                    <p>
                                        Lorem ipsum dolor sit amet consec tetur adipiscing elit elit at felislacinia
                      aptent taciti sociosqu ad litora torquent per conubia nostra
                                    </p>
                                    <div>
                                        <a href="">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="img-box">
                                    <img src="images/slider-img.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="carousel-item ">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail_box">
                                    <h2>
                                        <span>New Collection</span>
                                        <hr>
                                    </h2>
                                    <h1>Jewellery
                                    </h1>
                                    <p>
                                        Lorem ipsum dolor sit amet consec tetur adipiscing elit elit at felislacinia
                      aptent taciti sociosqu ad litora torquent per conubia nostra
                                    </p>
                                   
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="img-box">
                                    <img src="images/slider-img.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
