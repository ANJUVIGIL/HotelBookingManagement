<%@ Page Title="" Language="C#" MasterPageFile="~/Public/PublicMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RoyalRoute.Public.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- banner -->
	<div class="banner-agile">
		<ul class="slider">
			<li class="active">
				<div class="banner-w3ls-1">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-2">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-3">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-4">
				</div>
			</li>
			<li class="prev">
				<div class="banner-w3ls-5">
				</div>
			</li>
		</ul>
		<ul class="pager">
			<li data-index="0" class="active"></li>
			<li data-index="1"></li>
			<li data-index="2"></li>
			<li data-index="3"></li>
			<li data-index="4"></li>
		</ul>
		<div class="banner-text-posi-w3ls">
			<div class="banner-text-whtree">
				<h3 class="text-capitalize text-white text-center p-4">Experience The Best Trip Ever
				</h3>
				<p class="px-4 py-3 text-center text-white mx-auto">Lorem Ipsum is simply into dummy text of the printing and typesetting of industry. Lorem Ipsum has been the industry’s.</p>
			</div>
		</div>
	</div>
	<!-- //banner -->
    <section class="services py-5">
		<div class="container py-md-4 mt-md-3"> 
			<div class="wthree_head_section">
				<h2 class="w3l_header">Our <span>Services</span></h2>
			</div>
			<div class="row inner_w3l_agile_grids-1 mt-md-5 pt-4">
				<div class="col-md-4 w3layouts_news_left_grid1">
					<div class="new_top text-center">
						<i class="fas fa-bed"></i>				
						<h3 class="mb-3 mt-3">HOTEL BOOKING</h3>
						<p>Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est. Cras mi ipsum</p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_news_left_grid3">
					<div class="new_top text-center">
						<i class="fas fa-star"></i>
						<h3 class="mb-3 mt-3">AMAZING TOUR</h3>
						<p>Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est. Cras mi ipsum</p>
					</div>
				</div>
			</div>
				
			</div>
			
				
	</div>   
</section>
<!-- //services -->
	<!-- choose -->
	<section class="choose py-5">
		<div class="container py-md-4 mt-md-3"> 
			<div class="wthree_head_section">
				<h3 class="w3l_header text-white">Why <span class="text-white">Choose Us</span></h3>
			</div>
			<div class="row inner_w3l_agile_grids-1 mt-md-5 pt-4">
				<div class="col-md-4 w3layouts_choose_left_grid1">
					<div class="choose_top text-center">
						<i class="fas fa-star"></i>		
						<h3 class="mb-3 mt-3">HANDPICKED HOTELS</h3>
						<p>Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est. Cras mi ipsum</p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_choose_left_grid2">
					<div class="choose_top text-center">
						<i class="fas fa-globe"></i>
						<h3 class="mb-3 mt-3">WORLD CLASS SERVICE</h3>
						<p>Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est. Cras mi ipsum</p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_choose_left_grid3">
					<div class="choose_top text-center">
						<i class="fas fa-thumbs-up"></i>
						<h3 class="mb-3 mt-3">BEST PRICE GUARANTEE</h3>
						<p>Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est. Cras mi ipsum</p>
					</div>
				</div>
			</div>
	</div>   
