<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WarrantyPolicy.aspx.cs" Inherits="MobileShop.WarrantyPolicy" %>

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

       <!-- Warranty Policy-->
        <div class="container">
        <div class="row">
            <div class="col-md-3" style="text-align: center;">
                &nbsp;
            </div>
            <div class="col-md-18">
                <h1 style="color:blue;">Warranty Policy</h1>
                <p style="text-align: justify;">MyShop.com prioritizes the safety and security of customers through various
                    warranty facilities such as Brand Warranty, International Warranty, Service Warranty and Parts Warranty.</p>
                <p style="text-align: justify;">All these warranty facilities give you limited warranty rights from MyShop.com,
                    or the manufacturer company, or the brand, for the duration specified on the product description page.
                    The Limited Warranty Time Period starts on the date of purchase from Pickaboo.com. The limited warranty
                    applies to the physical product, and only for physical products, purchased from 
                    <a title="MyShop.com" href="HomePage.aspx" target="_blank">
                        <span style="text-decoration: underline;">
                            <span style="color: #0000ff; text-decoration: underline;">
                                <strong>Online Shop</strong></span></span></a>
                    .</p>
                <h2>Warranty Types:</h2>
                <ul>
                    <li><p><strong>Official Warranty</strong></p></li>
                    <ul>
                        <li><p>Brand Warranty</p></li><li><p>International Warranty</p></li>
                    </ul>

                </ul>
                <ul>
                    <li><p><strong>Service Warranty</strong></p></li>
                    <li><p><strong>Parts Warranty</strong></p></li>

                </ul>
                <h2>What Does Official Warranty Cover ?</h2>
                <p style="text-align: justify;">In case of <strong>&ldquo;Official Warranty&rdquo;</strong>
                    - Brand Warranty &amp; International Warranty, customers are requested to communicate with
                    the brand or the internationally authorized <a title="Customer Service Point" href="Contact.aspx" target="_blank">
                        <span style="text-decoration: underline; color: #0000ff;"><strong>Customer Service Point</strong></span></a>
                    to avail after sales service. You can also directly communicate with Pickaboo customer support.
                    We will ensure the collection of your product and safely contact the Brand on behalf of you, 
                    for availing your service warranty. Once your product has been serviced successfully,
                    from the specific brand authorized service providers, we will deliver back the product
                    to you, FREE of cost.</p><p style="text-align: justify;"><strong>Note:</strong></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; 
text-decoration: none; vertical-align: baseline;">*** </span><em><span style="font-size: 10.5pt; 
font-family: Arial; color: #000000; background-color: #ffffff; font-weight: 400; font-variant: normal; 
text-decoration: none; vertical-align: baseline;">In case of International Warranty, the Warranty is usually 
    automatically activated for some brands. However in an event where the particular brand does not activate
    the Warranty automatically the customer must have the warranty card provided with the product itself in
    the sealed package, in order to avail the warranty in any other country where the product has internationally 
    authorized Customer Service Point. If the warranty card is not with the customer at the time of seeking warranty 
    the customer will not be able to avail the International Warranty in any other country.</span></em></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none;
vertical-align: baseline;">*** </span><em><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-variant: normal; text-decoration: none; vertical-align: baseline;">
    For various products carrying Brand Warranty, the accompanying Warranty service varies differently between
    Commercial use and Household usage.</span></em></p>
                <h2>What Does Service Warranty Cover ?</h2>
                <p style="text-align: justify;">The <strong>&rdquo;Service Warranty&rdquo;</strong>
                    covers any material defects under normal usage <span style="text-decoration: underline;">
                        during the warranty period</span>. The following terms and conditions apply under 
                    the said warranty:</p><p style="text-align: justify;"><strong>Any malfunctioning issues</strong> 
                        will be under the service warranty coverage at the payment of a Service Fee. if the problem 
                        is not caused by the user/customer. (For example - product malfunctioning issues or battery
                        drainage issues or power supply issues will be covered under warranty)</p>
                <p style="text-align: justify;"><strong>Any accidental issues</strong> will 
                    <span style="text-decoration: underline;">void</span> service warranty.
                    (For example - in case of mobile phones and tablets; broken display, bending, 
                    scratch, dent, burn, soaked or liquid damage, root or manual update will not be
                    covered under warranty)</p>
                <h2>What Does Parts Warranty Cover ?</h2>
                <p style="text-align: justify;">The <strong>&rdquo;Parts Warranty&rdquo;</strong>
                    covers any damage under normal usage <span style="text-decoration: underline;">during
                        the warranty period</span> to any part of the product which carries a valid Parts Warranty.</p>
                <p style="text-align: justify;">The following terms and conditions apply under the said warranty:</p>
                <p style="text-align: justify;"><strong>Duration:</strong> The duration of the warranty period varies 
                    from product to product, and the details of the warranty will be mentioned with the 
                    accompanying warranty card.</p><p style="text-align: justify;">However, as many products or 
                        its models go out of production after a certain period of time, the replacement of the part
                        may take some time. Pickaboo&rsquo;s Customer Service will communicate with the customer 
                        regarding the details.</p><p style="text-align: justify;"><strong>Warranty Card:</strong> 
                            In order to avail the warranty facility, the customer must have the original warranty
                            card and customer invoice copy. Otherwise, the Parts Warranty cannot be availed.</p>
                <p style="text-align: justify;"><strong>Note:</strong></p><p style="text-align: justify;">
                    <span style="font-size: 10.5pt; font-family: Arial; color: #000000; background-color: #ffffff; 
