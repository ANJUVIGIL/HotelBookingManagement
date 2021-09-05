<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="requests.aspx.cs" Inherits="RoyalRoute.Admin.requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-4"></div>
      <div class="col-md-6">


    <div class="app-content content container-fluid" style="margin-left:10px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
   <%-- <div class="col-md-4">--%>
			<div class="card" style="    height: 786px;
    width: 823px;">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">NEW USER REQUESTS </h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					<%--</div>--%>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">




         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="584px" datakeynames="id" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="district" HeaderText="District" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="phone" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Profile pic" ControlStyle-Width="50"  ControlStyle-Height="50">
<ControlStyle Height="50px" Width="50px"></ControlStyle>
            </asp:ImageField>
            <asp:TemplateField HeaderText="delete">
                <ItemTemplate>
                    <asp:ImageButton ID="imgBtn" runat="server" Height="50px" ImageUrl="~/Admin/img/delete.jpg" OnClick="imgBtn_Click1" Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="approve">
                <ItemTemplate>
                    <asp:ImageButton ID="imgBtnApr" runat="server" Height="40px" ImageUrl="~/Admin/img/aprove.png" OnClick="imgBtnApr_Click" Width="40px" />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
        <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
    </asp:GridView>

        <asp:HiddenField ID="HiddenUser" runat="server" Value="-1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>

&nbsp;<br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
        </div>


                    
         
					</div>
				</div>
			</div>
		</div></section></div></div></div> </div>




</asp:Content>
