<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SE_Project.Contact" %>

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
                <h2 class="">Contact Us
                </h2>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <%--                            <input type="text" placeholder="Name" />--%>
                        <asp:TextBox ID="name_tb" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                    </div>
                    <div>
                        <%--                            <input type="email" placeholder="Email" />--%>
                        <asp:TextBox ID="email_tb" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>

                    </div>
                    <div>
                        <%--                            <input type="text" placeholder="Phone" />--%>
                        <asp:TextBox ID="phone_tb" runat="server" CssClass="form-control" placeholder="Phone" TextMode="Phone"></asp:TextBox>

                    </div>
                    <div>
                        <asp:TextBox ID="msg_tb" runat="server" CssClass="form-control message-box" placeholder="Message"  TextMode="MultiLine"></asp:TextBox>

<%--                        <input type="text" class="message-box" placeholder="Message" />--%>
                    </div>
                    <div class="d-flex ">
                        <button id="btn_contact" runat="server" onserverclick="btn_contact_ServerClick">
                            SEND
                        </button>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="map_container">
                        <div class="map-responsive">
                            <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=NED+University+of+Engineering+and+Technology/@24.9300102,67.1153478,15z/data=!4m5!3m4!1s0x0:0xf864ed97b4a8ec0e!8m2!3d24.9300102!4d67.1153478" width="600" height="300" frameborder="0" style="border: 0; width: 100%; height: 100%" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end contact section -->

</asp:Content>
