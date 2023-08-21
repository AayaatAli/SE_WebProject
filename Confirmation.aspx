<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="SE_Project.Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Confirmation.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5 mb-5">

        <div class="row d-flex justify-content-center">

            <div class="col-md-12">

                <div class="card">


                    <div class="text-left logo p-2 px-5">

                        <img src="images/logo.png" width="50"><h2 class="text-center"><span id="lbl6" runat="server">Confirm Your Order</span></h2>
                    </div>

                    <div class="invoice p-5">

                        <h5>
                            <asp:Label ID="Label3" runat="server"></asp:Label>

                            <%--                            Your order Confirmed!--%>

                        </h5>

                        <span class="font-weight-bold d-block mt-4" id="lbl4" runat="server">Hello, Chris</span>
                        <span id="lbl5" runat="server" visible="false">You order has been confirmed and will be shipped in next two days!</span>

                        <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">

                            <table class="table table-borderless">
                                <asp:Repeater ID="ShippingDetailsRptr" runat="server">
                                    <ItemTemplate>


                                        <tbody>
                                            <tr>
                                              <%--  <td>
                                                    <div class="py-2">

                                                        <span class="d-block text-muted">Order Date</span>
                                                        <span id="dateSpan" runat="server">12 Jan,2018</span>

                                                    </div>
                                                </td>--%>

                                                <td>
                                                    <div class="py-2">

                                                        <span class="d-block text-muted">Order No</span>
                                                        <span><%#Eval("ShippingID") %></span>

                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="py-2">

                                                        <span class="d-block text-muted">Payment</span>
                                                        <span>
<%--                                                            <img src="https://img.icons8.com/color/48/000000/mastercard.png" width="20" /></span>--%>
                                                            <img src="https://icon-library.com/images/cash-payment-icon/cash-payment-icon-26.jpg" width="20" /></span>

                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="py-2">

                                                        <span class="d-block text-muted">Shiping Address</span>
                                                        <span><%#Eval("C_address") %></span>

                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </table>





                        </div>




                        <div class="product border-bottom table-responsive">

                            <table class="table table-borderless">
                                <asp:Repeater ID="ConfirmProductRptr" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>
                                                <td width="20%">
                                                    <img src='<%#Eval("pImg") %>' width="90">
                                                </td>
                                                <td width="60%"><span class="font-weight-bold"><%#Eval("pName") %></span>
                                                    <div class="product-qty"><span class="d-block"><%#Eval("pQuantity") %></span>
<%--                                                        <span>Color:Dark</span>--%>
                                                    </div>
                                                </td>
                                                <td width="20%">
                                                    <div class="text-right"><span class="font-weight-bold">$<%# Convert.ToInt32(Eval("pPrice") )*Convert.ToInt32(Eval("pQuantity")) %></span>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </table>



                        </div>



                        <div class="row d-flex justify-content-end">

                            <div class="col-md-5">

                                <table class="table table-borderless">

                                    <tbody class="totals">

                                        <tr>
                                            <td>
                                                <div class="text-left">

                                                    <span class="text-muted">Subtotal</span>

                                                </div>
                                            </td>
                                            <td>
                                                <div id="Total" runat="server" class="text-right">
                                                    <span>$168.50</span>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                <div class="text-left">

                                                    <span class="text-muted">Shipping Fee</span>

                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-right">
                                                    <span>$10</span>
                                                </div>
                                            </td>
                                        </tr>


                                        <%--    <tr>
                                            <td>
                                                <div class="text-left">

                                                    <span class="text-muted">Tax Fee</span>

                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-right">
                                                    <span>$7.65</span>
                                                </div>
                                            </td>
                                        </tr>--%>


                                        <%-- <tr>
                                            <td>
                                                <div class="text-left">

                                                    <span class="text-muted">Discount</span>

                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-right">
                                                    <span class="text-success">$168.50</span>
                                                </div>
                                            </td>
                                        </tr>--%>


                                        <tr class="border-top border-bottom">
                                            <td>
                                                <div class="text-left">
                                                    <span class="font-weight-bold">Subtotal</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-right" id="subTotal" runat="server">
                                                    <span class="font-weight-bold">$238.50</span>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <asp:Button Style="color: #fff; background: linear-gradient(to bottom, #f5e47b, #fb930a);"
                                                    Class="btn" ID="btnConfirmOrder" runat="server" OnClick="btnConfirmOrder_Click" Text="PLACE ORDER" />
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                        </div>


                        <p>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <%--                            We will be sending shipping confirmation email when the item shipped successfully!--%>
                        </p>
                        <p class="font-weight-bold mb-0">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <%--                            Thanks for shopping with us!--%>
                        </p>
                        <%--                        <span>Nike Team</span>--%>
                    </div>


                    <div class="d-flex justify-content-between footer p-3">

                        <span>Need Help? visit our <a href="#">help center</a></span>
                        <span id="dateSpan" runat="server">12 June, 2020</span>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>
