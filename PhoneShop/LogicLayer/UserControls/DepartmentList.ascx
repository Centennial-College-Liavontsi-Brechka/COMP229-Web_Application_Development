<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentList.ascx.cs" Inherits="userControls_DepartmentList" %>
<asp:DataList ID="DepartmentList" runat="server" RepeatDirection="Horizontal" CssClass="DepartmentList">
    <ItemTemplate>
        <asp:Hyperlink
            ID="DepartmentName"
            runat="server"
            NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Eval("DepartmentID")%>'
            Text='<%# Eval("NAME") %>'
            ToolTip='<%# Eval("Description") %>'
            CssClass='<%# Eval("DepartmentID").ToString() == Request.QueryString["DepartmentID"] ? "DepartmentSelected" : "DepartmentUnselected" %>'
            />
    </ItemTemplate>
</asp:DataList>