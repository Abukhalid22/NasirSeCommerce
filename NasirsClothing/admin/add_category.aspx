<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_category.aspx.cs" Inherits="NasirsClothing.admin.add_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <table class="table table-responsive-md">
        <tr>
            <td>Enter Category Name:  <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox></td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="Please Enter Job Category Name" ForeColor="Red" >* Please Enter Job Category Name</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display ="Dynamic" ControlToValidate="txtCategory" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{0,22}$" runat="server" ErrorMessage="Maximum 22 characters allowed" ForeColor="Red" ></asp:RegularExpressionValidator>
        </tr>
        </table>
    <div colspan="2" >
                <asp:Button class="btn btn-primary" ID="btnAddCat" runat="server" Text="Add Category" OnClick="btnAddCat_Click"  />
            </div>

    <asp:Datalist ID="dd1" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("product_category") %></td>
                <td>
                    <a href="Delete.aspx?category=<%#Eval("product_category") %>">Delete </a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
        


    </asp:Datalist>



</asp:Content>
