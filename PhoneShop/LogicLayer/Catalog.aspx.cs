using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateControls();
        }
    }

    private void PopulateControls()
    {
        // Retrieve DepartmentID from the query string
        string departmentId = Request.QueryString["DepartmentID"];
        // Retrieve CategoryID from the query string
        string categoryId = Request.QueryString["CategoryID"];
        // If browsing a category...
        if (categoryId != null)
        {
            // Retrieve category details and display them
            CategoryDetails cd = CatalogAccess.GetCategoryDetails(categoryId);
            catalogTitleLabel.Text = cd.Name;
            catalogDescriptionLabel.Text = cd.Description;
            // Set the title of the page
            this.Title = BalloonShopConfiguration.SiteName +
                         " : Category : " + cd.Name;
        }
        // If browsing a department...
        else if (departmentId != null)
        {
            // Retrieve department details and display them
            DepartmentDetails dd = CatalogAccess.GetDepartmentDetails(departmentId);
            catalogTitleLabel.Text = dd.Name;
            catalogDescriptionLabel.Text = dd.Description;
            // Set the title of the page
            this.Title = BalloonShopConfiguration.SiteName +
                         " : Department : " + dd.Name;
        }
    }
}