<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="RoyalRoute.User.Packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <h1 align="center" style="background-color:#154fdb;color:white"><b>OUR PACKAGES</b></h1>
    <br />
     <div class="col-md-4"></div>
    <div class="col-md-6">
    &nbsp;<%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="MOST POPULAR">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="border: medium double #00FFFF; padding: 10px; height: 527px; text-transform: uppercase; background-color: #9E8AFD;">
                            <asp:ImageMap ID="ImgMapPic" runat="server" Height="316px" Width="618px">
                            </asp:ImageMap>
                            <div style="height: 108px; font-family: 'Buxton Sketch'; background-color: #FFFFFF;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="font-family: fantasy; background-color: #9E8AFD;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPlace" runat="server" BackColor="#9E8AFD" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label></div>
                                <br />
                                <asp:Label ID="lbldays" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="DAYS   /"></asp:Label>
                                <asp:Label ID="lblnights" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="NIGHTS"></asp:Label>
                                <br />
                                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="RS"></asp:Label>
                                &nbsp;
                                <asp:Label ID="lblRate" runat="server" BackColor="Red" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" ForeColor="White"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnBook" runat="server" BackColor="#FF0066" BorderColor="#FFFF66" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="44px" OnClick="btnBook_Click" Text="BOOK NOW" Width="108px" />
                                <br />
                            </div>
                        </div>
                        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>--%>




        <asp:HiddenField ID="Hiddenpkg" runat="server" Value="-1" />


        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" selectcommand="" CellPadding="35" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                   <table cellpadding="2" cellspacing="0" border="1" style="width: 300px; height: 100px; margin-left: 0px;  
                border: dashed 2px #04AFEF; background-color: #FFFFFF">  
                    <tr>  
                        <td style="border: 20px double #FFFFFF; padding: 10px; margin: 20px; font-family: 'Buxton Sketch'; background-color: #C2A7FC;">  
                place:
                <asp:ImageMap ID="imageLabel" runat="server"  ImageUrl='<%# Eval("image") %>' Height="300px" Width="300px" />
                <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' Font-Bold="True" Font-Size="XX-Large" ForeColor="#9C47DF" />
                <br />
                            &nbsp;<asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>' Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                            days and&nbsp;
                            <asp:Label ID="nightsLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("nights") %>' />
                            &nbsp;nights<br />&nbsp;rate:
                            <asp:Label ID="rateLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("rate") %>' />
                            <br />
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnBook" runat="server" BackColor="#9C47DF" Font-Bold="True" Font-Size="X-Large" ForeColor="White" OnClick="btnBook_Click1" Text="BOOK NOW" Width="302px" />
<br />
                               </td>  
                    </tr>  
                </table>  
            </ItemTemplate>
           
        </asp:DataList>



       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoyalRouteConnectionString %>" SelectCommand="SELECT [image], [place], [rate], [days], [nights] FROM [pakages]"></asp:SqlDataSource>--%>



        </div>
</asp:Content>
