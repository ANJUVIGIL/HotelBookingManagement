<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="RoyalRoute.User.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Hotel Booking Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script src="bknAssets/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="bknAssets/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://localhost:41441/fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
     <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="main">
            <br />
		<h1 class="w3layouts_head">BOOK YOUR TRIP</h1>
            <asp:HiddenField ID="HiddenPkg" runat="server" Value="-1" />
             <asp:HiddenField ID="HiddenHotel" runat="server" Value="-1" />
		<div class="w3layouts_main_grid">
			<form action="#" method="post" class="w3_form_post">
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
						<h5>From *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To*</h5>
						<div class="nam">
                            <asp:TextBox ID="txtPlace" runat="server"  placeholder="from" ></asp:TextBox>
                            <%--<!-- Calendar -->
			<link rel="stylesheet" href="bknAssets/css/jquery-ui.css" />
			<script src="bknAssets/js/jquery-ui.js" type="text/javascript"></script>
			  <script type="text/javascript">
			      $(function () {
			          $("#datepicker,#datepicker1").datepicker();
			      });
			  </script>
		<!-- //Calendar -->--%>
						</div>
                       
						<div class="nam1">
                            <asp:TextBox ID="txtDestination" runat="server"  placeholder="destination" readonly="true"></asp:TextBox>
                            
						</div>
						<div class="clear"></div>
					</div>
				</div>
                <div class="agileits_w3layouts_main_grid w3ls_main_grid">
					<div class="agileinfo_grid">
					<h5>Date :</h5>
						
						<div class="agileits_w3layouts_main_gridl">
							<asp:TextBox  runat="server" class="date" id="txtDatePicker" name="Text" value="mm/dd/yyyy" required="" readonly="true"></asp:TextBox>
						</div>
                        <asp:Calendar ID="Calendar1"  runat="server" BorderColor="#333333" ForeColor="White" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                       
						<div class="clear"> </div>
					</div>
				</div>
                <%--<!-- Calendar -->
			<link rel="stylesheet" href="bknAssets/css/jquery-ui.css" />
			<script src="bknAssets/js/jquery-ui.js" type="text/javascript"></script>
			  <script type="text/javascript">
			      $(function () {
			          $("#datepicker,#datepicker1").datepicker();
			      });
			  </script>
		<!-- //Calendar -->--%>
                		<div class="agileinfo_main_grid">
					<div class="agileits_w3layouts_grid">
						<h5>Number of people *</h5>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="77px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>


					</div>
				</div>
                <div class="w3_main_grid">
					 
                    <div class="agileits_w3layouts_main_gridl">
							<asp:TextBox  runat="server" id="txtHotel" ReadOnly="true" Width="351px"></asp:TextBox>
						</div>

					    <asp:Button ID="btnHotel" runat="server" BackColor="#339966" Font-Size="Large" ForeColor="Black" Text="CHOOSE HOTEL"  style="background-color: #008080; font-family: 'Buxton Sketch'; font-size: large" Height="45px" OnClick="btnHotel_Click" Width="151px" />
					   
					<div class="clear"> </div>
				</div>
                <br /><br />
                <div class="agileits_main_grid w3_agileits_main_grid">
					<div class="wthree_grid">

						<h5>Room Type</h5>
                         <asp:DropDownList ID="DropDownList2" runat="server" Width="158px" Height="57px">
                            <asp:ListItem>none</asp:ListItem>
                            <asp:ListItem>Single Room</asp:ListItem>
                            <asp:ListItem>Double Room</asp:ListItem>
                            <asp:ListItem>Suit Room</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>

						
					</div>
				</div>
				
				
				
		
				
				
				
				<div class="w3_main_grid">
					
					<div class="w3_main_grid_right">


                        <asp:Button ID="btnBook" runat="server" Text="BOOK NOW..." OnClick="btnBook_Click"   />
						  
					</div>

					<div class="clear"> </div>

				</div>

                <br />
                <br />

                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>



			    <br />
                <br />



			</form>
		</div>
		<%--<!-- Calendar -->
			<link rel="stylesheet" href="bknAssets/css/jquery-ui.css" />
			<script src="bknAssets/js/jquery-ui.js" type="text/javascript"></script>
			  <script type="text/javascript">
			      $(function () {
			          $("#datepicker,#datepicker1").datepicker();
			      });
			  </script>
		<!-- //Calendar -->--%>
		
		    <script src="bknAssets/js/jquery-2.1.3.min.js"></script>
            <script src="bknAssets/js/jquery-ui.js"></script>
            <script type="text/javascript">
		    //$(function () {
		    //    $('#txtDatePicker').datepicker(
            //    {
            //        dateFormat: 'dd/mm/yy',
            //        changeMonth: true,
            //        changeYear: true,
            //        yearRange: '1950:2100'
            //    });
		    //})
             

</script>
           
            
              
	</div>
</asp:Content>
