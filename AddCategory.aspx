<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="SE_Project.AddCategory" %>

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
                <h2 class="">Add Category
                </h2>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <%--                            <input type="text" placeholder="Name" />--%>
                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Category Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is Required" ControlToValidate="txt_name" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:FileUpload ID="CategoryIMG" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is Required" ControlToValidate="CategoryIMG" ForeColor="Red" CssClass="text-danger" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>



                    <div class="d-flex ">
                        <button id="btn_add" runat="server" onserverclick="btn_add_ServerClick">
                            Add
                        </button>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="addCategory" runat="server" Text="" ForeColor="Green" ></asp:Label>
                    </div>
                </div>

            </div>
        </div>
        <hr />


        <%--        <div class="container" style="padding-top: 40px">
           
            <div class="panel panel-default">


                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Category Name</th>
                         
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="rptrCategory" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th scope="row"><%#Eval("Category_id") %></th>
                                    <td><%#Eval("Category_name") %></td>
                                
                                </tr>
                               
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>

            </div>
        </div>--%>
    </section>


</asp:Content>
