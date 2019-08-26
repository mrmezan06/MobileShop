<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnReplacement.aspx.cs" Inherits="MobileShop.ReturnReplacement" %>

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
    <a class="nav-link active" href="HomePgae2.aspx"><i class="fas fa-home"></i>Home</a>
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
<!--Navbar-->
<!--End Navbar-->
<div class="std"><h1><span style="color: #0198d1;">Return &amp; Replacement Policy</span></h1><p style="text-align: justify;">Before returning or replacing an item, please read through our return and replacement related Frequently
    Asked Questions (FAQs) on this page, to make sure your purchased item is eligible for return.</p><p>&nbsp;</p><h2><b>What
        is the procedure to return a product?</b></h2><p style="text-align: justify;">You have 3 calendar
            days after item delivery, to notify us that you want to return your product. If your item meets all the requirements,
            your return can be initiated by calling our Customer Service at 09666745745.</p><p style="text-align: center;">&nbsp;</p>
    <h3 style="text-align: center;"><span style="text-decoration: underline;"><b>Simply follow the 6 steps stated below:</b></span></h3>
    <p style="text-align: center;">&nbsp;</p>
    <div class="container">
    <div class="row">
        
        <img class="img-responsive" title="Step 1" alt="Step 1" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/stepr-01.jpg" width="213" height="122" />
     
            <img class="img-responsive" title="Step 2" alt="Step 2" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/stepr-02.jpg" width="213" height="122"/>
        
            <img class="img-responsive" title="Step 3" alt="Step 3" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/stepr-03.jpg"  width="213" height="122"/>
    
         </div>
        <div class="row">
                <img class="img-responsive" title="Step 4" alt="Step 4" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/stepr-04.jpg"  width="213" height="122"/>

           
                <img class="img-responsive" title="Step 5" alt="Step 5" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/stepr-05.jpg" width="213" height="122" />
        
            <img class="img-responsive" title="Step 6" alt="Step 6" src="https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/cmsp/step-6.png" width="213" height="122" />

    </div>
        </div>
    <p>&nbsp;</p><p><strong><i><span style="text-decoration: underline;">Step 1</span></i></strong><i><strong>:</strong> Check if your product meets all the conditions for returning a product.</i></p>
    <p><strong><i><span style="text-decoration: underline;">Step 2</span></i></strong>
        <i><strong>:</strong> Contact Pickaboo&rsquo;s Customer Service to submit a complaint / request for return.</i></p><p><strong><i><span style="text-decoration: underline;">Step 3</span></i></strong><i><strong>:</strong> Fill in the return form given with the invoice.</i></p><p><strong><i><span style="text-decoration: underline;">Step 4</span></i></strong><i><strong>:</strong> Choose your preferred method of product return when you call Customer Service.</i></p><p><strong><i><span style="text-decoration: underline;">Step 5</span></i></strong><i><strong>:</strong> Your returned product will go through a Quality Check.</i></p><p><strong><i><span style="text-decoration: underline;">Step 6</span></i></strong><i><strong>:</strong> If validated, you will get product Return / Replacement.</i></p><p>&nbsp;</p><p><b>NOTE:</b></p><p>★&nbsp; You must show the original Customer Copy of the Invoice to authenticate your purchase, at the time of handing over the product.</p><p>&nbsp;</p><p><span style="font-size: small;"><i><span style="text-decoration: underline;">MyShop has the easiest 3 Days Easy Return Policy.</span></i></span></p><p>&nbsp;</p><h2><b>How much time do you have to return a product?</b></h2><p style="text-align: justify;">Items sold on pickaboo.com can be returned within a period of 3 calendar days from the delivery date, provided they are eligible for return. For example: If you receive your product on the 5th of any month, you have time until the 8th of that month to contact Pickaboo&rsquo;s Customer Service center. Customer Service agents are available from 9:00 am &ndash; 10:00 pm, 7 days a week (except on national holidays e.g Eid).</p><p><b>NOTE:</b></p><p style="text-align: justify;">★&nbsp; You have 3 calendar days from the day you receive your purchased product, to call MyShop to initiate your return. Unfortunately, we will not accept returns past 3 days of your product delivery, or if you do not have the original copy of the Customer Copy Invoice. If the nature of your complaint refers to damages, we advise you to check if your product has a warranty. Visit our <span style="text-decoration: underline;"><span style="color: #0000ff;"><a title="Warranty Policy" href="WarrantyPolicy.aspx" target="_blank"><span style="color: #0000ff; text-decoration: underline;">W<span style="color: #0000ff; text-decoration: underline;"><span style="color: #0000ff; text-decoration: underline;">arranty Policy</span></span></span></a></span></span> page for more details.</p><p style="text-align: justify;">&nbsp;</p><h2><b>How do I request for a return ?</b></h2><ul><li><span style="text-decoration: underline;">Option 1</span>: Communicating with us by Facebook page or Pickaboo website.</li><li><span style="text-decoration: underline;">Option 2</span>: By calling Pickaboo&rsquo;s Customer Service on +8809666745745</li><li><span style="text-decoration: underline;">Option 3</span>: Directly drop off the product at the office premises or by post by Sundarban Courier Service.</li><li><span style="text-decoration: underline;">Option 4</span>: Request online by clicking on My Account followed by clicking on the Return/Replacement section then &ldquo;Request new Return&rdquo;.</li></ul><p>&nbsp;</p><h2><b>What are the conditions for returning a product?</b></h2><p>If you have bought any product from us, and want to return it, please refer to the requirements stated in the charts below to know the conditions for returning your product whether it is an electronic product or a fashion &amp; lifestyle item.</p><p>&nbsp;</p><h2><b><span style="text-decoration: underline;"><span>Conditions for Return or Replacement for Electronics</span></span></b></h2><p>&nbsp;</p><table class="table table-hover"><tbody><tr><td rowspan="2"><b>Reasons for return</b></td><td colspan="5"><p><b>YOUR RETURN MUST BE :<br /> (</b><b>x : Not Required | </b><b>✓</b><b>: Required</b><b>)</b></p></td></tr><tr><td><b>New condition</b></td><td><b>Sealed condition</b></td><td><p><b>Complete (including warranty cards, manuals, certificates of authenticity, tags, etc.)</b></p></td><td><b>Not damaged</b></td><td><b>Tags &amp; labels attached</b></td></tr><tr><td>Damaged <br />(As per brand policy)</td><td>x</td><td>x</td><td>✓</td><td>x</td><td>✓</td></tr><tr><td>Defective<br />
