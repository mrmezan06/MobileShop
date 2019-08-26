<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MobileShop.Admin" %>

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
            <div class="shadow-lg row">
           <div class="col-md-6 offset-3">
               <div class="col-md-2">
                   <asp:Label Text="File*" runat="server" CssClass="text-success"></asp:Label>
               </div>
               <div class="col-md-4">
                   <asp:FileUpload ID="FileUpload1" runat="server" />
               </div>
                
           </div>
            <div class="col-md-6 offset-3">
                <div class="col-md-2">
                    <br /><br />
                    <asp:Label Text="Name*" runat="server" CssClass="text-success"></asp:Label>
               </div>
               <div class="col-md-4">
                   <asp:TextBox ID="Name" runat="server" Width="320"></asp:TextBox>
               </div>
            </div>

                <div class="col-md-6 offset-3">
                    <div class="col-md-2">
                        <br /><br />
                        <asp:Label Text="Price*" runat="server" CssClass="text-success"></asp:Label>
               </div>
               <div class="col-md-4">
                   <asp:TextBox ID="Price" runat="server"  Width="320"></asp:TextBox>
               </div>
                </div>

           <div class="col-md-6 offset-3">
               <div class="col-md-2">
                   <br /><br />
                    <asp:Label Text="Details" runat="server" CssClass="text-success"></asp:Label>
               </div>
               <div class="col-md-4">
                   <asp:TextBox ID="Details" runat="server"  Width="320" Height="80" TextMode="MultiLine"></asp:TextBox>
               </div>
           </div>

                <div class="col-md-6 offset-3">
               <div class="col-md-6">
                   <br /><br />
                   <asp:Label Text="* is required field to insert product" runat="server" CssClass="text-warning" Width="320"></asp:Label>
               </div>
             </div>
                
       <div class="col-md-6 offset-3">
               <div class="col-md-6">
                   <br /><br />
                   <asp:Button ID="I" runat="server" Text="Insert" CssClass="text-warning" Width="160" OnClick="I_Click" />
               </div>
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
