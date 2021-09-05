<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="RoyalRoute.Admin.ViewBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="lblMsg" runat="server" Font-Size="Larger" ForeColor="Green"></asp:Label>

     <br />
    <br />
    <div class="col-md-4"></div>
    <div class="col-md-6">




        
             <div class="app-content content container-fluid" style="margin-left:10px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="Section1">
	<div class="row match-height">
    <div class="col-md-4">
			<div class="card" style="height: 696px; width:630px">
				<div class="card-header">
					<h4 class="card-title" id="H1">BOOKED TRIPS </h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">





   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="584px" datakeynames="id" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="true">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="district" HeaderText="District" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="phone" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Profile pic" ControlStyle-Width="50"  ControlStyle-Height="50">
            </asp:ImageField>
            <asp:TemplateField HeaderText="delete">
                <ItemTemplate>
                    <asp:ImageButton ID="imgBtn" runat="server" Height="50px" ImageUrl="~/Admin/img/delete.jpg" OnClick="imgBtn_Click1" Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
        <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
    </asp:GridView>--%>

                    


                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_id"  OnPageIndexChanging="GridView1_PageIndexChanging1" PageSize="5" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="User_name" HeaderText="USER Name" />
                                <asp:BoundField DataField="Hotel_name" HeaderText="HOTEL NAME" />
                                <asp:BoundField DataField="Package_name" HeaderText="PACKAGE Name" />
                                <asp:BoundField DataField="Source" HeaderText="SOURCE" />
                                <asp:BoundField DataField="No_Person" HeaderText="No. PERSONS" />
                               
                                <asp:BoundField DataField="Date" HeaderText="Date" />
                                <asp:TemplateField HeaderText="APPROVE">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgBtnApprove" runat="server" Height="50px" ImageUrl="~/Admin/img/aprove.png" OnClick="imgBtnApprove_Click" Width="50px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                            </Columns>
                              <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>

                        </asp:GridView>



                        
                        	</div>
				</div>
			</div>
		</div></div></section></div></div> </div>


        <asp:HiddenField ID="HiddenBooking" Value= "-1" runat="server" />
        </div>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

    <asp:HiddenField ID="HiddenUser" runat="server" Value="-1" />

        <br />
    <br />
        <br />
    <br />
    <br />

</asp:Content>
