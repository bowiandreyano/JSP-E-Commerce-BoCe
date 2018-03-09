<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%
    String[] produk = (String[]) request.getAttribute("produk");
%>
<%               
          String email = "";
          String iduser = "";
          if (session.getAttribute("isactive") == null || session.getAttribute("isactive").equals("")) {
          } else {
              email = session.getAttribute("Email").toString();
              iduser = session.getAttribute("IDUser").toString();
          }
      %>
<!DOCTYPE html>
<html>
<head>
<title>Big store a Ecommerce Online Shopping </title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
<a href="offer.html"><img src="images/download.png" class="img-head" alt=""></a>
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="index.html"><b>T<br>H<br>E</b>Boce Store<span>The Best Supermarket</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<%if (email.equals("")) {%>
                                                                           <li<a href="login.jsp" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
                                                                           <li><a href="register.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
                                                                           <%
                                                                                } else {
                                                                                    out.print(email);
                                                                                    
                                                                                }
                                                                            %>
					<li><a href="shipping.html" ><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
				</ul>	
			</div>
			
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li class=" active"><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/index" class="hyper "><span>Home</span></a></li>	
                                                                                                  <li><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/kitchen" class="hyper "><span>Our Product</span></a></li>
							<li><a href="contact.html" class="hyper"><span>Contact Us</span></a></li>
						</ul>
					</div>
					</nav>
					  <%if (!email.equals("")) {%>
					 <div class="cart" >
                                                                            <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Logout" ><i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;Logout</a></li>
                                                                           &nbsp;&nbsp;&nbsp;&nbsp;
                                                                           <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Cart" ><span class="fa fa-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span></a>
                                                                       <%
                                                                         } else {%>
                                                                         <%}%>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
<div class="banner-top">
     <div class="container">
          <h3 >Boce Store</h3>
          <h4><a href="index.html">Home</a><label>/</label>My Cart</h4>
          <div class="clearfix"> </div>
     </div>
</div>
<div><br><br></div>
<div class="spec ">
          <h3>My Cart</h3>
          <div class="ser-t">
               <b></b>
               <span><i></i></span>
               <b class="line"></b>
          </div>
</div>
<center>
<table>
                    <tr>
                         <td title="IDProduct" class="text-center" style="width: 150px;">
                            <b>ID</b>
                        </td>
                        <td title="Image" class="text-center" style="width: 200px;" >
                            <b>Image</b>
                        </td>
                        <td title="Name" class="text-center" style="width: 200px;">
                            <b>Product Name</b>
                        </td>
                        <td title="Price" class="text-center" style="width: 200px;">
                            <b>Price</b>
                        </td>
                        <td title="Quantity" class="text-center" style="width: 200px;">
                            <b>Quantity(s)</b>
                        </td>
                        <td title="SubTotal" class="text-center" style="width: 200px;">
                            <b>SubTotal(s)</b>
                        </td>
                        
                    </tr
                    <% for (int j = 0; j < produk.length; j++) {
                            String[] prod = produk[j].split("#");
                    %>
                    <tr>
                         <%   int pri = (int)Double.parseDouble(prod[2]);
                              int qty = (int)Double.parseDouble(prod[3]);%>
                             
                        <td class="text-center"><% out.print(prod[4]);%></td>
                        <td class="text-center" style=""><img width="150px" height="150px" src="uploads/<% out.print(prod[1]); %>" class="img-responsive" alt=""></td>
                        <td class="text-center"><% out.print(prod[0]); %></td>
                        <td class="text-center">Rp <% out.print(prod[2]); %></td>
                        <td class="text-center"><% out.print(prod[3]);%> &nbsp; &nbsp;
                             <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Quantity?IDProduct=<% out.println(prod[4]); %>" class="btn btn-xs btn-danger">+</a>
                             <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Quantitymin?IDProduct=<% out.println(prod[4]); %>" class="btn btn-xs btn-danger">-</a>
                        </td>
                        <td class="text-center" title="Total">Rp <%out.print(pri*qty);%></td>
                        <td title="Remove from Cart" class="text-center" style="width: 30px;"><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/CartDelete?IDProduct=<% out.println(prod[4]); %>" class="btn btn-xs btn-danger">X</a></td> 
                    </tr>
                    <%}%>

                </table>
                    <div><br><br></div>
                    <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Quantity?IDProduct="><button type="Submit" class="btn btn-danger my-cart-btn my-cart-b" >Check Out</button></a> &nbsp; &nbsp;&nbsp; &nbsp;
                    <a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Index"><button type="Submit" class="btn btn-danger my-cart-btn my-cart-b" >Back</button></a>
                    
</center>
<div><br><br><br></div>
                             
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-grid">
			<h3>About Us</h3>
			<p>Nam libero tempore, cum soluta nobis est eligendi 
				optio cumque nihil impedit quo minus id quod maxime 
				placeat facere possimus.</p>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Menu</h3>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="kitchen.html">Kitchen</a></li>
				<li><a href="care.html">Personal Care</a></li>
				<li><a href="hold.html">Household</a></li>						 
				<li><a href="codes.html">Short Codes</a></li> 
				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Customer Services</h3>
			<ul>
				<li><a href="shipping.html">Shipping</a></li>
				<li><a href="terms.html">Terms & Conditions</a></li>
				<li><a href="faqs.html">Faqs</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="offer.html">Online Shopping</a></li>						 
				 
			</ul>
		</div>
		<div class="col-md-3 footer-grid">
			<h3>My Account</h3>
			<ul>
				<li><a href="login.html">Login</a></li>
				<li><a href="register.html">Register</a></li>
				<li><a href="wishlist.html">Wishlist</a></li>
				
			</ul>
		</div>
		<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2 ><a href="index.html"><b>T<br>H<br>E</b>Big Store<span>The Best Supermarket</span></a></h2>
				<p class="fo-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-home" aria-hidden="true"></i>12K Street , 45 Building Road Canada.</p>
					</div>
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-phone" aria-hidden="true"></i>+1234 758 839 , +1273 748 730</p>	
					</div>
					<div class="col-md-4 fo-grid1">
						<p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>info@example1.com</a></p>
					</div>
					<div class="clearfix"></div>
					
					</div>
			</div>
		<div class="copy-right">
			<p> &copy; 2016 Big store. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
		</div>
	</div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
</body>
</html>