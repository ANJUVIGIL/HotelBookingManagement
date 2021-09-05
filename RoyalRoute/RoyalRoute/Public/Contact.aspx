<%@ Page Title="" Language="C#" MasterPageFile="~/Public/PublicMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RoyalRoute.Public.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="contact-innpage py-5">
		<div class="container py-md-4 mt-md-3">
				<div class="wthree_head_section">
				<h2 class="w3l_header">Get in <span>Touch</span></h2>
			</div>
			<form action="#" method="post">
			<div class="row mail_grid_w3l mt-md-5 pt-4">
				
					<div class="col-md-6 contact_left_grid">
						<div class="contact-fields-w3ls">
							<asp:TextBox runat="server" id="txtName" name="Name" placeholder="Name" required="" Height="50px" Width="528px"></asp:TextBox>
						</div>
						<div class="contact-fields-w3ls">
							<asp:TextBox runat="server"  id="txtEmail"  type="email" name="Email" placeholder="Email" required="" Height="50px" Width="528px"></asp:TextBox>
						</div>
						<div class="contact-fields-w3ls">
							<asp:TextBox runat="server"  id="txtPhone"  type="text" name="Telephone" placeholder="Telephone" required="" Height="50px" Width="528px"></asp:TextBox>
						</div>
						<div class="contact-fields-w3ls">
							<asp:TextBox runat="server"  id="txtSubject"  type="text" name="Subject" placeholder="Subject" required="" Height="50px" Width="528px"></asp:TextBox>
						</div>
					</div>
					<div class="col-md-6 contact_left_grid rgt_gd">
						<div class="contact-fields-w3ls">
							<asp:TextBox  runat="server"  id="txtMsg"  name="Message" placeholder="Message..." required="" Height="50px" Width="528px" TextMode="MultiLine"></asp:TextBox>
						</div>
                       
						<asp:Button id="btn" runat="server" Text="SUBMIT" type="submit" value="Submit" OnClick="btn_Click" Height="50px" Width="528px"></asp:Button>
					</div>
				
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
                <asp:Label ID="lblMsg" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="Green" Visible="False"></asp:Label>

			        <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

			</div>
			</form>
		</div>
	</section>
	<!-- //contact -->


</asp:Content>
