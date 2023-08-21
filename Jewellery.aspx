<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Jewellery.aspx.cs" Inherits="SE_Project.Jewellery" %>

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


    <!-- item section -->

    <div class="item_section layout_padding2">
        <div class="container">
            <div class="heading_container">
                <h2>Our Jewellery Collection
                </h2>
            </div>
            <div class="item_container">


                <asp:Repeater ID="rptrShowCategory" runat="server">
                    <ItemTemplate>
                        <div class="box">
                            <div class="price">
                                <h6>Best PRICE
                                </h6>
                            </div>
                            <div class="img-box">
                                <a  href="Category.aspx?Category_Id=<%# Eval("Category_Id") %>">
<%--                                <a href="<%#Eval("Category_name") %>.aspx">--%>

                                    <img src="<%#Eval("image") %>" alt="">
                                </a>
                            </div>
                            <div class="name">
                                <h5><%#Eval("Category_name") %>
                                </h5>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>






            </div>
        </div>
    </div>

    <!-- end item section -->


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



</asp:Content>