font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline;">
                        *** </span><em><span style="font-size: 10.5pt; font-family: Arial; color: #000000; 
background-color: #ffffff; font-weight: 400; font-variant: normal; text-decoration: none; vertical-align: baseline;">
                            <strong>Parts Warranty</strong> does not cover any damages, failure or defects
                            to the products accessories such as batteries, remote, electrical adapter etc.</span></em></p>
                <h2>How to Obtain Warranty Service and Where Should I Go ?</h2>
                <p style="text-align: justify;">If the product does not function as warranted during the warranty period,
                    you may obtain warranty service by contacting <strong>Pickaboo customer support</strong>
                    at <strong>+8809666745745</strong>.</p><ul><li>In case of <strong>Mobile phones</strong>,
                        <strong>Tablets</strong>, <strong>Desktops</strong> or <strong>Laptops</strong>
                        ; you must soft reset your device and have proper data backup before sending the device.
                        Pickaboo shall not be liable for any data loss.</li><li>You will have to ensure that the
                            problem has been described in details and elaborately in both the given 
                            <strong>Return</strong> and <strong>Servicing Form</strong> 
                            and send the device along with the form.</li></ul><p style="text-align: justify;">
                                <strong>Note:</strong></p><p style="text-align: justify;">
                                    <span style="font-size: 10.5pt; font-family: Arial; color: #000000; background-color: #ffffff; 
