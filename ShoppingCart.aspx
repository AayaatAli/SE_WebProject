﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="SE_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cart.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="px-4 px-lg-0">
        <!-- For demo purpose -->
        <div class="container text-black py-5 text-center">
            <%--            <h1 class="heading_container">Shopping cart</h1>--%>
            <div class="heading_container">
                <h2>Your Shopping Cart
                </h2>
            </div>
            <p class="lead mb-0">
<%--                Here's what you have on your way!--%>
                <asp:Label ID="Lbl1" runat="server" Text=""></asp:Label>
            </p>
            <%-- <p class="lead">
                Snippet by <a href="https://bootstrapious.com/snippets" class="text-white font-italic">
                    <u>Bootstrapious</u></a>
            </p>--%>
        </div>
        <!-- End -->

        <div class="pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5" id="cartItem_container" runat="server">

                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="p-2 px-3 text-uppercase">Product</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Price</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Quantity</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Remove</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <asp:Repeater ID="rptrCart" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <th scope="row" class="border-0">
                                                    <div class="p-2">
                                                        <img src="<%#Eval("pImg") %>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                        <div class="ml-3 d-inline-block align-middle">
                                                            <h5 class="mb-0"><a href="#" class="text-dark d-inline-block align-middle"><%#Eval("pName") %></a></h5>
                                                            <span class="text-muted font-weight-normal font-italic d-block">Category: Watches</span>
                                                        </div>
                                                    </div>
                                                </th>
                                                <td class="border-0 align-middle"><strong>$<%# Convert.ToInt32(Eval("pPrice") )*Convert.ToInt32(Eval("pQuantity")) %></strong></td>
                                                <td class="border-0 align-middle"><strong><%#Eval("pQuantity") %></strong></td>
                                                <%--                                                <td class="border-0 align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a></td>--%>
                                                <td class="border-0 align-middle">
<%--                                                    <div class="quote_btn-container ">--%>
                                                       <%-- <a href="" commandargument='<%#Eval("pID") %>' id="Remove" runat="server" onserverclick="Remove_ServerClick" class="btn">
                                                            <img src="images/remove.jpg" alt="" width="80" height="80" >
                                                        </a>--%>

<%--                                                    </div>--%>
                                                    <asp:ImageButton ID="Remove" runat="server" CommandArgument='<%#Eval("pID") %>' ImageUrl="~\images\remove.jpg" Height="80px" Width="80px" OnClick="Remove_ServerClick" />

                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <%--       <tr>
                                        <th scope="row">
                                            <div class="p-2">
                                                <img src="https://bootstrapious.com/i/snippets/sn-cart/product-2.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0"><a href="#" class="text-dark d-inline-block">Lumix camera lense</a></h5>
                                                    <span class="text-muted font-weight-normal font-italic">Category: Electronics</span>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="align-middle"><strong>$79.00</strong></td>
                                        <td class="align-middle"><strong>3</strong></td>
                                        <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>--%>

                                    <%--          <tr>
                                        <th scope="row">
                                            <div class="p-2">
                                                <img src="https://bootstrapious.com/i/snippets/sn-cart/product-3.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0"><a href="#" class="text-dark d-inline-block">Gray Nike running shoe</a></h5>
                                                    <span class="text-muted font-weight-normal font-italic">Category: Fashion</span>
                                                </div>
                                            </div>
                                            <td class="align-middle"><strong>$79.00</strong></td>
                                        <td class="align-middle"><strong>3</strong></td>
                                        <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div>

                <div class="row py-5 p-4 bg-white rounded shadow-sm" id="inst_summary" runat="server">
                    <div class="col-lg-6">
                        <%-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
                        <div class="p-4">
                            <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
                            <div class="input-group mb-4 border rounded-pill p-2">
                                <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
                                <div class="input-group-append border-0">
                                    <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Apply coupon</button>
                                </div>
                            </div>
                        </div>--%>
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller</div>
                        <div class="p-4">
                            <p class="font-italic mb-4">If you have some information for the seller you can leave them in the box below</p>
                            <textarea name="" cols="30" rows="2" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
                        <div class="p-4">
                            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
                            <ul class="list-unstyled mb-4">
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong id="P_total" runat="server">$390.00</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>$10.00</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong>$0.00</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                    <h5 class="font-weight-bold" id="C_total" runat="server">$400.00</h5>
                                </li>
                            </ul>
                            <a href="#" class="btn btn-dark rounded-pill py-2 btn-block" runat="server" id="checkOut_btn" style="color: #fff; background: linear-gradient(to bottom, #f5e47b, #fb930a);" onserverclick="checkOut_btn_ServerClick">Procceed to checkout</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>