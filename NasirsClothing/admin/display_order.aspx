<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="display_order.aspx.cs" Inherits="NasirsClothing.admin.display_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table class="table table-hover table-responsive-md" >
                <tr style="background-color:grey; color:white">
                    <td style="padding-right:10px; padding-left:10px">ID</td>
                    <td style="padding-right:10px; padding-left:10px">First Name</td>
                    <td style="padding-right:10px;padding-left:10px">Last Name</td>
                    <td style="padding-right:10px;padding-left:10px">City</td>
                    <td style="padding-right:10px;padding-left:10px">State</td>
                    <td style="padding-right:10px;padding-left:10px">Pin Code</td>
                    <td style="padding-right:10px;padding-left:10px">View Full order</td>
                    
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("id") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("firstname") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("lastname") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("city") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("state") %></td>
                <td style="padding-right:10px;padding-left:10px"><%#Eval("pincode") %></td>
                <td style="padding-right:10px;padding-left:10px"><a href="view_full_orders.aspx?id=<%#Eval("id") %>">View Full Order</a></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>


</asp:Content>
