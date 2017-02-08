<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneShop.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Welcome to Phone Shop!</h2>
    <asp:Table ID="Table1" runat="server" Width="100%">
        <asp:TableRow>
            <asp:TableCell>
                <h4>New Phones Arrived!</h4>
                <img src="images/blackberry.png" height="268" width="208" />
            </asp:TableCell>
            <asp:TableCell>
                <h4>Black Friday special deals!</h4>
                <img src="images/iphone.png" style="height: 268px; width: 185px" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
                   

</asp:Content>