(As per brand policy)</td><td>x</td><td>x</td><td>✓</td><td>✓</td><td>✓</td></tr><tr><td>Not as advertised</td><td>✓</td><td>✓</td>
<td>✓</td><td>✓</td><td>✓</td></tr><tr><td>Wrong item delivered</td><td>✓</td><td>✓ Product seal should not be broken EXCEPT
for an item type that cannot be differentiated visually based on information provided on the box or packaging
only</td><td>✓</td><td>✓</td><td>✓</td></tr><tr><td>Missing parts / items</td><td>✓</td><td>x</td><td>x</td><td>✓</td><td>✓

</td></tr>
<tr><td>Change of mind</td><td>✓</td><td>✓</td><td>✓</td><td>✓</td><td>✓</td></tr><tr><td>Signs of
usage</td><td>x</td><td>x</td><td>✓</td><td>x</td><td>x</td></tr><tr><td>Doubts on the authenticity4

</td><td>x</td><td>x</td><td>✓</td><td>x</td><td>x

</td></tr><tr><td>
Product is expired</td><td>x</td><td>x</td><td>✓</td><td>✓</td><td>✓</td></tr></tbody></table><p><b>NOTE:</b></p><p>★&nbsp;
Complaint must be submitted within 3 calendar days after product delivery.</p><p>★&nbsp;
In the event that your return does not meet the requirement(s), our Customer Service will notify you
before sending it back to you. In this instance, your return courier/postal fee will not be reimbursed.

