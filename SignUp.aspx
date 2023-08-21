<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SE_Project.SignUp" %>

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

    <!-- contact section -->

    <section class="contact_section layout_padding">
        <div class="design-box">
            <img src="images/design-2.png" alt="">
        </div>
        <div class="container ">
            <div class="heading_container">
                <h2 class="">Sign Up
                </h2>
            </div>

        </div>
        <div class="container ">
            <%--<div class="row">--%>
            <div class="col-md-6">
                <%--                    <form action="">--%>
                <div>
                    <%--                            <input type="text" placeholder="Name" />--%>
                    <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                </div>
                <div>
                    <%--                            <input type="text" placeholder="Name" />--%>
                    <asp:TextBox ID="unametxt" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                </div>
                <div>
                    <%--                            <input type="email" placeholder="Email" />--%>
                    <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>

                </div>
                <div>
                    <%--                            <input type="text" placeholder="Phone" />   --%>
                    <asp:TextBox ID="pwdtxt" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>

                </div>
                <div>
                    <%--                            <input type="text" placeholder="Phone" />   --%>
                    <asp:TextBox ID="confirm_pwd" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>

                </div>


                <div class="text-center">
                    <asp:Label ID="error_lbl" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </div>

                <%--<div>
                    <input type="text" class="message-box" placeholder="Message" />
                </div>--%>
                <div class="d-flex ">
                    <button id="btn_signUp" runat="server" onserverclick="btn_signUp_ServerClick">
                        Sign Up
                    </button>
                </div>
<%--                <asp:Label ID="success_lbl" runat="server" ForeColor="Green"></asp:Label>--%>



                <%--                    </form>--%>
            </div>

        </div>
    </section>

    <!-- end contact section -->

</asp:Content>
