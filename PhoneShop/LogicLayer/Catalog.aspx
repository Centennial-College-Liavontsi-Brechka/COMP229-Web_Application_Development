<%@ Page Language="C#" MasterPageFile="~/PhoneShop.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" Title="PhoneShop - The Product Catalog" %>

<%@ Register Src="~/UserControls/ProductList.ascx" TagPrefix="uc1" TagName="ProductList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle" runat="server" />
    <br />
    <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription" runat="server" />
    <br />
    <uc1:ProductList runat="server" ID="ProductList" />
</asp:Content>

