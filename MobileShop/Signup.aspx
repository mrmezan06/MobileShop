<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MobileShop.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MobileShop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mycss.css" />
    <style>
        div.container{
            margin-top:160px;
        }
        body{
            background-image:url("Image/loginpage.jpg");
        }
    </style>
    
</head>
<body>
    <div class="container">
        <div class="row">
    <div class="col-md-6 offset-md-3">
    <form id="form1" runat="server" style="align-content:center">
        <div class="form-row">
            <div class="col-md-4 mb-3">
            <asp:Label Text="Email" runat="server"></asp:Label>
            <asp:TextBox ID="Email" class="form-control is-invalid" runat="server" required="true"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
            <asp:Label Text="Username" runat="server"></asp:Label>
            <asp:TextBox ID="Username" class="form-control is-invalid" runat="server" required="true"></asp:TextBox>
             </div>
            </div>
        <div class="form-row">
            <div class="col-md-4 mb-3">
            <asp:Label Text="Password" runat="server"></asp:Label>
            <asp:TextBox ID="Password" class="form-control is-invalid" type="password" runat="server" required="true"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
            <asp:Label Text="Confirm Password" runat="server"></asp:Label>
            <asp:TextBox ID="cPassword" class="form-control is-invalid" type="password" runat="server" required="true"></asp:TextBox>
            </div>
            <br />
        </div>
         <asp:Button ID="btnSup" CssClass="btn btn-primary" Text="SignUp" runat="server" Style="align-content:center" onClick="SignUp"/>
    </form>
        </div>
            </div>
        </div>

     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700"/>
</body>
</html>