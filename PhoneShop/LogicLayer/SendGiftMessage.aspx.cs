using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            LoadControls();
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
            var radioButtonList = PlaceHolder1.FindControl("giftImg") as RadioButtonList;
            // Get orderID from session variable
            String orid = Session["orderid"].ToString();
            int orderId = Int32.Parse(orid);
            String amount = Session["amount"].ToString();
            decimal amt = decimal.Parse(amount);
            // Execute the insert command

            bool success = ShoppingCartAccess.sendMessage(orderId, giftMessage.Text, radioButtonList.SelectedValue);

            // Display status message
            if (success == true)
            {
                // Obtain the site name from the configuration settings
                string siteName = BalloonShopConfiguration.SiteName;
                // Create the PayPal redirect location
                string redirect = "";
                redirect += "https://www.paypal.com/xclick/business=phoneshop@gmail.com";
                redirect += "&item_name=" + siteName + " Order " + orderId;
                redirect += "&amount=" + String.Format("{0:0.00} ", amount);
                redirect += "&currency=USD";
                redirect += "&return=http://www." + siteName + ".com";
                redirect += "&cancel_return=http://www." + siteName + ".com";
                // Redirect to the payment page
                Response.Redirect(redirect);
            }
        
         
    }

    private void LoadControls()
    {
        var giftImage = new RadioButtonList();
        giftImage.ID = "giftImg";
        giftImage.RepeatDirection = RepeatDirection.Horizontal;

        System.IO.FileInfo file;

        var Images =
           from n in System.IO.Directory.GetFiles(Server.MapPath("GiftImages"))
           orderby n
           select n;

        foreach (var filename in Images)
        {
            file = new System.IO.FileInfo(filename);
            var tmpItem = new ListItem("<img src='" + "GiftImages/" + file.Name + "' alt='" + file.Name + "' title='" + file.Name + "' WIDTH=100 HEIGHT=100/>", file.Name);
            giftImage.Items.Add(tmpItem);
        }




        PlaceHolder1.Controls.Add(giftImage);
    }
    protected void checkoutBtn_Click(object sender, EventArgs e)
    {
        String orid = Session["orderid"].ToString();
        int orderId = Int32.Parse(orid);
        String amount = Session["amount"].ToString();
        decimal amt = decimal.Parse(amount);
        // Execute the insert command

            // Obtain the site name from the configuration settings
            string siteName = BalloonShopConfiguration.SiteName;
            // Create the PayPal redirect location
            string redirect = "";
            redirect += "https://www.paypal.com/xclick/business=phoneshop@gmail.com";
            redirect += "&item_name=" + siteName + " Order " + orderId;
            redirect += "&amount=" + String.Format("{0:0.00} ", amount);
            redirect += "&currency=USD";
            redirect += "&return=http://www." + siteName + ".com";
            redirect += "&cancel_return=http://www." + siteName + ".com";
            // Redirect to the payment page
            Response.Redirect(redirect);
      
         
    }
}