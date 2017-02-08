<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneShop.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<%@ Register Src="~/UserControls/ProductRecommendations.ascx" TagPrefix="uc1" TagName="ProductRecommendations" %>
<%@ Register Src="~/UserControls/FeedbackList.ascx" TagPrefix="uc2" TagName="FeedbackList" %>
<%@ Register Src="~/UserControls/AddFeedback.ascx" TagPrefix="uc3" TagName="AddFeedback" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label CssClass="ProductTitle" ID="titleLabel" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:Image ID="productImage" runat="server" />
    <br />
    <asp:Label CssClass="ProductDescription" ID="descriptionLabel" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <span class="ProductDescription">Price:</span>&nbsp;
  <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label" />
    <br />
    <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CssClass="SmallButtonText" OnClick="addToCartButton_Click" />
    <asp:Button ID="continueShoppingButton" CssClass="SmallButtonText" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
    <asp:Table ID="Table1" runat="server" CssClass="ProductInfoTable" CellSpacing="10">
        <asp:TableRow>
            <asp:TableCell>
                <uc1:ProductRecommendations runat="server" ID="ProductRecommendations" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <uc2:FeedbackList runat="server" ID="FeedbackList" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="RecommendationBlock" BorderWidth="1">
                <uc3:AddFeedback runat="server" ID="AddFeedback" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

