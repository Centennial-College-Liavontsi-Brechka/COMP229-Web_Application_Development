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

public partial class UserControls_FeedbackList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string productId = Request.QueryString["ProductID"];
        DataTable table;
        table = CatalogAccess.GetFeedbacks(productId);
        FeedbackList.DataSource = table;
        FeedbackList.DataBind();
        if (table.Rows.Count > 0)
        {
            Table2.Visible = true;
            feedBlock.Attributes["class"] = "RecommendationBlock";
        }
        else
            FeedbackHeader.Text = "";

        for (int i = 0; i < table.Rows.Count; i++)
        {
            int rating1 = Int32.Parse(table.Rows[i][0].ToString());
            int rating2 = Int32.Parse(table.Rows[i][1].ToString());
            int rating3 = Int32.Parse(table.Rows[i][2].ToString());

            Label lblRating1 = null;
            Label lblRating2 = null;
            Label lblRating3 = null;

            int rowsToSkip = i;
            foreach (DataListItem l in FeedbackList.Items)
            {
                if (rowsToSkip > 0)
                {
                        rowsToSkip--;
                }
                else
                {
                    lblRating1 = (Label)l.FindControl("lblRating1");
                    lblRating2 = (Label)l.FindControl("lblRating2");
                    lblRating3 = (Label)l.FindControl("lblRating3");
                    break;
                }
            }
            for (int j = 0; j < rating1; j++)
            {
                lblRating1.Text += "<img src=\"Images/star.png\">";
            }
            for (int j = 0; j < rating2; j++)
            {
                lblRating2.Text += "<img src=\"Images/star.png\">";
            }
            for (int j = 0; j < rating3; j++)
            {
                lblRating3.Text += "<img src=\"Images/star.png\">";
            }
        }
    }

}