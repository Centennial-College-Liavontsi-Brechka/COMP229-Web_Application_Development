<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FeedbackList.ascx.cs" Inherits="UserControls_FeedbackList" %>
<div id="feedBlock" runat="server">
    <asp:Table ID="Table2" runat="server" CellPadding="0" CellSpacing="5" CssClass="RecommendationHead" Visible="false">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="4">
                <asp:Label ID="FeedbackHeader" runat="server" Text="Customers' feedbacks about this product: "></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell Width="100px">Overall quality</asp:TableCell>
            <asp:TableCell Width="100px">Shipping time</asp:TableCell>
            <asp:TableCell Width="100px">Quality/Price ratio</asp:TableCell>
            <asp:TableCell Width="527px">Comments</asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:DataList ID="FeedbackList" runat="server" Width="100%">
        <ItemTemplate>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CssClass="RecommendationText">
                <asp:TableRow>
                    <asp:TableCell Width="100px">
                        <asp:Label ID="lblRating1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell Width="100px">
                        <asp:Label ID="lblRating2" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell Width="100px">
                        <asp:Label ID="lblRating3" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell Width="527px">
                    <%# Eval("Comments") %>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ItemTemplate>
    </asp:DataList>
</div>
