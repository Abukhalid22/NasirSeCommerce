<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="NasirsClothing.admin.add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="form-group ">
        <label for="txtProductName">Product Name</label>
        <asp:TextBox class="form-control" placeholder="Product Name" ID="txtProductName" runat="server"></asp:TextBox>
    </div>

    <div class="form-group ">
        <label for="txtProductDescription">Product Description</label>
        <asp:TextBox class="form-control" placeholder="Product Description" ID="txtProductDescription" runat="server"></asp:TextBox>
    </div>

    <div class="form-group ">
        <label for="txtProductPrice">Product Price (£)</label>
        <asp:TextBox class="form-control" placeholder="Product Price (£)" ID="txtProductPrice" runat="server"></asp:TextBox>
    </div>

    <div class="form-group ">
        <label for="txtProductQty">Product Qty</label>
        <asp:TextBox class="form-control" placeholder="Product Qty" ID="txtProductQty" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="fldProductImage">Product Image</label>
        <asp:FileUpload class="form-control-file" ID="fldProductImage" runat="server" />
    </div>

    <div class="form-group">
        <label for="ddl1">Select Category</label>
        <asp:DropDownList ID="ddl1" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl1" ErrorMessage="Please select a Category" ForeColor="Red">* Please select a Category</asp:RequiredFieldValidator>
    </div>

    <asp:Button ID="btnAddProduct" class="btn btn-primary" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" />

    <hr />

    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
</asp:Content>
