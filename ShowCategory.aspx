<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ShowCategory.aspx.cs" Inherits="SE_Project.ShowCategory" %>

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

    <div class="container ">
        <div class="heading_container">
            <h2 class="">All Categories
            </h2>
        </div>

    </div>


    <div class="container" style="padding-top: 40px">
        <%--<div class="">
                <h2 class="">Category
                </h2>
            </div>--%>
        <div class="panel panel-default">
            <%--                <div class="panel-heading">All Categories</div>--%>


            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Category Name</th>
                        <%--  <th scope="col">Last</th>
                            <th scope="col">Handle</th>--%>
                    </tr>
                </thead>

                <tbody>
                    <asp:Repeater ID="rptrCategory" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th scope="row"><%#Eval("Category_id") %></th>
                                <td><%#Eval("Category_name") %></td>
                                <%--  <td>Otto</td>
                                    <td>@mdo</td>--%>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </div>
    </div>



</asp:Content>
