<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shipping.aspx.cs" Inherits="SE_Project.Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!--main css bootstrap-->
    <link href="css/responsive.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />


    <script src="js/bootstrap.min.js"></script>
    <!--main js bootstrap-->
    <script src="js/custom.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <link href="css/Shipping.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col">
                <div class="card my-4 shadow-3">
                    <div class="row g-0">
                        <div class="col-xl-6 d-xl-block bg-image">
                            <img src="https://mdbcdn.b-cdn.net/img/Others/extended-example/delivery.webp" alt="Sample photo"
                                class="img-fluid h-100 w-100" />
                            <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                                <div class=" justify-content-center align-items-center h-100">
                                    <div class=" text-center" style="margin-top: -220px;">
                                        <%--                                        <i class="fas fa-truck text-white fa-3x" ></i>--%>
                                        <%--                                        <i class="fas fa-truck"></i>--%>
                                        <p class="text-white title-style">Lorem ipsum delivery</p>
                                        <p class="text-white mb-0"></p>

                                        <figure class="text-center mb-0">
                                            <blockquote class="blockquote text-white">
                                                <p class="pb-3">
                                                    <i class="fas fa-quote-left fa-xs text-primary"
                                                        style="color: hsl(210, 100%, 50%);"></i>
                                                    <span class="lead font-italic">Everything at your doorstep.</span>
                                                    <i class="fas fa-quote-right fa-xs text-primary"
                                                        style="color: hsl(210, 100%, 50%);"></i>
                                                </p>
                                            </blockquote>

                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6" style="padding-top: 70px;">
                            <div class="card-body p-md-5 text-black">
                                <h3 class="mb-4 text-uppercase">Delivery Info</h3>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="txtFirstName" runat="server" class="form-control" placeholder="First name" />
                                            <%--                                            <label class="form-label" for="form3Example1m">First name</label>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="txtLastName" runat="server" class="form-control " placeholder="Last name" />
                                            <%--                                            <label class="form-label" for="form3Example1n">Last name</label>--%>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="txtAddress" runat="server" class="form-control" placeholder="Address" />
                                    <%--                                    <label class="form-label" for="form3Example8">Address</label>--%>
                                </div>








                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="txtState" runat="server" class="form-control " placeholder="State" />
                                            <%--                                            <label class="form-label" for="form3Example1m">First name</label>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="txtCity" runat="server" class="form-control " placeholder="City" />
                                            <%--                                            <label class="form-label" for="form3Example1n">Last name</label>--%>
                                        </div>
                                    </div>
                                </div>




                                <%--     <div class="row">
                                    <div class="col-md-6 mb-4">

                                        <select class="select">
                                            <option value="1">State</option>
                                            <option value="2">Option 1</option>
                                            <option value="3">Option 2</option>
                                            <option value="4">Option 3</option>
                                        </select>

                                    </div>
                                    <div class="col-md-6 mb-4">

                                        <select class="select">
                                            <option value="1">City</option>
                                            <option value="2">Option 1</option>
                                            <option value="3">Option 2</option>
                                            <option value="4">Option 3</option>
                                        </select>

                                    </div>
                                </div>--%>

                                <div class="form-outline mb-4">
                                    <input type="text" id="txtPhoneNo" runat="server" class="form-control " placeholder="Phone Number" />
                                    <%--                                    <label class="form-label" for="form3Example3">Zip</label>--%>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="txtEmail" runat="server" class="form-control" typeof="email" placeholder="Email" />
                                    <%--                                    <label class="form-label" for="form3Example2">Email</label>--%>
                                </div>

                                <%--                                <div class="d-flex justify-content-end pt-3">--%>
                                <%--  <button type="button" class="btn btn-success btn-lg ms-2"
                                        style="background-color: hsl(210, 100%, 50%)">
                                        Place order</button>--%>

                                <%--  </div>--%>


                                <div class="d-flex justify-content-end pt-3">
                                    <%--<button type="button" class="btn btn-success btn-lg ms-2"
                                        style="background-color: hsl(210, 100%, 50%)">
                                        Place order</button>--%>

                                    <asp:Button Style="color: #fff;background: linear-gradient(to bottom, #f5e47b, #fb930a);"
                                         Class="btn" ID="btnPlaceOrder" runat="server" OnClick="btnPlaceOrder_Click" Text="PLACE ORDER" />
                                </div>
                                <asp:Label ID="Lbl1" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
