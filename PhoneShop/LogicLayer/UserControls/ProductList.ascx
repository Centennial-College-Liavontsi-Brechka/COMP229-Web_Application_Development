<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductList.ascx.cs" Inherits="UserControls_ProductList" %>
<asp:Label ID="pagingLabel" runat="server" CssClass="PagingText" Visible="false" />
&nbsp;&nbsp;
<asp:HyperLink ID="previousLink" runat="server" CssClass="PagingText" Visible="false">Previous</asp:HyperLink>
&nbsp;&nbsp;
<asp:HyperLink ID="nextLink" runat="server" CssClass="PagingText" Visible="false">Next</asp:HyperLink>
<asp:DataList ID="list" runat="server" RepeatColumns="2" EnableViewState="False" OnItemCommand="list_ItemCommand">
    <ItemTemplate>
        <table cellpadding="0" align="left">
            <tr height="105">
                <td align="center" width="110">
                    <a href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                        <img width="100" src='ProductImages/<%# Eval("Thumbnail") %>' border="0" />
                    </a>
                </td>
                <td valign="top" width="250">
                    <a class="ProductName" href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                        <%# Eval("Name") %>
                    </a>
                    <span></span>
                    <br />
                    <span class="ProductDescription">
                        <%# Eval("Description") %>
                        <br />
                        <br />
                        <br />
                        Price: 
                    </span>
                    <span class="ProductPrice">
                        <%# Eval("Price", "{0:c}") %>
                    </span>
                    <br />
                    <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CommandArgument='<%# Eval("ProductID") %>' CssClass="SmallButtonText" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>