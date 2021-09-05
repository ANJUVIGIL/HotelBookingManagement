<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddPakage.aspx.cs" Inherits="RoyalRoute.Admin.AddPakage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
     <h1 align="center" style="background-color:#CA6DFD; color:white; font-family: Gungsuh;"><b>ADD PACKAGES</b></h1>
        </div>
      <div class="col-md-4"></div>
    <div class="col-md-6">
       

        <div>
                          <div class="app-content content container-fluid" style="margin-left:10px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
    <div class="col-md-4">
			<div class="card" style="height: 696px; width:610px">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">PACKAGE Info</h4>
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
<div style="margin-left:15px"
  
            <form>
                <div>
                    Place:<asp:TextBox ID="txtPlace" runat="server" Height="36px" Width="305px" ></asp:TextBox>&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPlace" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br /><br />
                    Rate :<asp:TextBox ID="txtRate" runat="server"  Height="36px" Width="305px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br /><br />
                    days :<asp:TextBox ID="txtdays" runat="server"  Height="36px" Width="305px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdays" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br /><br />
                    nights:<asp:TextBox ID="txtNights" runat="server"  Height="36px" Width="305px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNights" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br /><br />
                    image:<asp:FileUpload ID="flupImg" runat="server" />&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="flupImg" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />

                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMsg" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAdd" runat="server" Text="ADD PACKAGE" OnClick="btnAdd_Click"  BackColor="#A400FD" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Height="40px" ValidationGroup="a" Width="175px" /><br />

                    <asp:HiddenField ID="HiddenUser" runat="server" Value="-1" /><br />
                    <br />




                </div>
            </form>

    </div>
          

					</div>
				</div>
			</div>
		</div></div></section></div></div> </div>


             <div class="app-content content container-fluid" style="margin-left:10px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="Section1">
	<div class="row ">
        <div class="col-md-4"></div>
    <div class="col-md-8">
			<div class="card" style="height: 696px; width:610px">
				<div class="card-header">
					<h4 class="card-title" id="H1">AVAILABLE PACKAGES</h4>
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
<div style="margin-left:15px">

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" Width="500px"  style="margin-left:0px" Height="291px"  OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="true">
                        <Columns>
                            <asp:BoundField DataField="place" HeaderText="place" />
                            <asp:BoundField DataField="rate" HeaderText="Rate" />
                            <asp:BoundField DataField="days" HeaderText="Days" />
                            <asp:BoundField DataField="nights" HeaderText="Nights" />
                            <asp:ImageField DataImageUrlField="image" HeaderText="Image"  ControlStyle-Width="50"  ControlStyle-Height="50" >
                                <ControlStyle Height="50px" Width="50px"></ControlStyle>
                            </asp:ImageField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgBtnDelete" runat="server" Height="50px" ImageUrl="~/Admin/img/delete.jpg" Width="50px" OnClick="imgBtnDelete_Click" style="margin-left:0px"  />
                                </ItemTemplate>
                                <ItemStyle Height="60px" Width="60px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgBtnEdit" runat="server" Height="50px" ImageUrl="~/Admin/img/edit.jpg" OnClick="imgBtnEdit_Click" Width="50px" style="margin-left:0px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                  <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
                    </asp:GridView>
                        </div>

                        	</div>
				</div>
			</div>
		</div></div></section></div></div> </div>

        </div>


        </div>
    <div style="margin-left: 290px; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; margin-right: 222px; width: 540px;">
               

    </div>

</asp:Content>
