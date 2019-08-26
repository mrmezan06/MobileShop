<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MobileShop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MobileShop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mycss.css" />
    <style>
        div.container{
            margin-top:60px;
        }
        body{
            background-image:url("Image/loginpage.jpg");
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-md-6 offset-md-3">
     
        <div class="form-row">
            
            <div class="col-md-4 mb-3">
        <asp:CheckBox ID="checkAdmin" runat="server" Text="Admin" CssClass="text-success" Text-Size="32" />
                </div>
            </div>
            </div>
        <div class="row">
    <div class="col-md-6 offset-md-3">
     
        <div class="form-row">
            
            <div class="col-md-4 mb-3">
            <asp:Label Text="Username" runat="server" CssClass="text-success"></asp:Label>
            <asp:TextBox ID="lUser" class="form-control is-invalid" runat="server" required="true" Width="320"></asp:TextBox>
             </div>
            </div>
        <div class="form-row">
            <div class="col-md-4 mb-3">
            <asp:Label Text="Password" runat="server" CssClass="text-success"></asp:Label>
            <asp:TextBox ID="lPass" class="form-control is-invalid" type="password" runat="server" required="true" Width="320"></asp:TextBox>
            </div>
            <br />
        </div>
         <asp:Button ID="btnSup" CssClass="text-warning" Text="Sign In" runat="server" Style="align-content:center" onClick="SignIn"/>
         <asp:Button ID="btnSignUp" CssClass="text-warning" Text="Sign Up" runat="server" Style="align-content:center" onClick="SignUp"/>
    
        </div>
            </div>
        </div>
        </form>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700"/>

</body>
</html>
