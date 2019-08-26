<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePgae2.aspx.cs" Inherits="MobileShop.HomePgae2" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>MobileShop</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mycss.css" />
    </head>
    <body>
    
<form id = "form1" runat="server">
    <div class="container-fluid">
    <nav class="navbar navbar-dark bg-dark">
    <div class="col-md-2">
        <img src="Image/mobile.png" width="64" height="64" />
    </div>
        <div class="col-md-4">
    <div class="container-fluid">
    <ul class="nav nav-tabs">
    <li class="nav-item">
    <a class="shadow-lg nav-link active" href="HomePage.aspx"><i class="fas fa-home"></i>Home</a>
    </li>
    <li class="nav-item">
    <div class="dropdown show">
    <a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Product
    </a>

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <asp:Button ID="samsung" Text="Samsung" runat="server" OnClick="SetSession" /><br />
        <asp:Button ID="oppo" Text="Oppo" runat="server" OnClick="SetSession" /><br />
        <asp:Button ID="asus" Text="Asus" runat="server" OnClick="SetSession" /><br />
        <asp:Button ID="redmi" Text="Redmi" runat="server" OnClick="SetSession" /><br />
        <asp:Button ID="panasonic" Text="Panasonic" runat="server" OnClick="SetSession" /><br />
    </div>
    </div>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="Contact.aspx"><i class="fas fa-phone"></i>Contact Us</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="About.aspx"><i class="fas fa-user-friends"></i>About Us</a>
    </li>
    </ul>
    </div>
        </div>
    <div class="col-md-3">
        
        <div class="container">
            <asp:TextBox runat="server"  Text="Search..." ID="searchText" Width="300"></asp:TextBox>
            <asp:Button  runat="server" ID="SearchBtn" OnClick="SetSearch" Text="Search" CssClass="bg-dark text-info"/>  
        </div>
   
    </div>

        <div class="col-md-3">
            <div class="justify-content-md-end">
    <a href="Login.aspx" class="btn btn-danger btn-sm" role="button" aria-disabled="true"><i class="fas fa-user-alt"></i>
        
    <asp:Label Text="Sign In" runat="server" ID="UserLab"></asp:Label>

    </a>
    <div class="btn-group">
    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="fas fa-question-circle"></i>Need Help
    </button>
    <div class="dropdown-menu">
    <a class="dropdown-item" href="ReturnReplacement.aspx">Replacement</a>
    <a class="dropdown-item" href="WarrantyPolicy.aspx">Warranty Policy</a>
    <a class="dropdown-item" href="FAQ.aspx">FAQ</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="Policy.aspx">Policy</a>
    </div>
    </div>
        <a href="Checkout.aspx" class="btn btn-primary btn-sm" role="button" aria-disabled="true"><i class="fas fa-shopping-cart"></i>Cart
            <span class="badge badge-light">
                <asp:Label Text="" runat="server" ID="badge"></asp:Label>
            </span></a>
    </div> 
        </div>

    </nav>
    </div>

    <!-- Main Menu-->
    

        <!-- Slide -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="Image/a.jpg" alt="First slide" />
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Image/2.jpg" alt="Second slide"/>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Image/c.jpg" alt="Third slide"/>
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

        <!-- Featured Product -->
        <ul class="nav justify-content-center bg-dark">
        <li class="nav-item">
        <p class="nav-link disabled" >Hot Deals</p>
        </li>
    </ul>

     <!-- Product-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/samsunggalaxys7edge.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Samsung Galaxy S7 Edge</h5>
         <p class="card-text text-center"><b>Price :</b> 28000৳<br />
        <b>Description :</b><br />
        CPU: Snapdragon 820/Exynos 8890<br />
        RAM: 4GB ROM:16GB<br />
        Battery:3000mAh
        Camera:12MP
    </p>
      <asp:Button ID="btn2" runat="server" Text="Add Cart"  CssClass="btn btn-primary" OnClick="btn_Click" />
                            </div>
          
                         </div>
                    </div>

                    <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Huawei Mate 20.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Huawei M20</h5>
         <p class="card-text text-center"><b>Price :</b> 32000৳<br />
        <b>Description :</b><br />
        RAM: 8 GB,ROM:128 GB<br />
        Battery:4200mAh<br />
        Camera:40MP-8MP-20MP(24 MP front)
    </p>
             <asp:Button ID="btn3" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/p.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Redmi 7</h5>
         <p class="card-text text-center"><b>Price :</b> 18000৳<br />
        <b>Description :</b><br />
            RAM: 4 GB,ROM:64 GB<br />
            Battery:4000mAh<br />
            Camera:48MP-5MP(13 MP front)
    </p>
      <asp:Button ID="btn4" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>
                
                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Asus Zenfone 6.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Asus Zenfone 6</h5>
         <p class="card-text text-center"><b>Price :</b> 15000৳<br />
        <b>Description :</b><br />
            RAM: 6 GB,ROM:64 GB<br />
            Battery:5000mAh<br />
            Camera:48MP(13 MP front)
    </p>
      <asp:Button ID="btn5" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Oppo F3 Plus.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Oppo F3 Plus</h5>
         <p class="card-text text-center"><b>Price :</b> 40990৳<br />
        <b>Description :</b><br />
            RAM: 6 GB,ROM:64 GB<br />
            Battery:4000mAh<br />
             Camera:16MP(16 MP-8 MP front)
    </p>
      <asp:Button ID="btn6" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                
                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Oppo F9.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Oppo F9</h5>
         <p class="card-text text-center"><b>Price :</b> 19990৳<br />
        <b>Description :</b><br />
            RAM: 4 GB,ROM:64 GB<br />
            Battery:3500mAh<br />
             Camera:16MP-2MP(25 MP front)
    </p>
      <asp:Button ID="btn7" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Panasonic Elaga Ray550.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Panasonic Elaga Ray550</h5>
         <p class="card-text text-center"><b>Price :</b> 11650৳<br />
        <b>Description :</b><br />
            RAM: 3 GB,ROM:32 GB<br />
            Battery:3250mAh<br />
             Camera:13MP(8 MP front)
    </p>
      <asp:Button ID="btn9" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/Panasonic P95.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Panasonic P95</h5>
         <p class="card-text text-center"><b>Price :</b> 6500৳<br />
        <b>Description :</b><br />
            RAM: 1 GB,ROM:16 GB<br />
            Battery:2300mAh<br />
             Camera:8MP(5 MP front)
    </p>
      <asp:Button ID="btn10" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                <div class="col-md-3">
             <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="upload/asus-rog-phone.jpg" alt="Card image cap" height="243" width="207"/>
         <div class="card-body">
      <h5 class="card-title">Asus Rog</h5>
         <p class="card-text text-center"><b>Price :</b> 108599৳<br />
        <b>Description :</b><br />
            RAM:8GB ROM:128GB<br />
              Battery:4000 mAh<br />
             CAMERA:12MP(8MP)
    </p>
      <asp:Button ID="btn13" runat="server" Text="Add Cart" OnClick="btn_Click" CssClass="btn btn-primary" />
                            </div>
                         </div>
                    </div>

                </div>
            </div>
    <!-- End Product-->
      
    
    

        <!--Footer-->
        <nav class="bg-dark">
            <footer class="text-center bg-dark" style="text-decoration-color:white"><h2>© 2019 MobileShop | All Rights Reserved.</h2>
    </footer>
        </nav>
       </form>   



    <script src="bootstrap/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700"/>

    </body>
    </html>

