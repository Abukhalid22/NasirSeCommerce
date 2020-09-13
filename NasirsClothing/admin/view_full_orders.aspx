<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="view_full_orders.aspx.cs" Inherits="NasirsClothing.admin.view_full_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

<%--    <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table class="table" border="1">
                <tr style="background-color:grey; color:white">
                    <td style="padding-right:10px; padding-left:10px">Product ID</td>
                    <td style="padding-right:10px; padding-left:10px">Product Image</td>
                    <td style="padding-right:10px;padding-left:10px">Product Name</td>
                    <td style="padding-right:10px;padding-left:10px">Product Price</td>
                    <td style="padding-right:10px;padding-left:10px">Product qty</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("id") %></td>
                <td style="padding-right:10px;padding-left:10px"><img src="<%#Eval("product_images") %>" height="100" width="100" /></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("product_name") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("product_price") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("product_qty") %></td>
    
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>--%>


    <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table class="table table-hover table-responsive-md" >
                <tr style="background-color:grey; color:white">
                    <td style="padding-right:10px; padding-left:10px">ID</td>
                    <td style="padding-right:10px; padding-left:10px">First Name</td>
                    <td style="padding-right:10px;padding-left:10px">Last Name</td>
                    <td style="padding-right:10px;padding-left:10px">Email</td>
                    <td style="padding-right:10px;padding-left:10px">Address</td>
                    <td style="padding-right:10px;padding-left:10px">City</td>
                    <td style="padding-right:10px;padding-left:10px">State</td>
                    <td style="padding-right:10px;padding-left:10px">Pin Code</td>
                    <td style="padding-right:10px;padding-left:10px">Phone Number</td>
                    
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("id") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("firstname") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("lastname") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("email") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("address") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("city") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("state") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("pincode") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("mobile") %></td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    
   <br /> <br />
    
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table class="table table-hover table-responsive-md" border="1">
                <tr style="background-color:grey; color:white">
                    <td style="padding-right:10px; padding-left:10px">Product Image</td>
                    <td style="padding-right:10px; padding-left:10px">Product Name</td>
                    <td style="padding-right:10px; padding-left:10px">Product Price</td>
                    <td style="padding-right:10px; padding-left:10px">Product qty</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
            <td style="padding-right:10px; padding-left:10px">
                <img src="../<%#Eval("product_images") %>" height="100" width="100" />
            </td>
            <td style="padding-right:10px; padding-left:10px">
                <%#Eval("product_name") %>
            </td>
            <td style="padding-right:10px; padding-left:10px">
                £<%#Eval("product_price") %>
            </td>
            <td style="padding-right:10px; padding-left:10px">
                <%#Eval("product_qty") %>
            </td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

</asp:Content>
