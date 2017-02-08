<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoriesList.ascx.cs" Inherits="UserControls_CategoriesList" %>
<asp:DataList ID="list" runat="server" RepeatDirection="Horizontal" CssClass="CategoryList">
    <ItemTemplate>
        <asp:HyperLink
            ID="HyperLink1"
            runat="server"
            NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Request.QueryString["DepartmentID"] + "&CategoryID=" + Eval("CategoryID")  %>'
            Text='<%# Eval("Name") %>'
            ToolTip='<%# Eval("Description") %>'
            CssClass='<%# Eval("CategoryID").ToString() == Request.QueryString["CategoryID"] ? "CategorySelected" : "CategoryUnselected" %>'
            />
    </ItemTemplate>
</asp:DataList>