<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

     <%
    String[] produk = (String[]) request.getAttribute("produk");
    String[] produkFV = (String[]) request.getAttribute("produkFV");
    String[] produkS = (String[]) request.getAttribute("produkS");
    String[] produkSN = (String[]) request.getAttribute("produkSN");
    String[] produkO = (String[]) request.getAttribute("produkO");
    
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
							<li><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Index" class="hyper "><span>Home</span></a></li>	
                                                                                                  <li class=" active"><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/OurProduct" class="hyper "><span>Our Product</span></a></li>
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
  
<!--content-->
<div class="product">
     <div class="container">
          <div class="spec ">
               <h3>Products</h3>
               <div class="ser-t">
                             <b></b>
                             <span><i></i></span>
                             <b class="line"></b>
               </div>
               <div class="tab-head ">
                    <nav class="nav-sidebar">
                         <ul class="nav tabs ">
                              <li class="active"><a href="#tab1" data-toggle="tab">All</a></li>
                           <li class=""><a href="#tab2" data-toggle="tab">Snacks</a></li> 
                           <li class=""><a href="#tab3" data-toggle="tab">Fruits & Vegetables</a></li>  
                           <li class=""><a href="#tab4" data-toggle="tab">Seasoning</a></li> 
                           <li class=""><a href="#tab5" data-toggle="tab">Others</a></li>
                         </ul>
                    </nav>
                         <div class=" tab-content tab-content-t ">
                              <div class="tab-pane active text-style" id="tab1">
                                   <div class=" con-w3l">
                                        <% for (int j = 0; j < produk.length; j++) {
                                             String[] prod = produk[j].split("#");
                                        %>
                                             <div class="col-md-3 m-wthree">
                                                  <div class="col-m">
                                                       <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                                                            <img src="uploads/<% out.println(prod[3]); %>" class="img-responsive" alt="">
                                                            <% String o = "Offer"; %>
                                                            <% if(prod[5].equals(o)) {%>
                                                            <div class="offer"><p><span>Offer</span></p></div>
                                                            <% } %>
                                                       </a>
                                                       <div class="mid-1">
                                                            <div class="women">
                                                                 <h6><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Single?IDProduct=<% out.println(prod[0]); %>"><% out.print(prod[1]); %></a>(<% out.print(prod[7]); %>)</h6>							
                                                            </div>
                                                            <div class="mid-2">
                                                                 <p ><em class="item_price">Rp <% out.println(prod[2]); %></em></p>
                                                                   
                                                                 <div class="clearfix"></div>
                                                            </div>
                                                                <%if (!email.equals("")) {%>
                                                                 <div class="add">
                                                                 <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Cart?IDProduct=<% out.println(prod[0]); %>"><button  class="btn btn-danger my-cart-btn my-cart-b" data-id="<% out.println(prod[0]); %>" data-name="<% out.println(prod[1]); %>" data-summary="summary 4" data-price="<% out.println(prod[2]); %>" data-quantity="1" data-image="uploads/<% out.println(prod[3]); %>">Add to Cart</button>
                                                                 </a></div>
                                                              <%
                                                               } else {%>
                                                                 <div class="add">
                                                                 <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/login.jsp"><button  class="btn btn-danger my-cart-btn my-cart-b" >Login</button>
                                                                 </a></div>
                                                               <%}%>
                                                       </div>
                                                  </div>
                                             </div>
                                        <% } %>
                                        <div class="clearfix"></div>
                                   </div>
                              </div>

                              <div class="tab-pane text-style" id="tab2">
                                   <div class=" con-w3l">
                                        <% for (int j1 = 0; j1 < produkS.length; j1++) {
                                             String[] prodS = produkS[j1].split("#");
                                        %>
                                             <div class="col-md-3 m-wthree">
                                                  <div class="col-m">
                                                       <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                                                            <img src="uploads/<% out.print(prodS[3]); %>" class="img-responsive" alt="">
                                                            <% String o = "Offer"; %>
                                                            <% if(prodS[5].equals(o)) {%>
                                                            <div class="offer"><p><span>Offer</span></p></div>
                                                            <% } %>
                                                       </a>
                                                       <div class="mid-1">
                                                            <div class="women">
                                                                 <h6><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Single?IDProduct=<% out.println(prodS[0]); %>"><% out.print(prodS[1]); %></a>(<% out.print(prodS[7]); %>)</h6>							
                                                            </div>
                                                            <div class="mid-2">
                                                                 <p ><em class="item_price">Rp <% out.print(prodS[2]); %></em></p>
                                                                  
                                                                 <div class="clearfix"></div>
                                                            </div>
                                                                 <%if (!email.equals("")) {%>
                                                                      <div class="add">
                                                                      <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Cart?IDProduct=<% out.println(prodS[0]); %>"><button  class="btn btn-danger my-cart-btn my-cart-b" data-id="<% out.println(prodS[0]); %>" data-name="<% out.println(prodS[1]); %>" data-summary="summary 4" data-price="<% out.println(prodS[2]); %>" data-quantity="1" data-image="uploads/<% out.println(prodS[3]); %>">Add to Cart</button>
                                                                      </a></div>
                                                                   <%
                                                                    } else {%>
                                                                      <div class="add">
                                                                      <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/login.jsp"><button  class="btn btn-danger my-cart-btn my-cart-b" >Login</button>
                                                                      </a></div>
                                                                 <%}%>
                                                       </div>
                                                  </div>
                                             </div>
                                        <% } %>
                                        <div class="clearfix"></div>
                                    </div>
                              </div>
                              <div class="tab-pane text-style" id="tab3">
                                   <div class=" con-w3l">
                                        <% for (int j2 = 0; j2 < produkFV.length; j2++) {
                                             String[] prodFV = produkFV[j2].split("#");
                                        %>
                                             <div class="col-md-3 m-wthree">
                                                  <div class="col-m">
                                                       <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                                                            <img src="uploads/<% out.print(prodFV[3]); %>" class="img-responsive" alt="">
                                                            <% String o = "Offer"; %>
                                                            <% if(prodFV[5].equals(o)) {%>
                                                            <div class="offer"><p><span>Offer</span></p></div>
                                                            <% } %>
                                                       </a>
                                                       <div class="mid-1">
                                                            <div class="women">
                                                                 <h6><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Single?IDProduct=<% out.println(prodFV[0]); %>"><% out.print(prodFV[1]); %></a>(<% out.print(prodFV[7]); %>)</h6>							
                                                            </div>
                                                            <div class="mid-2">
                                                                 <p ><em class="item_price">Rp <% out.print(prodFV[2]); %></em></p>
                                                                  
                                                                 <div class="clearfix"></div>
                                                            </div>
                                                                 <%if (!email.equals("")) {%>
                                                                 <div class="add">
                                                                 <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Cart?IDProduct=<% out.println(prodFV[0]); %>"><button  class="btn btn-danger my-cart-btn my-cart-b" data-id="<% out.println(prodFV[0]); %>" data-name="<% out.println(prodFV[1]); %>" data-summary="summary 4" data-price="<% out.println(prodFV[2]); %>" data-quantity="1" data-image="uploads/<% out.println(prodFV[3]); %>">Add to Cart</button>
                                                                 </a></div>
                                                              <%
                                                               } else {%>
                                                                 <div class="add">
                                                                 <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/login.jsp"><button  class="btn btn-danger my-cart-btn my-cart-b" >Login</button>
                                                                 </a></div>
                                                               <%}%>
                                                       </div>
                                                  </div>
                                             </div>
                                        <% } %>
                                        <div class="clearfix"></div>
                                    </div>
                              </div>
                                        
                                        <div class="tab-pane text-style" id="tab4">
                                   <div class=" con-w3l">
                                        <% for (int j3 = 0; j3 < produkSN.length; j3++) {
                                             String[] prodSN = produkSN[j3].split("#");
                                        %>
                                             <div class="col-md-3 m-wthree">
                                                  <div class="col-m">
                                                       <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                                                            <img src="uploads/<% out.print(prodSN[3]); %>" class="img-responsive" alt="">
                                                            <% String o = "Offer"; %>
                                                            <% if(prodSN[5].equals(o)) {%>
                                                            <div class="offer"><p><span>Offer</span></p></div>
                                                            <% } %>
                                                       </a>
                                                       <div class="mid-1">
                                                            <div class="women">
                                                                 <h6><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Single?IDProduct=<% out.println(prodSN[0]); %>"><% out.print(prodSN[1]); %></a>(<% out.print(prodSN[7]); %>)</h6>							
                                                            </div>
                                                            <div class="mid-2">
                                                                 <p ><em class="item_price">Rp <% out.print(prodSN[2]); %></em></p>
                                                                   
                                                                 <div class="clearfix"></div>
                                                            </div>
                                                                 <div class="add">
                                                               <button class="btn btn-danger my-cart-btn my-cart-b" data-id="<% out.print(prodSN[0]); %>" data-name="<% out.print(prodSN[1]); %>" data-summary="summary 4" data-price="<% out.print(prodSN[2]); %>" data-quantity="1" data-image="uploads/<% out.print(prodSN[3]); %>">Add to Cart</button>
                                                            </div>
                                                       </div>
                                                  </div>
                                             </div>
                                        <% } %>
                                        <div class="clearfix"></div>
                                    </div>
                              </div>
                                        
                                        <div class="tab-pane text-style" id="tab5">
                                   <div class=" con-w3l">
                                       <% for (int j4 = 0; j4 < produkO.length; j4++) {
                                             String[] prodO = produkO[j4].split("#");
                                        %>
                                             <div class="col-md-3 m-wthree">
                                                  <div class="col-m">
                                                       <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                                                            <img src="uploads/<% out.print(prodO[3]); %>" class="img-responsive" alt="">
                                                            <% String o = "Offer"; %>
                                                            <% if(prodO[5].equals(o)) {%>
                                                            <div class="offer"><p><span>Offer</span></p></div>
                                                            <% } %>
                                                       </a>
                                                       <div class="mid-1">
                                                            <div class="women">
                                                                 <h6><a href="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Single?IDProduct=<% out.println(prodO[0]); %>"><% out.print(prodO[1]); %></a>(<% out.print(prodO[7]); %>)</h6>							
                                                            </div>
                                                            <div class="mid-2">
                                                                 <p ><em class="item_price">Rp <% out.print(prodO[2]); %></em></p>
                                                                   
                                                                 <div class="clearfix"></div>
                                                            </div>
                                                                 <%if (!email.equals("")) {%>
                                                                      <div class="add">
                                                                      <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/Cart?IDProduct=<% out.println(prodO[0]); %>"><button  class="btn btn-danger my-cart-btn my-cart-b" data-id="<% out.println(prodO[0]); %>" data-name="<% out.println(prodO[1]); %>" data-summary="summary 4" data-price="<% out.println(prodO[2]); %>" data-quantity="1" data-image="uploads/<% out.println(prodO[3]); %>">Add to Cart</button>
                                                                      </a></div>
                                                                   <%
                                                                    } else {%>
                                                                      <div class="add">
                                                                      <a href ="http://<% out.println(request.getServerName()); %>:8080/Widyakharisma/login.jsp"><button  class="btn btn-danger my-cart-btn my-cart-b" >Login</button>
                                                                      </a></div>
                                                                    <%}%>
                                                       </div>
                                                  </div>
                                             </div>
                                        <% } %>
                                        <div class="clearfix"></div>
                                    </div>
                              </div>
                         </div>
                    </div>
              </div>
        </div>
 </div>
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
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>

  
  
  
  <!-- product -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
                                                                                                                        <div class="item">
                                                                                                                                      <img src="images/of24.png" class="img-responsive" alt="">
                                                                                                                        </div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Wheat(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="24" data-name="Wheat" data-summary="summary 24" data-price="1.50" data-quantity="1" data-image="images/of24.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
<!-- product -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of25.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Peach Halves(250 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$10.00</del>$9.00</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="25" data-name="Peach Halves" data-summary="summary 25" data-price="9.00" data-quantity="1" data-image="images/of25.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of26.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Banana(1 kg)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$3.00</del>$2.00</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="26" data-name="Banana" data-summary="summary 26" data-price="2.00" data-quantity="1" data-image="images/of26.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of27.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Rice(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$4.00</del>$3.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="27" data-name="Rice" data-summary="summary 27" data-price="3.50" data-quantity="1" data-image="images/of27.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of28.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Oil(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$1.00</del>$0.70</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="28" data-name="Oil(500 g)" data-summary="summary 28" data-price="0.70" data-quantity="1" data-image="images/of28.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of29.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Biscuits(250 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$1.00</del>$0.70</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="29" data-name="Biscuits" data-summary="summary 29" data-price="0.70" data-quantity="1" data-image="images/of29.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of30.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Nuts(1 kg)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.00</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="30" data-name="Nuts" data-summary="summary 30" data-price="1.00" data-quantity="1" data-image="images/of30.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of31.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Rice(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$4.00</del>$3.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="31" data-name="Rice" data-summary="summary 31" data-price="3.50" data-quantity="1" data-image="images/of31.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of32.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Noodles(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="32" data-name="Noodles" data-summary="summary 32" data-price="1.50" data-quantity="1" data-image="images/of32.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of33.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
								<h3>Tea(250 g)</h3>
									
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$1.00</del>$0.70</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="33" data-name="Seafood" data-summary="summary 33" data-price="0.70" data-quantity="1" data-image="images/of33.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of34.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
								<h3>Seafood(1 kg)</h3>
									
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.00</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="34" data-name="Oats Idli" data-summary="summary 34" data-price="1.00" data-quantity="1" data-image="images/of34.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/of35.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Oats Idli(500 g)</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$4.00</del>$3.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="35" data-name="product 35" data-summary="summary 35" data-price="3.50" data-quantity="1" data-image="images/of35.png">Add to Cart</button>
										</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				
</body>
</html>