<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="RoyalRoute.User.MyBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /> <br /><br /><br />
      <div class="col-md-5"></div>
    <div class="col-md-7">




        
             <div class="app-content content container-fluid" style="margin-left:300px">
      <div class="content-wrapper">
   
        <div class="content-body"><!-- Basic form layout section start -->
<section id="Section1">
	<div class="row match-height">
   
			<div class="card" style="height: 500px; width:800px ;background-color: #EBC7FE">
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



                        






                  
                         
                        	</div>
				</div>
			    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="Book_id"  OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="true">

                     <Columns>
                                
                                <asp:BoundField DataField="Hotel_name" HeaderText="HOTEL NAME" />
                                <asp:BoundField DataField="Package_name" HeaderText="PACKAGE Name" />
                                <asp:BoundField DataField="Source" HeaderText="SOURCE" />
                                <asp:BoundField DataField="Room_type" HeaderText="ROOM TYPE" />
                                <asp:BoundField DataField="No_Person" HeaderText="No. PERSONS" />
                               
                                <asp:BoundField DataField="Date" HeaderText="Date" />
                              
                               
                                <asp:BoundField DataField="Status" HeaderText="STATUS" />
                              
                               
                            </Columns>
                      <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
                </asp:GridView>
			




                </div>
				</div>
    </section>
			</div>
         
		</div>

	
	</div>
	    <div class="col-md-3"></div>
	


    </div>
   </div>
</div>

</asp:Content>
