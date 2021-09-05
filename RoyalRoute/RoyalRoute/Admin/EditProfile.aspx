<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="RoyalRoute.Admin.EditProfile" %>
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
			<div class="card" style="    height: 806px;
    width: 823px;">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">PROFILE</h4>
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

                        <div style="margin-left:20px">

                        <asp:ImageMap ID="imgMapProfile" runat="server" Height="150px" Width="150px" Style="border-radius:100px" >
                            </asp:ImageMap>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:FileUpload ID="flupImg" runat="server" />
                        <br />
                        <br />


                        

                     ADMIN NAME :<asp:TextBox ID="txtName" runat="server" Height="43px" Width="517px"  style="    margin-left: 59px;"></asp:TextBox><br /><br />
                        DISTRICT  :<asp:TextBox ID="txtDistrict" runat="server" Height="43px" Width="517px"  style="margin-left: 90px;" ></asp:TextBox><br /><br />
                        EMAIL     : <asp:TextBox ID="txtEmail" runat="server" Height="43px" Width="517px"  style="margin-left: 102px;" ></asp:TextBox><br /><br />
                        PHONE :<asp:TextBox ID="txtPhone" runat="server" Height="43px" Width="517px"  style="margin-left: 97px;" ></asp:TextBox><br /><br />
                     PASSWORD   :<asp:TextBox ID="txtPass" runat="server" Height="43px" Width="517px"   style="margin-left: 68px;" ></asp:TextBox><br /><br />




                 





                        
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Green"></asp:Label>




                 





                        
					    <br />
                        <br />
                        <div style="font-family: 'Mongolian Baiti'; font-size: large;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Height="53px" Text="UPDATE" Width="538px" OnClick="btnEdit_Click" BackColor="#A400FD" Font-Size="X-Large" />


                            <br />
                            <br />
                            <br />
                            <br />


                        </div>

                 </div>





                        
					</div>
				</div>
			</div>
		</div><%--</div>--%></section></div></div> </div>

    </div>




</asp:Content>
