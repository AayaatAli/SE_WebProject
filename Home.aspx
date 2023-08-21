﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SE_Project.Home" %>

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
                    <%--  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>--%>
                    <%--  <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2">03</li>--%>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
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
                                        Trend-setting jewellery & accessories. We've got you covered head to tow in bling. Shop our latest collections now. Beautiful, affordable, and on trend fashion jewellery.
                                    </p>
                                    <div>
                                        <a href="Jewellery.aspx">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="img-box">
                                    <img src="images/slider-img.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
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
                                     <div>
                                        <a href="">Shop Now</a>
                                    </div>
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
                </div>
            </div>
        </div>

    </section>
    <hr />
    <!-- end slider section -->
    <%--    </div>--%>

    <!-- item section -->

    <%--    <div class="item_section layout_padding2">
        <div class="container">
            <div class="item_container">
                <div class="box">
                    <div class="price">
                        <h6>Best PRICE
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/i-1.png" alt="">
                    </div>
                    <div class="name">
                        <h5>Bracelet
                        </h5>
                    </div>
                </div>
                <div class="box">
                    <div class="price">
                        <h6>Best PRICE
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/i-2.png" alt="">
                    </div>
                    <div class="name">
                        <h5>Ring
                        </h5>
                    </div>
                </div>
                <div class="box">
                    <div class="price">
                        <h6>Best PRICE
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/i-3.png" alt="">
                    </div>
                    <div class="name">
                        <h5>Earings
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <!-- end item section -->

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

    <!-- price section -->

    <%--    <section class="price_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Our Jewellery Price
                </h2>
            </div>
            <div class="price_container">
                <div class="box">
                    <div class="name">
                        <h6>Diamond Ring
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/p-1.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>$<span>1000.00</span>
                        </h5>
                        <a href="">Buy Now
                        </a>
                    </div>
                </div>
                <div class="box">
                    <div class="name">
                        <h6>Diamond Ring
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/i-2.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>$<span>1000.00</span>
                        </h5>
                        <a href="">Buy Now
                        </a>
                    </div>
                </div>
                <div class="box">
                    <div class="name">
                        <h6>Diamond Ring
                        </h6>
                    </div>
                    <div class="img-box">
                        <img src="images/i-3.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>$<span>1000.00</span>
                        </h5>
                        <a href="">Buy Now
                        </a>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <a href="" class="price_btn">See More
                </a>
            </div>
        </div>
    </section>--%>

    <!-- end price section -->

    <!-- ring section -->

    <section class="ring_section layout_padding">
        <div class="design-box">
            <img src="images/design-1.png" alt="">
        </div>
        <div class="container">
            <div class="ring_container layout_padding2">
                <div class="row">
                    <div class="col-md-5">
                        <div class="detail-box">
                            <h4>special
                            </h4>
                            <h2>Wedding Ring
                            </h2>
                            <a href="">Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="img-box">
                            <img src="images/ring-img.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end ring section -->

    <!-- client section -->

    <section class="client_section">
        <div class="container">
            <div class="heading_container">
                <h2>Testimonial
                </h2>
            </div>
            <h4 class="secondary_heading">What is says our customer
            </h4>
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="client_container">
                            <div class="client-id">
                                <div class="img-box">
                                    <img src="images/client.png" alt="">
                                </div>
                                <div class="name">
                                    <h5>Aliqua
                                    </h5>
                                    <h6>Consectetur adipiscing
                                    </h6>
                                </div>
                            </div>
                            <div class="detail-box">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrudLorem ipsum
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="client_container">
                            <div class="client-id">
                                <div class="img-box">
                                    <img src="images/client.png" alt="">
                                </div>
                                <div class="name">
                                    <h5>Aliqua
                                    </h5>
                                    <h6>Consectetur adipiscing
                                    </h6>
                                </div>
                            </div>
                            <div class="detail-box">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrudLorem ipsum
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="client_container">
                            <div class="client-id">
                                <div class="img-box">
                                    <img src="images/client.png" alt="">
                                </div>
                                <div class="name">
                                    <h5>Aliqua
                                    </h5>
                                    <h6>Consectetur adipiscing
                                    </h6>
                                </div>
                            </div>
                            <div class="detail-box">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrudLorem ipsum
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>
    </section>

    <!-- end client section -->

    <!-- contact section -->

    <section class="contact_section layout_padding">
        <div class="design-box">
            <img src="images/design-2.png" alt="">
        </div>
        <div class="container ">
            <div class="">
                <h2 class="">Contact Us
                </h2>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <form action="">
                        <div>
                            <input type="text" placeholder="Name" />
                        </div>
                        <div>
                            <input type="email" placeholder="Email" />
                        </div>
                        <div>
                            <input type="text" placeholder="Phone" />
                        </div>
                        <div>
                            <input type="text" class="message-box" placeholder="Message" />
                        </div>
                        <div class="d-flex ">
                            <button>
                                SEND
                            </button>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <div class="map_container">
                        <div class="map-responsive">
                            <%--                            <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France" width="600" height="300" frameborder="0" style="border: 0; width: 100%; height: 100%" allowfullscreen></iframe>--%>
                            <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=NED+University+of+Engineering+and+Technology/@24.9300102,67.1153478,15z/data=!4m5!3m4!1s0x0:0xf864ed97b4a8ec0e!8m2!3d24.9300102!4d67.1153478" width="600" height="300" frameborder="0" style="border: 0; width: 100%; height: 100%" allowfullscreen></iframe>
                            <%--                            <iframe src="https://www.google.com/maps/place/NED+University+of+Engineering+and+Technology/@24.9300102,67.1153478,15z/data=!4m5!3m4!1s0x0:0xf864ed97b4a8ec0e!8m2!3d24.9300102!4d67.1153478" width="600" height="300" frameborder="0" style="border: 0; width: 100%; height: 100%" allowfullscreen></iframe>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end contact section -->




</asp:Content>
