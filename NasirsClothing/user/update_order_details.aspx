<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="update_order_details.aspx.cs" Inherits="NasirsClothing.user.update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">


    <div style="margin-top: 30px;">

        <h4>Update Order Details</h4>
        <hr />
        <div class="form-group ">
            <label for="txtFName">First Name</label>
            <asp:TextBox class="form-control" placeholder="First Name" ID="txtFName" runat="server"></asp:TextBox>
        </div>

        <div class="form-group ">
            <label for="txtLastName">Last Name</label>
            <asp:TextBox class="form-control" placeholder="Last Name" ID="txtLastName" runat="server"></asp:TextBox>
        </div>

        <div class="form-group ">
            <label for="txtAddress">Address</label>
            <asp:TextBox class="form-control" placeholder="Address" ID="txtAddress" runat="server"></asp:TextBox>
        </div>

        <div class="form-group ">
            <label for="txtCity">City</label>
            <asp:TextBox class="form-control" placeholder="City" ID="txtCity" runat="server"></asp:TextBox>
        </div>

        <div class="form-group ">
            <label for="txtState">State</label>
            <asp:TextBox class="form-control" placeholder="State" ID="txtState" runat="server"></asp:TextBox>
        </div>


        <div class="form-group ">
            <label for="txtPhoneNumber">Phone Number</label>
            <asp:TextBox class="form-control" placeholder="Phone Number" ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </div>
        <hr />
        <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" Text="Update and Continue" OnClick="btnUpdate_Click" />
    </div>

</asp:Content>
