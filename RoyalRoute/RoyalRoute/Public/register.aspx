<%@ Page Title="" Language="C#" MasterPageFile="~/Public/PublicMaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RoyalRoute.Public.register" %>
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
    <div class="banner-agile-1">
		
	</div>
	<!-- //banner -->
	<!-- contact -->
	<section class="contact-innpage py-5">
		<div class="container py-md-4 mt-md-3">
				<div class="wthree_head_section">
				<h2 class="w3l_header"> <span>Register</span></h2>
			</div>
                <form action="#" onsubmit="Submit()">
			<div class="row mail_grid_w3l mt-md-5 pt-4">
				
					<div class="col-md-6 contact_left_grid">
						<div class="contact-fields-w3ls">
                       


                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**" ControlToValidate="txtName" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
						        <br />
                       
                                <asp:TextBox ID="txtName" runat="server" ValidationGroup="a" placeholder="Name" Width="734px"></asp:TextBox>



						</div>
                        <div class="contact-fields-w3ls">
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ControlToValidate="txtDistrict" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            
						    <br />
                            
                            <asp:TextBox ID="txtDistrict" runat="server" ToolTip="district" ValidationGroup="a" placeholder="District" Width="734px"></asp:TextBox>
                            
						</div>
						<div class="contact-fields-w3ls">
                         
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**" ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
						    <br />
                         
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Width="734px"></asp:TextBox>
						</div>
                        <div class="contact-fields-w3ls">
                         
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**" ControlToValidate="flupimage" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
						    <br />
                         
                            <asp:FileUpload ID="flupimage" runat="server"  ></asp:FileUpload>
						</div>

						<div class="contact-fields-w3ls">
                         
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**" ControlToValidate="txtPhone" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
						    <br />
                         
                            <asp:TextBox ID="txtPhone" runat="server" ValidationGroup="a" placeholder="Phone number" Width="734px"></asp:TextBox>
						</div><br />
                        <div class="contact-fields-w3ls">
                          
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**" ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
						    <br />
                          
                            <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="a" placeholder="Password" Width="734px"></asp:TextBox>
						</div>
						<div class="contact-fields-w3ls">
                            
                            <br />
                            
                            <asp:TextBox ID="txtCPass" runat="server" ValidationGroup="a" placeholder="Confirm Password" Width="734px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password miss-match" ControlToCompare="txtPassword" ControlToValidate="txtCPass" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>

						</div>
                        <div class="contact-fields-w3ls">
                        
                    
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click2" ValidationGroup="a" Width="734px" ></asp:Button>

                                                  
						</div>
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green" Visible="False"></asp:Label>
                       
					    <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:HiddenField ID="HiddenUser" runat="server" Value="-1" />
                       
					</div>
                    <%--<div class="col-md-6 contact_left_grid rgt_gd">
						
						
					</div>--%>


				
			</div>
                <%--</form>--%>
		</div>
	</section>
	<!-- //contact -->
	

</asp:Content>
