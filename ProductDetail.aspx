<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="SE_Project.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ProductDetail.css" rel="stylesheet" />

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


    <%--    <div class="container">--%>
    <%--        <div class="col-lg-8 border p-3 main-section bg-white">--%>
    <div class="row hedding m-0 pl-3 pt-0 pb-3">
       
        <div class="heading_container">
            <h2>Detail About Product
            </h2>
        </div>

    </div>
    <asp:Repeater ID="ShowItemRptr" runat="server">
        <ItemTemplate>
            <div class="row m-0">
                <div class="col-lg-4 left-side-product-box pb-3">
                    <img src="<%#Eval("Item_image") %>" class="border p-3">
                    <%--            <img src="http://nicesnippets.com/demo/pd-image1.jpg" class="border p-3">--%>
                    <%-- <span class="sub-img">
                        <img src="http://nicesnippets.com/demo/pd-image2.jpg" class="border p-2">
                        <img src="http://nicesnippets.com/demo/pd-image3.jpg" class="border p-2">
                        <img src="http://nicesnippets.com/demo/pd-image4.jpg" class="border p-2">
                    </span>--%>
                </div>
                <div class="col-lg-8">
                    <div class="right-side-pro-detail border p-3 m-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <span>Wear what you want!</span>
                                <p class="m-0 p-0"><%#Eval("Item_name") %></p>
                            </div>
                            <div class="col-lg-12">
                                <p class="m-0 p-0 price-pro">$<%#Eval("Item_price") %></p>
                                <hr class="p-0 m-0">
                            </div>
                            <div class="col-lg-12 pt-2">
                                <h5>Product Detail</h5>
                                <span>The product is imported, well polished, and embossed with astounding gems, beautifully designed by our team.</span>
                                <hr class="m-0 pt-2 mt-2">
                            </div>
                            <%--<div class="col-lg-12">
                                <p class="tag-section"><strong>Tag : </strong><a href="">Woman</a><a href="">,Man</a></p>
                            </div>--%>
                            <div class="col-lg-12">
                                <h6>Quantity :</h6>
                                <input type="number" class="form-control text-center w-100" name="tbQuantity" value="1">
                            </div>
                            <div class="col-lg-12 mt-3">
                                <div class="row">
                                    <div class="col-lg-6 pb-2">
                                        <a href="#" class="btn btn w-100" id="addCart" runat="server" onserverclick="addCart_ServerClick" style="color: #fff; background: linear-gradient(to bottom, #f5e47b, #fb930a);">Add To Cart</a>
                                    </div>
                                    <div class="col-lg-6">
<%--                                        <a href="Category.aspx?Category_Id=<%# Eval("Category_Id") %>" class="btn btn w-100" style="color: #fff; background: linear-gradient(to bottom, #f5e47b, #fb930a);">Shop Now</a>--%>
                                        <a href="Jewellery.aspx" class="btn btn w-100" style="color: #fff; background: linear-gradient(to bottom, #f5e47b, #fb930a);">Back</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <%--<div class="row">
        <div class="col-lg-12 text-center pt-3">
            <h4>More Product</h4>
        </div>
    </div>--%>
    <%--<div class="row mt-3 p-0 text-center pro-box-section">
        <div class="col-lg-3 pb-2">
            <div class="pro-box border p-0 m-0">
                <img src="http://nicesnippets.com/demo/pd-b-image1.jpg">
            </div>
        </div>
        <div class="col-lg-3 pb-2">
            <div class="pro-box border p-0 m-0">
                <img src="http://nicesnippets.com/demo/pd-b-images2.jpg">
            </div>
        </div>
        <div class="col-lg-3 pb-2">
            <div class="pro-box border p-0 m-0">
                <img src="http://nicesnippets.com/demo/pd-b-images3.jpg">
            </div>
        </div>
        <div class="col-lg-3 pb-2">
            <div class="pro-box border p-0 m-0">
                <img src="http://nicesnippets.com/demo/pd-b-images4.jpg">
            </div>
        </div>
    </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</asp:Content>
