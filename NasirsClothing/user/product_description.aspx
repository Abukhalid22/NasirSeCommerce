<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="product_description.aspx.cs" Inherits="NasirsClothing.user.product_description" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <asp:Repeater ID="rptMain1" runat="server" >
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            
       <div class="col-lg-9">
       <h1 class="card-title"> <%#Eval("product_name")%></h1>
         <div class="card mt-4">
             <img class="card-img-top img-thumbnail img-fluid" src='../<%#Eval("product_images") %>' style="width:300px; height:450px;"/>
             <div class="card-body">
             <h1 class="card-title"> <%#Eval("product_name")%></h1>
             <h5 class="price">Price: £<%#Eval("product_price")%></h5>
             <p>Quantity: <%#Eval("product_qty") %> In Stock</p>  
             <p class="card-text"> <%#Eval("product_desc") %></p>

             <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
             
             </div>
         </div>
           
    </div>

        </ItemTemplate>
        <FooterTemplate>
           
        </FooterTemplate>
    </asp:Repeater>
    <br />

    <table>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSuccess" runat="server" ForeColor="Red" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEnterQuantity" runat="server" Text="Enter Quantity: "></asp:Label> </td>
            <td><asp:TextBox class="form-control" ID="txtQuantity" runat="server" CausesValidation="True"></asp:TextBox></td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Please Enter Quantity Amount" ForeColor="Red" >* Please Enter Quantity Amount</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtQuantity" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{0,22}$" runat="server" ErrorMessage="Maximum 22 characters allowed" ForeColor="Red" ></asp:RegularExpressionValidator>
            <td><div class="card card-outline-secondary my-4">
            <asp:Button class="btn btn-block btn-group-sm btn-success" ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
            </div></td>
        </tr>
        


    </table>


    
    





</asp:Content>