</p><p>★&nbsp; The &ldquo;<b>No Returns</b>&rdquo; Category products can only be returned, within 3 calander days, 
if the product boxes are sealed and in new condition as it was delivered.</p><p>&nbsp;</p><h2><b>
<span style="text-decoration: underline;"><span>Conditions for Return or Replacement for 
Beauty &amp; Grooming</span></span></b></h2><p>&nbsp;</p><table class="table table-hover"><tbody><tr>
<td rowspan="2"><b>Reasons for return</b></td><td colspan="5"><p><b>YOUR RETURN MUST 
BE :<br /> (</b><b>x : Not Required | </b><b>✓</b><b>: Required</b><b>)</b></p></td></tr><tr><td><b>New 
condition</b></td><td><b>Sealed condition</b></td><td><p><b>Complete (including warranty cards,
manuals, certificates of authenticity, tags, etc.)</b></p></td><td><b>Not damaged</b></td><td><b>Tags
&amp; labels attached</b></td></tr><tr><td><b>No Returns</b> categories: Beauty and Grooming, Wax,
Perfumes, Deodorants, Nail Polish, Personal Hygiene</td><td>No returns</td><td>No returns</td><td>No
returns</td><td>No returns</td><td>No returns</td></tr></tbody></table><p>&nbsp;</p><h2><b>
<span style="text-decoration: underline;"><span>Conditions for Return or Replacement
for Fashion &amp; Lifestyle</span></span></b></h2><p>&nbsp;</p><table class="table table-hover"><tbody><tr><td><strong>
Reasons for Return or Replacement of any Clothing Item:</strong></td><td><strong>A customer requesting &nbsp;for 
a Return or Replacement must have the following with their product:</strong></td></tr><tr><td><ol><li dir="ltr">
<p dir="ltr"><span>If the product is damaged or is defective at the time of delivery.

</span></p></li><li dir="ltr"><p dir="ltr"><span>If the product ordered is not the 
right size or does not fit. </span></p></li><li dir="ltr"><p dir="ltr"><span>If the product&rsquo;s 
color is not one which was expected or a wrong color was delivered</span><span>.
</span><span>(But the color mismatch must be significant for any returns) </span></p></li></ol></td><td>
<ol><li dir="ltr"><p dir="ltr"><span> The Product must be in fresh condition and must not have any signs of usage.

</span></p></li><li dir="ltr"><p dir="ltr"><span>The Product must 
have proper folding, fabric pins, clips or collar pads it came with in the 
original delivery.</span></p></li><li dir="ltr"><p dir="ltr"><span>The 
Product must have all the initial packaging (poly, bags or paper wrapping), box, 
and tags it came with at the time of delivery.</span></p></li>
<li dir="ltr"><p dir="ltr"><span>The Price tag, Brand tag or any other tags that were in the product 
must be included for any return claims.</span></p></li></ol></td></tr></tbody></table><p><b>NOTE:</b></p><p>★&nbsp; 
<strong>Pre-ordered</strong> Clothing Items will not be accepted for any Returns or Replacement.</p><p><b>&nbsp;

