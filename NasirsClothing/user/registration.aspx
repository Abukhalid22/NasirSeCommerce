<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="NasirsClothing.user.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <%--<div class="container align-content-center" >
    <div class="row">
        <h3 style="padding-top:20px;" class="alert-heading">User Registration</h3>
    <table style="margin-top:30px;" class="table table-striped table-bordered">
        <tr>
            <td>First Name

            </td>
            <td>
                <asp:textbox id="txtFirstName" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="txtFirstName" errormessage="Please Enter Firstname" forecolor="Red">* Please Enter Firstname</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtFirstName" id="RegularExpressionValidator1" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>

        <tr>
            <td>Last Name

            </td>
            <td>
                <asp:textbox id="txtLastName" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="txtLastName" errormessage="Please Enter Lastname" forecolor="Red">* Please Enter Lastname</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtLastName" id="RegularExpressionValidator2" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>

        <tr>
            <td>Email

            </td>
            <td>
                <asp:textbox id="txtEmail" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="txtEmail" errormessage="Please Enter Email Address" forecolor="Red">* Please Enter Email Address</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtEmail" id="RegularExpressionValidator4" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                <asp:regularexpressionvalidator id="validateEmail" runat="server" errormessage="Invalid email." controltovalidate="txtEmail" validationexpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" forecolor="Red" />
            </td>
        </tr>

        <tr>
            <td>Password

            </td>
            <td>
                <asp:textbox id="txtPassword" class="form-control" runat="server" textmode="Password"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="txtPassword" errormessage="Please Enter Password" forecolor="Red">* Please Enter Password</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPassword" id="RegularExpressionValidator6" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>


        <tr>
            <td>Address

            </td>
            <td>
                <asp:textbox id="txtAddress" class="form-control" runat="server" height="88px" textmode="MultiLine" width="134px"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="txtAddress" errormessage="Please Enter Address" forecolor="Red">* Please Enter Address</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtAddress" id="RegularExpressionValidator3" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>


        <tr>
            <td>City

            </td>
            <td>
                <asp:textbox id="txtCity" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="txtCity" errormessage="Please Enter City" forecolor="Red">* Please Enter City</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtState" id="RegularExpressionValidator5" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>




        <tr>
            <td>State

            </td>
            <td>
                <asp:textbox id="txtState" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="txtState" errormessage="Please Enter State" forecolor="Red">* Please Enter State</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtState" id="RegularExpressionValidator7" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>

        <tr>
            <td>Pin Code

            </td>
            <td>
                <asp:textbox id="txtPinCode" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="txtPinCode" errormessage="Please Enter Pin Code" forecolor="Red">* Please Enter Pin Code</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPinCode" id="RegularExpressionValidator9" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>

        <tr>
            <td>Phone Number

            </td>
            <td>
                <asp:textbox id="txtPhoneNumber" class="form-control" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="txtPhoneNumber" errormessage="Please Enter Phone Number" forecolor="Red">* Please Enter Phone Number</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPhoneNumber" id="RegularExpressionValidator8" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
            </td>
        </tr>

        



        <tr>
            <td colspan="2" align="center">
                <asp:button class="btn btn-block btn-group-sm btn-success" id="btnRegister" runat="server" text="Register" OnClick="btnRegister_Click" />
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:label id="lblMessage" runat="server" ForeColor="#00CC00"></asp:label>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:hyperlink id="HplRegister" navigateurl="userLogin.aspx" runat="server">Login here</asp:hyperlink>
            </td>
        </tr>

    </table>
        </div>
        </div>--%>


    <div class="card o-hidden border-0 shadow-lg my-5">
    <div class="card-body p-0">
        
    <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <div class="user">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <asp:textbox id="txtFirstName" placeholder="First Name" class="form-control form-control-user" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="txtFirstName" errormessage="Please Enter Firstname" forecolor="Red">* Please Enter Firstname</asp:requiredfieldvalidator>
                    <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtFirstName" id="RegularExpressionValidator1" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                  <div class="col-sm-6">
                    <asp:textbox id="txtLastName" placeholder="Last Name" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="txtLastName" errormessage="Please Enter Lastname" forecolor="Red">* Please Enter Lastname</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtLastName" id="RegularExpressionValidator2" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                </div>
                <div class="form-group">
                  <asp:textbox id="txtEmail" placeholder="Email" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="txtEmail" errormessage="Please Enter Email Address" forecolor="Red">* Please Enter Email Address</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtEmail" id="RegularExpressionValidator4" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                <asp:regularexpressionvalidator id="validateEmail" runat="server" errormessage="Invalid email." controltovalidate="txtEmail" validationexpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" forecolor="Red" />
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                   <asp:textbox id="txtPassword" placeholder="Password" class="form-control form-control-user" runat="server" textmode="Password"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="txtPassword" errormessage="Please Enter Password" forecolor="Red">* Please Enter Password</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPassword" id="RegularExpressionValidator6" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                  <div class="col-sm-6">
                    <asp:textbox id="txtCity" placeholder="City" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="txtCity" errormessage="Please Enter City" forecolor="Red">* Please Enter City</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtState" id="RegularExpressionValidator5" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                    </div>

                  <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <asp:textbox id="txtState" placeholder="State" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="txtState" errormessage="Please Enter State" forecolor="Red">* Please Enter State</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtState" id="RegularExpressionValidator7" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                  <div class="col-sm-6">
                    <asp:textbox id="txtPinCode" placeholder="Pin Code" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="txtPinCode" errormessage="Please Enter Pin Code" forecolor="Red">* Please Enter Pin Code</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPinCode" id="RegularExpressionValidator9" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                  </div>
                    </div>

                  <div class="form-group">
                   <asp:textbox id="txtPhoneNumber" placeholder="Phone Number" class="form-control form-control-user" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="txtPhoneNumber" errormessage="Please Enter Phone Number" forecolor="Red">* Please Enter Phone Number</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtPhoneNumber" id="RegularExpressionValidator8" validationexpression="^[\s\S]{0,22}$" runat="server" errormessage="Maximum 22 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                 </div>

                                   <div class="form-group">
                    <asp:textbox id="txtAddress" placeholder="Address" class="form-control form-control-user" runat="server" height="88px" textmode="MultiLine" width="134px"></asp:textbox>
                <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="txtAddress" errormessage="Please Enter Address" forecolor="Red">* Please Enter Address</asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator display="Dynamic" controltovalidate="txtAddress" id="RegularExpressionValidator3" validationexpression="^[\s\S]{0,40}$" runat="server" errormessage="Maximum 40 characters allowed" forecolor="Red"></asp:regularexpressionvalidator>
                 </div>



                </div>

                <hr />
                <asp:button class="btn btn-block btn-group-sm btn-success" id="btnRegister" runat="server" text="Register" OnClick="btnRegister_Click" />
                <asp:label id="lblMessage" runat="server" ForeColor="#00CC00"></asp:label>
                              <hr />

                              <div class="text-center">
                <asp:hyperlink id="HplRegister" navigateurl="userLogin.aspx" runat="server">Login here</asp:hyperlink>
              </div>
              </div>

            </div>
          </div>
        </div>
        </div>



</asp:Content>
