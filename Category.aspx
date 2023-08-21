<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="SE_Project.Category" %>

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



    <!-- price section -->

    <section class="price_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <asp:Repeater ID="CategoryaNameRptr" runat="server">
                    <ItemTemplate>
                    <h2>Our <%#Eval("Category_name") %> Collection
                    </h2>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="price_container">


                <asp:Repeater ID="ShowCategoryRptr" runat="server">
                    <ItemTemplate>
                        <%--                        <a style="text-decoration: none" href="Bracelet.aspx?Item_Id=<%# Eval("Item_Id") %>">--%>

                        <div class="box">
                            <div class="name">
                                <h6><%#Eval("Item_name") %>
                                </h6>
                            </div>
                            <div class="img-box">
                                <img src="<%#Eval("Item_image") %>" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>$<span><%#Eval("Item_price") %></span>
                                </h5>
                                <a id="addCart" href="ProductDetail.aspx?Item_Id=<%# Eval("Item_Id") %>">View Product
                                                                <%--<a runat="server" id="a1" href="Category.aspx?C_Id=<%# Eval("Category_Id") %>" onserverclick="addCart_ServerClick">Buy Now--%>

                                    <%--                                <a runat="server" id="addCart" onserverclick="addCart_ServerClick">Buy Now--%>

                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
            <div class="d-flex justify-content-center">
                <a href="" class="price_btn">See More
                </a>
            </div>
        </div>
    </section>

    <!-- end price section -->



</asp:Content>
