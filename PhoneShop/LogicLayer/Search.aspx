<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneShop.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register src="UserControls/ProductList.ascx" tagname="ProductList" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="titleLabel" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <uc1:ProductList ID="ProductList1" runat="server" />
</asp:Content>

