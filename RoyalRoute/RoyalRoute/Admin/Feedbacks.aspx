<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="RoyalRoute.Admin.Feedbacks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 align="center" style="background-color:#154fdb;color:white"><b>FEEDBACKS</b></h1>
    
      <div class="col-md-4"></div>
    <div class="col-md-6">
        

        <div>
                          <div class="app-content content container-fluid" style="margin-left:10px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
    <%--<div class="col-md-4">--%>
			<div class="card" style="height: 696px; width:714px; top: 3px; left: 38px;">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">FEEDBACKS</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				<%--</div>--%>
				<div class="card-body collapse in">
					<div class="card-block">



                        

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="591px" DataKeyNames="id"  OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="true"
>
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" />
                                <asp:BoundField DataField="email" HeaderText="Email" />
                                <asp:BoundField DataField="phone" HeaderText="Phone" />
                                <asp:BoundField DataField="subject" HeaderText="Subject" />
                                <asp:BoundField DataField="msg" HeaderText="Message" />
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgbtnDelete" runat="server" Height="50px" ImageUrl="~/Admin/img/delete.jpg" OnClick="imgbtnDelete_Click" Width="50px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                             <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
                        </asp:GridView>



                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HiddenField ID="HiddenBooking" runat="server" Value="-1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Green"></asp:Label>



                        
					   







                        
					</div>
				</div>
			</div>
		</div></div></section></div></div> </div>


</asp:Content>
