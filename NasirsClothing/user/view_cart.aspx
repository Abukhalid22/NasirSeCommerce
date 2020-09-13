<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="NasirsClothing.user.view_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">


    <div class="row" style="margin-top:20px;">
    <div class="col-lg-9 table-responsive-lg">
    
    <asp:DataList ID="dtlList" runat="server">
        <HeaderTemplate>
        <table class="table " border="1">
            <thead>
            <tr style="background-color:silver; color:white;" >
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Product Quantity</th>
                <th>Delete</th>
            </tr>
            </thead>

        </HeaderTemplate>

        <ItemTemplate>
            <tbody>
            <tr>
                <td>
                    <img class="card-img-top"  src="../<%#Eval("product_images") %>" />
                    
                </td>
                <td>
                    <%#Eval("product_name") %>

                </td>
                <td>
                    <%#Eval("product_desc") %>

                </td>
                <td>
                    <%#Eval("product_price") %>

                </td>
                <td>
                    <%#Eval("product_qty") %>

                </td>

                <td>
                    <a href="delete_product.aspx?id=<%#Eval("id")%>">Delete</a>
                </td>
            </tr>
                </tbody>

        </ItemTemplate>

        <FooterTemplate>
        </table>
        </FooterTemplate>
    </asp:DataList>
        <br />
        <p align="center">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
       <div >
           <asp:Button class="btn btn-block btn-success col-md-6" ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" />
       </div>
    </div>
    </div>




</asp:Content>
