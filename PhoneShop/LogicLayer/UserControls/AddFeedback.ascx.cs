using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_AddFeedback : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addFeedback(object sender, EventArgs e)
    {
        // Execute the insert command
        bool success = CatalogAccess.AddFeedback(slctRating1.SelectedIndex + 1,
            slctRating2.SelectedIndex + 1,
            slctRating3.SelectedIndex + 1,
            txtComments.Text,
            Int32.Parse(Request.QueryString["ProductID"]));
        Response.Redirect(Request.RawUrl);
    }
}