</section>
<!-- //choose -->
<!-- packages -->
	<section class="packages py-5">
		<div class="container py-md-4 mt-md-3"> 
			<div class="wthree_head_section">
				<h3 class="w3l_header">Special <span>Package</span></h3>
			</div>
			<div class="row inner_w3l_agile_grids-1 mt-md-5 pt-4">
				<div class="col-md-6 agile-info_packages_left1">
					<img src="PublicAssets/images/g1.jpg" class="img-fluid" alt="Card image cap">			
					<div class="row packages_top">
						<div class="col-sm-6">
							<h3 class="mb-2">GERMANY</h3>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
						</div>
						<div class="col-sm-6">
							<h4 class="mb-2">Starting from $536</h4>
							<p>5 days 4 nights</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 agile-info_packages_left2">
					<img src="PublicAssets/images/g2.jpg" class="img-fluid" alt="Card image cap">
					<div class="row packages_top">
						<div class="col-sm-6">
							<h3 class="mb-2">FRANCE</h3>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
						</div>
						<div class="col-sm-6">
							<h4 class="mb-2">Starting from $536</h4>
							<p>5 days 4 nights</p>
						</div>
					</div>
				</div>
			</div><div class="row inner_w3l_agile_grids-1 mt-md-5 pt-4">
				<div class="col-md-6 agile-info_packages_left1">
					<img src="PublicAssets/images/g3.jpg" class="img-fluid" alt="Card image cap">			
					<div class="row packages_top">
						<div class="col-sm-6">
							<h3 class="mb-2">JAPAN</h3>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
						</div>
						<div class="col-sm-6">
							<h4 class="mb-2">Starting from $536</h4>
							<p>5 days 4 nights</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 agile-info_packages_left2">
					<img src="PublicAssets/images/g4.jpg" class="img-fluid" alt="Card image cap">
					<div class="row packages_top">
						<div class="col-sm-6">
							<h3 class="mb-2">SINGAPORE</h3>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							
						</div>
						<div class="col-sm-6">
							<h4 class="mb-2">Starting from $536</h4>
							<p>5 days 4 nights</p>
						</div>
					</div>
				</div>
			</div>
	</div>   
</section>
<!-- //packages -->
<!-- testimonials -->
<section class="testimonials py-5">
		<div class="container py-md-4 mt-md-3"> 
			<div class="wthree_head_section">
				<h3 class="w3l_header text-white">What Our <span class="text-white">Client Say</span></h3>
			</div>
		<div class="agile_testimonials_grids mt-md-5 pt-4">
			<ul id="flexiselDemo1">	
				<li>
					<div class="agile_testimonials_grid">
						<div class="agile_testimonials_grid1">
							<div class="w3_agile_testimonials_grid_right test-tooltip1">
								 <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
								malesuada fames ac turpis egestas.Sed lorem enim, .</p>
							</div>
							<div class="w3_agile_testimonials_grid">
								<div class="w3_agile_testimonials_grid_left">
									<img src="PublicAssets/images/t2.jpg" alt=" " class="img-responsive" />
								</div>
								<div class="tex-t">
									<h4>Steve Smith</h4>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="agile_testimonials_grid">
						<div class="agile_testimonials_grid1">
							<div class="w3_agile_testimonials_grid_right test-tooltip1">
								 <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
								malesuada fames ac turpis egestas.Sed lorem enim, .</p>
							</div>
							<div class="w3_agile_testimonials_grid">
								<div class="w3_agile_testimonials_grid_left">
									<img src="PublicAssets/images/t4.jpg" alt=" " class="img-fluid" />
								</div>
								<div class="tex-t">
									<h4>Shane Watson</h4>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="agile_testimonials_grid">
						<div class="agile_testimonials_grid1">
							<div class="w3_agile_testimonials_grid_right test-tooltip1">
								 <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et 
								malesuada fames ac turpis egestas.Sed lorem enim, .</p>
							</div>
							<div class="w3_agile_testimonials_grid">
								<div class="w3_agile_testimonials_grid_left">
									<img src="PublicAssets/images/t1.jpg" alt=" " class="img-fluid" />
								</div>
								<div class="tex-t">
									<h4>Shane Rosey</h4>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</li>	
			</ul>
		</div>
	</div>
</section>
<!-- //testimonials -->
<!-- news -->
	<section class="wthree-row w3-about py-5">
		<div class="container py-md-4 mt-md-3"> 
			<div class="wthree_head_section">
				<h3 class="w3l_header">Related <span>Tours</span></h3>
			</div>
			<div class="card-deck mt-md-5 pt-4">
				  <div class="card">
					<img src="PublicAssets/images/g7.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">AUSTRALIA</h5>
					  <p class="card-text mb-3 ">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal">View Details</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g6.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">NEWYORK</h5>
					   <p class="card-text mb-3 ">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal">View Details</a>
					</div>
				  </div>
				  <div class="card">
					<img src="PublicAssets/images/g8.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">PARIS</h5>
					   <p class="card-text mb-3">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal">View Details</a>
					</div>
				  </div>
				</div>
            </div>
        </section>
</asp:Content>
