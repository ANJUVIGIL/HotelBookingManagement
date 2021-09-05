<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="HotelsView.aspx.cs" Inherits="RoyalRoute.User.HotelsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <br /><br /><br />
    <h1 align="center" style="background-color:#154fdb;color:white"><b>OUR PACKAGES</b></h1>
    <br />
     <div class="col-md-4"></div>
    <div class="col-md-6">



        <asp:HiddenField ID="HiddenHotel" runat="server" Value="-1" />
        <asp:HiddenField ID="HiddenPkg" runat="server" Value="-1" />




        <br />
        <asp:DataList ID="DataList1" runat="server" BorderColor="White" CellPadding="20" DataKeyField="id" DataKeyNames="id" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div style="font-family: 'Buxton Sketch'; padding: 15px; background-color: #8AFFFF; height: 487px;">
                    &nbsp;<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' Visible="False" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" Font-Size="X-Large" ForeColor="#8D30C1" />
                <br />
                <asp:ImageMap ID="imageLabel" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px" Width="250px" BackColor="#C2A6FF" BorderColor="#7735FF" BorderStyle="Double" BorderWidth="3px" />

                <br />
                place:
                <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                rating:
                <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
                &nbsp;<br />contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                <br />
                    <asp:Button ID="btnChoose" runat="server" BackColor="#641AFF" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="43px" OnClick="btnChoose_Click" Text="CHOOSE" Width="252px" />
<br />
                    </div>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoyalRouteConnectionString3 %>" SelectCommand="SELECT [id], [name], [place], [address], [rating], [image], [contact], [status] FROM [Hotels]"></asp:SqlDataSource>




        </div>



</asp:Content>
