<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Search.ascx.cs" Inherits="userControls_search" %>
<asp:Table ID="Table1" runat="server" CellSpacing="20">
    <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="Go" runat="server" ImageUrl="~/images/searchButton.png" Height="25px" />
        </asp:TableCell>
        <asp:TableCell>
            <asp:CheckBox ID="allWordsCheckBox" runat="server" Text="Search for all words" />
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
   