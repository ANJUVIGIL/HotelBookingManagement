<%@ Page Title="" Language="C#" MasterPageFile="~/Public/PublicMaster.Master" AutoEventWireup="true" CodeBehind="tours.aspx.cs" Inherits="RoyalRoute.Public.tours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Venture Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="PublicAssets/css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="PublicAssets/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="PublicAssets/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->
	<!-- Web-Fonts -->
	<link href="http://localhost:41441/fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">
	<link href="http://localhost:41441/fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-Fonts -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- banner -->
	<div class="banner-agile-1">
		
	</div>
	<!-- //banner -->
	<!-- promotions -->
	<section class="wthree-row w3-about  py-5">
		<div class="container py-md-4 mt-md-3">
			<div class="wthree_head_section">
				<h2 class="w3l_header">Tours</h2>
			</div>

			<div class="card-deck mt-md-5 pt-4">
				  <div class="card">
					<img src="PublicAssets/images/g1.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Germany</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Netherlands / Belgium</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$380</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g2.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">France</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>France / Paris</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$450</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Melbourne / Sydney</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$500</a>
					</div>
				  </div>
				</div>
				<div class="card-deck mt-md-5 pt-3">
				  <div class="card">
					<img src="PublicAssets/images/g4.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Italy</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Rome / Naples</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$640</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g5.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Saudi Arabia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Iraq / Iran</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$450</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g6.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">South Africa</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Namibia / Durban</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>3 days - 2 nights</p>
						<a href="#" class="btn btn-primary">$580</a>
					</div>
				  </div>
				</div>
            </div>
        </section>
<!-- //promotions -->
	<!-- Js files -->
	<!-- JavaScript -->
	<script src="PublicAssets/js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- smooth scrolling -->
	<script src="PublicAssets/js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->
	<!-- start-smoth-scrolling -->
	<script src="PublicAssets/js/move-top.js"></script>
	<script src="PublicAssets/js/easing.js"></script>
	<script>
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top
	            }, 1000);
	        });
	    });
	</script>
	<!-- start-smoth-scrolling -->

	<!-- smooth scrolling-bottom-to-top -->
	<script>
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
	        $().UItoTop({
	            easingType: 'easeOutQuart'
	        });
	    });
	</script>
	<!-- //smooth scrolling-bottom-to-top -->
	<!-- //Js files -->
<script src="PublicAssets/js/bootstrap.js"></script>

</asp:Content>
