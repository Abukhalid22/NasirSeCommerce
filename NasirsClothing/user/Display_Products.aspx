<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Display_Products.aspx.cs" Inherits="NasirsClothing.user.Display_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">Categories</h1>
        <div class="list-group">


            <asp:DataList ID="dd" runat="server">
                <ItemTemplate>
                    <a href="Display_Products.aspx?category=<%#Eval("product_category") %>" class="list-group-item"><%#Eval("product_category") %></a>
                </ItemTemplate>


            </asp:DataList>

            <hr />

           

        </div>
         

          



      </div>
      <!-- /.col-lg-3 -->

       

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="../images/imageslide1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="../images/imsageslide2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="../images/imageslide3.jpg" alt="Third slide">
            </div>
              <div class="carousel-item">
              <img class="d-block img-fluid" src="../images/imageslide4.jpg" alt="fourth slide">
            </div>
              <div class="carousel-item">
              <img class="d-block img-fluid" src="../images/devicesNew.jpg" alt="fourth slide">
            </div>
              <div class="carousel-item">
              <img class="d-block img-fluid" src="../images/PhoneNew.jpg" alt="fourth slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>




        <div class="row">

          <%--<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="productDetail.html"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item One</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div> 
          </div>--%>


            
            <asp:Repeater ID="rptMain" runat="server">
        <HeaderTemplate>
            
        </HeaderTemplate>
        <ItemTemplate>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
          
              <a href="product_description.aspx?id=<%#Eval("id")%>"><img class="card-img-top" src="../<%#Eval("product_images")%>"   /></a>
            <div class="card-body">
              <h4 class="card-title"><a href="product_description.aspx?id=<%#Eval("id")%>"> <%#Eval("product_name") %></a></h4>
              <h5 class="price">£<%#Eval("product_price")%></h5>
              <p class="card-text"><%#Eval("product_desc") %></p>
               <p><%#Eval("product_qty") %> In Stock</p>  
                
              
            </div>
          
                    <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
                    </div>
            </div> 
        </ItemTemplate>
        <FooterTemplate>
          
        </FooterTemplate>
    </asp:Repeater>
                

          

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->
</asp:Content>