font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline;">*** </span>
                                    <em><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-variant: normal; text-decoration: none; vertical-align: baseline;">
                                        You must have the original Customer Copy of your invoice at the time of filling in the forms,
                                        as it will be needed to fill in the forms and authenticate your purchase.</span></em></p>
                <ul><li>Before the product undergoes any Servicing process, the Customer must pay the Servicing Fee in full. 
                    If the free is not paid, the Servicing Process cannot begin.</li>
                    <li>Pickaboo.com will run Quality Control test to ensure the validity of the product complaint.
                        If the complaint or issues are found to be valid, then Pickaboo will take appropriate
                        measures to rectify the issue complained about. Pickaboo may also send the product to their
                        authorized seller, for expert opinion.</li><li>The servicing process may take 7-30 working days,
                            depending on the product type.</li><li>If any additional parts are required to fully ensure
                                functionality of the product, then you (the customer) will have to bear the cost in advance
                                through bKash/Cash, once contacted by Pickaboo. Unless it falls within the duration of the
                                <strong>Parts Warranty</strong>.</li>
                    <li>If your product is non-functional on arrival, or is otherwise eligible for return and replacement,
                        you can call Pickaboo.com at +880 9666-745745 within 3 calendar days of delivery to avail a return 
                        or replacement (subject to certain terms and conditions). For other options for communication,
                        check our <a title="Return &amp; Replacement Policy" href="ReturnReplacement.aspx" target="_blank">
                            <span style="text-decoration: underline; color: #0000ff;"><strong>Return &amp; Replacement Policy</strong></span>

                                  </a>
                        for more details.</li>
                    <li>In an event, where more than 3 calendar days have passed after product delivery, you will no longer 
                        be able to claim a return or replacement of your purchased product. However, if the product has a warranty, 
                        it will be included within the packaging and can be used to claim the product warranty. 
                        All you need to do is make a call to our customer service to claim warranty service. 
                        MyShop will arrange a pick-up of the product from you, FREE of cost, however there will 
                        be shipping charge when we deliver the service product.</li></ul>
                <h2>How Will I Get Warranty If I Live Outside Dhaka ?</h2>
                <p style="text-align: justify;">If you live outside Dhaka, you can send your product via Sundarban Courier
                    Service. After receiving your product, it will take 7-30 working days, depending on the product and its 
                    category, to ensure the servicing of your product and its delivery back to you.</p>
                <h2>What Am I Supposed to Write in the Exchange/Servicing Form ?</h2>
                <p style="text-align: justify;">Once MyShop&rsquo;s personnel arrives to receive the product
                    for servicing or to be exchanged, you will have to fill in the forms and write down the order number
                    and details of the problem you are facing with your product on the given Servicing Form. We will 
                    run tests to check the condition of the product against your claim, if the product is found to have
                    the claimed problems, we will send the product to the brand for servicing.</p>
                <h2>What This Warranty Does Not Cover ?</h2>
                <p style="text-align: justify;">Warranty does not include damages that arise from negligence,
                    misuse or any form of use that is not in accordance with the product instructions.</p>
                <h2>How to avail product replacement under Return &amp; Replacement Policy ?</h2>
                <p style="text-align: justify;">Upon receiving the claim for product return or replacement under 
                    Return &amp; Replacement Policy, Pickaboo shall proceed with its standard quality control checks to establish 
                    the validity of the claim under the Policy.</p><p style="text-align: justify;">If valid problems 
                        are found, and the same product is in production by the manufacturer then the customer will get a 
                        replacement of the product. In an event where the production of the same has been stopped or unavailable
                        in market, then the customer shall be replaced with a similar/comparable product of the same kind within the 
                        same price range of current available model.</p><p style="text-align: justify;">
                            The exclusions and limitations set forth in the original warranty apply to the repair warranty.</p>
                <p style="text-align: justify;"><strong>This warranty does not cover the following:</strong></p>
                <ul><li>Cosmetic damages such as scratches, nicks, stains and dents.</li>
                    <li>Consumable parts such as batteries, or accessories such as remote unless product damage
                        has occurred due to a defect in materials or workmanship.</li>
                    <li>Damage caused by service performed by anyone who is not an authorized service provider of MyShop.com.</li>
                    <li>Damage to a product that has been modified or altered before submitting any complaint to Pickaboo.com.</li>
                    <li>Modification or service by anyone other than warranted seller/brand/manufacturer.</li>
                    <li>Failure or damage resulting from negligence, misuse, abuse, accident, modification, 
                        power surges, improper maintenance, unsuitable physical or operating environment,
                        water (in excess of specifications), flood, fire, natural disasters, or other acts of nature
                        or external causes.</li>
                    <li>Damage due to not using product according to the product information materials or user guides.</li>
                    <li>Products or parts with an altered identification label or from which the identification label has been removed.</li>
                    <li>If any customer gets servicing done by any unauthorized third party service provider, then the
                        service warranty will become void even if the duration has not yet expired.</li>

                </ul>
                <p style="text-align: justify;"><strong>Note:</strong></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000; 
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none;
vertical-align: baseline;">*** All products and brands listed under a particular category may 
                    not have the same warranty policy. It depends on particular the Brands/Seller's&rsquo; warranty 
                    policy. Brand warranty varies from product to product and brand to brand.</span></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; 
vertical-align: baseline;">*** In case of Official (Brand or International) warranty, please review their product
                    warranty policy carefully, and you may contact the brand / international authorized service point,
                    if you have any queries regarding this.</span></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000; 
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; 
vertical-align: baseline;">*** Some promotions may or may not follow this policy.</span></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; 
vertical-align: baseline;">*** MyShop.com and its authorized persons have full authority to bring changes in any 
                    service warranty policies.</span></p>
                <p style="text-align: justify;"><span style="font-size: 10.5pt; font-family: Arial; color: #000000;
background-color: #ffffff; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; 
vertical-align: baseline;">*** Terms of service and warranty may change with or without prior notice, consumers are responsible 
                    of keeping up with all policy changes.</span></p></div></div></div>   
    

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