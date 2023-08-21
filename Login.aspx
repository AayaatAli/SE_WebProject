<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE_Project.Login" %>

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
                <h2 class="">Login
                </h2>
            </div>

        </div>
        <div class="container ">
            <%--<div class="row">--%>
            <div class="col-md-6">
                <%--                    <form action="">--%>
                <div>
                    <%--                            <input type="text" placeholder="Name" />--%>
                    <asp:TextBox ID="unametxt" name="unametxt" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="unameRFV" runat="server" ErrorMessage="User Name field is Required!" ControlToValidate="unametxt" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>

                </div>
                <br />
                <div>
                    <%--                            <input type="text" placeholder="Phone" />   --%>
                    <asp:TextBox ID="pwdtxt" name="pwdtxt" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="pwdRFV" runat="server" ErrorMessage="Password field is required" ControlToValidate="pwdtxt" ForeColor="Red" CssClass="text-danger" Font-Size="Small" Font-Overline="False"></asp:RequiredFieldValidator>


                </div>


                <div class="text-center">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </div>

                <%--<div>
                    <input type="text" class="message-box" placeholder="Message" />
                </div>--%>
                <div class="d-flex ">
                    <button runat="server" id="btn_logIn" onserverclick="btn_logIn_ServerClick">
                        Login
                    </button>
                </div>
                <%--                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Button" OnClick="btn_logIn_ServerClick"  UseSubmitBehavior="false" />--%>
                <%--                    </form>--%>
            </div>

        </div>
    </section>

    <!-- end contact section -->



</asp:Content>
