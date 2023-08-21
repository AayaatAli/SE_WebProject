<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="SE_Project.AddProduct" %>

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


    <section class="contact_section layout_padding">
        <div class="design-box">
            <img src="images/design-2.png" alt="">
        </div>
        <div class="container ">
            <div class="heading_container">
                <h2 class="">Add Product
                </h2>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <%--                            <input type="text" placeholder="Name" />--%>
                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is Required" ControlToValidate="txt_name" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <%--                            <input type="email" placeholder="Email" />--%>
                        <asp:TextBox ID="txt_price" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is Required" ControlToValidate="txt_price" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>


                    <%--                    <div style="margin-bottom:25px; height:50px; border:none; box-shadow: 0px 2px 5px 0px rgb(0 0 0 / 16%);">--%>
                    <div style="margin-bottom: 25px; height: 50px; border: none;">
                        <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is Required" InitialValue="0" ControlToValidate="ddlCategory" ForeColor="Red" CssClass="text-danger" Font-Size="Small" Visible="true"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:FileUpload ID="ItemIMG" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is Required" ControlToValidate="ItemIMG" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div class="d-flex ">
                        <button id="btn_add" runat="server" onserverclick="btn_add_ServerClick">
                            Add
                        </button>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="addProduct" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </div>
                </div>

            </div>
        </div>




        <%--        <div class="container" style="padding-top: 40px">
          
            <div class="panel panel-default">


                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Item Name</th>
                            <th scope="col">Item Price</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="rptrProduct" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th scope="row"><%#Eval("Item_Id") %></th>
                                    <td><%#Eval("Item_name") %></td>
                                    <td><%#Eval("Item_price") %></td>
                                </tr>

                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>

            </div>
        </div>--%>
    </section>



</asp:Content>
