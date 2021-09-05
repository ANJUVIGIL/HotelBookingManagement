<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="RoyalRoute.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
    <div class="content-wrapper" id="division" >     
  <div class="content-body"><!-- Basic Carousel start -->
   <section style="margin-top:4%;" >
	<div class="row">
        <div class="col-md-1"></div>
		<div class="col-md-7">
			<div class="card" >
				<div class="card-header">
					<h1 class="booktitle" id="basic-layout-tooltip">PROFILE</h1>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">

                        <div style="margin-left:15px" >




                        <asp:ImageMap ID="imgMapProfile" runat="server" Height="150px" Width="150px" Style="border-radius:100px" >
                            </asp:ImageMap>
                        <br />
                        <br />


                        

                     ADMIN NAME :<asp:TextBox ID="txtName" runat="server" Height="43px" Width="517px" readonly="true" style="    margin-left: 59px;"></asp:TextBox><br /><br />
                        DISTRICT  :<asp:TextBox ID="txtDistrict" runat="server" Height="43px" Width="517px" ReadOnly="True" style="margin-left: 90px;" ></asp:TextBox><br /><br />
                        EMAIL     : <asp:TextBox ID="txtEmail" runat="server" Height="43px" Width="517px" ReadOnly="True" style="margin-left: 102px;" ></asp:TextBox><br /><br />
                        PHONE :<asp:TextBox ID="txtPhone" runat="server" Height="43px" Width="517px" ReadOnly="True" style="margin-left: 97px;" ></asp:TextBox><br /><br />
                     PASSWORD   :<asp:TextBox ID="txtPass" runat="server" Height="43px" Width="517px"  ReadOnly="True" style="margin-left: 68px;" ></asp:TextBox><br /><br />



                 

</div>



               </div>
                            
					          
						
					</div>
				</div>
			</div>
		</div>
       </section>
	
	</div>
	    <div class="col-md-3"></div>
	



    </div>


</asp:Content>
