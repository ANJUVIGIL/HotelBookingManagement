<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddHotels.aspx.cs" Inherits="RoyalRoute.Admin.AddHotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .cent {
            text-align:center;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-wrapper">     
  <div class="content-body"><!-- Basic Carousel start -->
   <section style="margin-top:4%;" >
	<div class="row">
        <div class="col-md-1"></div>
		<div class="col-md-7">
			<div class="card">
				<div class="card-header">
					<h1 class="booktitle" id="basic-layout-tooltip">PROFILE</h1>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">








    <form>
                          
                <div style="margin-left: 10px"><br />

                    HOTEL NAME :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtName" runat="server" Height="43px" Width="517px" ></asp:TextBox><br /><br />
                     PLACE :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPlace" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="txtPlace" runat="server" Height="43px" Width="517px" ></asp:TextBox><br /><br />
                    ADDRESS :<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:TextBox ID="txtAddress" runat="server" Height="43px" Width="517px" ></asp:TextBox><br /><br />
                    STAR RATTING :<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRating" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtRating" runat="server" Height="43px" Width="517px" ></asp:TextBox><br /><br />
                    IMAGE :<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="flupImg" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                    <br />
                    <asp:FileUpload ID="flupImg" runat="server" Height="43px" />
                    <br />
                    <br />
                    
                    CONTACT :<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContact" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:TextBox ID="txtContact" runat="server" Height="43px" Width="517px" ></asp:TextBox><br />
                    <br />
                                       <asp:Button ID="btnAdd" runat="server" Text="ADD HOTEL" BackColor="#8CFFFF" Font-Bold="True" Font-Size="Large" ForeColor="#3366FF" Height="40px" OnClick="btnAdd_Click" Width="146px" ValidationGroup="b"  />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>
                   

                    <br /><br />
                    <br />

                    <asp:HiddenField ID="HiddenHotel" runat="server" Value="-1" />


                   

                 
                    <br />




                </div>
            </form>
</div>
                            
					          
						
					</div>
				</div>
			</div>
		</div>

	
	</div>
	    <div class="col-md-3"></div>
	



    </div>
   








          

        
                    <br />
                    <br />
                    <br />


       



      <div class="app-content content container-fluid">
      <div class="content-wrapper">
 


        <div class="content-body"><!-- Basic form layout section start -->
<section id="Section1">
	<div class="row match-height">
    <div class="col-md-8">
			<div class="card" style="height: 943px;">
				<div class="card-header">
					<h4 class="card-title" id="H1">Project Info</h4>
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
						



                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" HeaderStyle-CssClass="header" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AllowPaging="true" >
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="HOTEL" HeaderStyle-CssClass="cent" />
                            <asp:BoundField DataField="place" HeaderText="PLACE" HeaderStyle-CssClass="cent" />
                            <asp:BoundField DataField="address" HeaderText="ADDRESS" HeaderStyle-CssClass="cent" />
                            <asp:BoundField DataField="rating" HeaderText="STAR RATING" HeaderStyle-CssClass="cent" />
                            <asp:ImageField DataImageUrlField="image" HeaderText="Image"  ControlStyle-Width="50"  ControlStyle-Height="50">
                            </asp:ImageField>
                            <asp:BoundField DataField="contact" HeaderText="CONTACT" HeaderStyle-CssClass="cent"/>
                            <asp:TemplateField HeaderText="EDIT">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgBtnEdit" runat="server" Height="50px" ImageUrl="~/Admin/img/edit.jpg"  Width="50px" OnClick="imgBtnEdit_Click" style="margin-left:0px"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DELETE">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgBtnDelete" runat="server" Height="59px" ImageUrl="~/Admin/img/delete.jpg" OnClick="imgBtnDelete_Click" Width="61px" style="margin-left:0px"  />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                            <PagerStyle HorizontalAlign="Center" ForeColor="YellowGreen" BackColor="Black"/>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" HorizontalAlign="Center" />
                    </asp:GridView>
           <br />






					</div>
				</div>
			</div>
		</div></div></section></div></div> </div>
</asp:Content>
