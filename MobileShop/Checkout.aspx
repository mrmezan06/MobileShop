<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="MobileShop.Checkout" %>

 <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>MobileShop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
    <a class="nav-link" href="HomePgae2.aspx"><i class="fas fa-home"></i>Home</a>
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
            <asp:TextBox runat="server"  Text="Search..." ID="searchText"></asp:TextBox>
            <asp:Button  runat="server" ID="SearchBtn" OnClick="SetSearch" Text="Search" CssClass="bg-dark text-success"/>  
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

      

        <!-- checkout-->
                
                     <asp:Panel runat="server" ID="pnl_btns" align="center" Width="1900px">
    </asp:Panel>
     <asp:Button Text="Checkout" ID="checkout" runat="server" OnClick="cartDelete" Width="1900px" />
                
        <!-- End Chekout-->

          
    
        <!--Footer-->
        <nav class="bg-red">
            <footer class="text-center" style="text-decoration-color:white"><h2>© 2019 MobileShop | All Rights Reserved.</h2>
    </footer>
        </nav>
       </form>   



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700"/>

    </body>
    </html>