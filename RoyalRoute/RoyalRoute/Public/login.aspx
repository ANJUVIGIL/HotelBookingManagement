<%@ Page Title="" Language="C#" MasterPageFile="~/Public/PublicMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RoyalRoute.Public.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="PublicAssets/loginAssets/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="PublicAssets/loginAssets/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link href="http://localhost:41441/fonts.googleapis.com/css?family=Philosopher:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->
        <script type="text/javascript" src="PublicAssets/loginAssets/js/jquery-2.1.4.min.js"></script>

    <script src="PublicAssets/loginAssets/js/jquery.vide.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
<div data-vide-bg="PublicAssets/loginAssets/video/social2">
       
	<div class="center-container">
		
		<!--main-->
        <br /><br /><br /><br />  <br /><br /><br /><br />
		<div class="main-content-agile">
			<div class="wthree-pro">
				<h2>Login Now</h2>
                
			</div>
			<div class="sub-main-w3">	
				
              
					<asp:TextBox   runat="server" placeholder="E-mail" name="mail" type="email" required="" id="txtEmail"></asp:TextBox>
					
					<asp:TextBox  runat="server"  placeholder="Password" name="Password" type="password" required="" id="txtPassword"></asp:TextBox>
					<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
					<div class="rem-w3">
						<span class="check-w3"><input type="checkbox" />Remember Me</span>
						<a href="#">create account</a>
						<div class="clear"></div>
					</div>
					<div class="navbar-right social-icons"> 
							<ul>
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								<li><a href="#" class="fa fa-pinterest icon-border rss"> </a></li>
							</ul>  
						</div>
                <asp:Button ID="btnLog" runat="server" Text="LOGIN" OnClick="btnLog_Click" />
				
			        <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
				
			</div>
		</div>
		<!--//main-->
   
        <script src="PublicAssets/loginAssets/js/jquery.vide.min.js"></script>t>
    </div>
    </div>

<%--    <video src="PublicAssets/loginAssets/video/social2.mp4" controls="controls" />--%>
 </div>

</asp:Content>
