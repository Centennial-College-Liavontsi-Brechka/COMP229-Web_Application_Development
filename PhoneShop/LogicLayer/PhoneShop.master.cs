using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhoneShop : System.Web.UI.MasterPage
{
    private static string[] catalogPages = { "~/Default.aspx", "~/Catalog.aspx", "~/Search.aspx" };

    protected void Page_Load(object sender, EventArgs e)
    {
        // Don't perform any actions on postback events
        if (!IsPostBack)
        {
            /* Save the latest visited catalog page into the session
              to support "Continue Shopping" functionality */
            // Get the currently loaded page
            string currentLocation = Request.AppRelativeCurrentExecutionFilePath;
            // If the page is one of those we want the visitor to "continue shopping"
            // to, then save it to visitor's Session
            for (int i = 0; i < catalogPages.GetLength(0); i++)
                if (String.Compare(catalogPages[i], currentLocation, true) == 0)
                {
                    // save the current location
                    Session["LastVisitedCatalogPage"] = Request.Url.ToString();
                    // stop the for loop from continuing
                    break;
                }
        }
    }
}
