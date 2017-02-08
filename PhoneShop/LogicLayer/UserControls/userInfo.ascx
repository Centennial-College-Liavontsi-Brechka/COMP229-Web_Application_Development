<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="userControls_userInfo" %>
<table cellspacing="0" border="0" width="200px" class="UserInfoContent">
  <tr>
    <td class="UserInfoHead">
      User Info</td>
  </tr>
  <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
      <tr>
        <td>
          <span class="UserInfoText">You are not logged in.</span>
        </td>
      </tr>
      <tr>
        <td>
          &nbsp;&raquo;
            <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="UserInfoLink" />
          &nbsp;&laquo;
        </td>
      </tr>
    </AnonymousTemplate>
    
  </asp:LoginView>
</table>

