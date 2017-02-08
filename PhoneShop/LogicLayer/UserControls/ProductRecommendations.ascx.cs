using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UserControls_ProductRecommendations : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string currentLocation = Request.AppRelativeCurrentExecutionFilePath;
        if (currentLocation == "~/Product.aspx")
        {
            string productId = Request.QueryString["ProductID"];
            DataTable table;       
            table = CatalogAccess.GetRecommendations(productId);
            list.DataSource = table;
            list.DataBind();
            if (table.Rows.Count > 0)
            {
                recommendationsHeader.Text =
                  "Customers who bought this product also bought:";
                recBlock.Attributes["class"] = "RecommendationBlock";
            }
            else
                recommendationsHeader.Text = "";
        }
        else if (currentLocation == "~/ShoppingCart.aspx")
        {
            DataTable table;       
            table = ShoppingCartAccess.GetRecommendations();
            list.DataSource = table;
            list.DataBind();
            if (table.Rows.Count > 0)
                recommendationsHeader.Text =
                  "Customers who bought these products also bought:";
            else
                recommendationsHeader.Text = "";
        }
    }
}