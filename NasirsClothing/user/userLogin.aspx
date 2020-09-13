<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="NasirsClothing.user.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">


        <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                      <p>Please Enter Your Login Details</p>
                  </div>
                  <div class="user">
                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" placeholder="Email"  class="form-control form-control-user" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password"  class="form-control form-control-user" runat="server"></asp:TextBox>
                      
                    </div>

                      <asp:Button ID="btnLogin" class="btn btn-primary btn-user btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                      <hr />
                      <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                      <hr />
                      <asp:HyperLink ID="HplRegister" NavigateUrl="~/user/registration.aspx" runat="server">Register Here</asp:HyperLink>
                      <br />
                      <asp:HyperLink ID="HplAdmin" NavigateUrl="~/admin/adminlogin.aspx" runat="server">Admin Panel</asp:HyperLink>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>




</asp:Content>
