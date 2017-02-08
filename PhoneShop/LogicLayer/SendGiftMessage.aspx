<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneShop.master" AutoEventWireup="true" CodeFile="SendGiftMessage.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 270px;
        }
        .auto-style2 {
            width: 447px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="AdminPageText" cellspacing="0" align="center">
    <tr>
    <td align="right" valign="top" colspan="2" >
        <asp:Button ID="checkoutBtn" runat="server" OnClick="checkoutBtn_Click" Text="Proceed to Checkout" />
        </td>
     
  </tr>
    <tr>
    <td   align="center" colspan="2" ><b>Send the Order as a Gift:</b></td>
     
  </tr>
  
  <tr>
    <td valign="top" class="auto-style1"><b>Gift Message:</b></td>
    <td class="auto-style2">
      <asp:TextBox cssClass="AdminPageText" ID="giftMessage" Runat="server" Width="400px" Height="70px" TextMode="MultiLine"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="giftMessage" ErrorMessage="*" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" SetFocusOnError="True" ValidationGroup="G1"></asp:RequiredFieldValidator>
    </td>
  </tr>
     <tr>
    <td colspan="2">&nbsp;</td>
    
  </tr>
  <tr>
    
    <td valign="top" class="auto-style1"><b>Select Image:</b></td>
    <td class="auto-style2">
      <asp:PlaceHolder runat="server" ID="PlaceHolder1"/>
        
    </td>
  </tr>
      <tr>
    <td colspan="2">&nbsp;</td>
    
  </tr>
    <tr>
    <td colspan="2"> 
<asp:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="Send Message" ValidationGroup="G1" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    
  </tr>
   
</table>


</asp:Content>

