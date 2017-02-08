<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddFeedback.ascx.cs" Inherits="UserControls_AddFeedback" %>
<asp:Label ID="Label1" runat="server" Text="Leave a feedback!" CssClass="RecommendationHead"></asp:Label>
<br />
<asp:Table ID="Table1" runat="server" CssClass="AddFeedbackTable">
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Rating1" runat="server" Text="Overall quality: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="slctRating1" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Rating2" runat="server" Text="Shipping time: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="slctRating2" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Rating3" runat="server" Text="Quality/Price ratio: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="slctRating3" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Comments" runat="server" Text="Comments: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="txtComments" TextMode="MultiLine" Columns="40" Rows="5" runat="server"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell ColumnSpan="2">
            <asp:Button ID="btnAddFeedback" runat="server" Text="Add Feedback" OnClick="addFeedback"/>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>