</b></p><h2><b>How to make a product return &amp; what do I need?</b></h2><p style="text-align: justify;">Contact Customer 
Service at support@pickaboo.com or 09666745745 to confirm that your product is eligible for return. We will explain
to you the return procedure, and arrange a pick-up. Please be prepared to give the following information when you 
call Customer Service:</p><ol start="1"><li>Your order number.</li><li>The reason for the return.</li><li>The original 
copy of the Customer Copy of the Invoice</li><li>The method of the return/replacement that you would prefer and the
necessary information associated.</li><li>Where and when the product should be picked-up.</li></ol><p>&nbsp;<b>NOTE:
</b></p><p style="text-align: justify;">★&nbsp; For pick-ups, we will make <b>maximum 3 attempts</b> at picking up 
the product. In an event where, after 3 attempts, you have failed to handover the product to us, we will cancel 
your request for return, replacement or refund.</p><p style="text-align: justify;">The product shall no longer be 
considered for return. Instead, if requested again, the product shall be treated under our 
<span style="text-decoration: underline; color: #0000ff;"><a title="Warranty Policy" href="WarrantyPolicy.aspx" target="_blank"><span style="color: #0000ff; text-decoration: underline;">Warranty Policy</span></a></span>
for servicing only.</p><p style="text-align: justify;">&nbsp;</p><h2><b>How
to send your product to MyShop? How much will it cost you?</b></h2><p style="text-align: justify;">Our 
Customer Service will arrange for pick-up of the product from your address, free of delivery charge. 
If you live outside Dhaka, please send your product by Sundarban Courier Service.If your return claim
is validated, we will reimburse your courier charge.</p><p style="text-align: justify;">&nbsp;</p><h2><b>Where to
return the product?</b></h2><p>In an event where you have failed to provide your product to our pick-up, 
kindly have your returns shipped or dropped-off to our&nbsp;-</p><p><span style="font-size: small;"><b>Returns
Mailing Address:</b></span></p><p>House 10, Road 12, Block F, Niketan, Gulshan 1, Dhaka - 1212, 
Bangladesh</p><p>&nbsp;</p><h2><b>Once your product is received by MyShop, what are
the checks being done?</b></h2><p style="text-align: justify;">Once your product is received, your 
product will be checked by our Quality Control team. We will test whether the products fails to 
perform as you have claimed in your return form. We will also make sure that your product meets 
all the requirements for a return as stated in our policy.</p><p style="text-align: justify;">&nbsp;</p><h2><b>How to
request a refund and what are the conditions?</b></h2><p style="text-align: justify;">Refunds are made only when 
the request is made within 3 calendar days of the purchase. And the purchased product must be in <strong>sealed/intact
condition</strong> to be eligible for a refund. Otherwise, there will be no option for any 
refund.</p><p style="text-align: justify;">&nbsp;</p><h2><b>How long does the validation or invalidation of the 
refund take?</b></h2><p style="text-align: justify;">This quality evaluation process takes at least 7 business days
depending on the refund method. Once completed, we will send you an e-mail or call you to give you the result of 
the quality evaluation.</p><p style="text-align: justify;">&nbsp;</p><h2><b>What are the Refund Modes?</b></h2><p>If the 
refund does not arrive after the next two months&rsquo; statements, please contact your issuing bank or party directly 
for support.</p><div><table class="table table-hover"><tbody><tr><td><p><b>Refund Method</b></p></td><td><p><b>Processing 
Time</b></p></td></tr><tr><td><p>Voucher</p></td><td><p>2-3 Business Days</p></td></tr><tr><td><p>Bank 
Transfer</p></td><td><p>3-9 Business Days</p></td></tr><tr><td><p>Credit Card Reversal</p></td><td><p>7-12 
Business Days</p></td></tr></tbody></table></div><p><b>NOTE:</b></p><p>★&nbsp;&nbsp;&nbsp;Any postage fee 
incurred during the returns, please send us your postage fee with receipt for us to refund to you. 
Processing time will be the same as bank transfer method.</p><p>&nbsp;</p><h2><b>Can you request an 
exchange rather than a refund?</b></h2><p style="text-align: justify;">If you prefer to exchange 
your product, just let Customer Service know and we will call you as soon as your product has been
received, and we have looked into the availability of the requested product. But the product must 
be totally sealed/intact for any exchange.</p><p style="text-align: justify;">If you choose a 
refund voucher, you can also use it to buy any product on pickaboo.com within the voucher 
amount.</p><p style="text-align: justify;">&nbsp;</p><h2><b>If your returned product is not 
validated for return, how are you informed?</b></h2><p>If your return is invalid, then 
we will call you to explain the issue and send the item back to you. We will arrange 
the delivery of the item. You can still avail warranty if you have.</p><p><b>NOTE:</b></p><p style="text-align: justify;">★&nbsp;
    &nbsp;&nbsp;We will make 3 attempts to return the product to you. However, after this, we will cancel the return procedure but 
    we will keep the product with us for a maximum of 15 days for you to retrieve from our office premises.
    </p></div>


     <!--Footer-->
        <nav class="bg-dark">
            <footer class="text-center"><h2>© 2019 MobileShop | All Rights Reserved.</h2>
    </footer>
        </nav>
    </form>      



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700"/>

    </body>
</html>
