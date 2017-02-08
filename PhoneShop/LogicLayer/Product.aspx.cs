using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
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
        string productId = Request.QueryString["ProductID"];
        ProductDetails pd;
        pd = CatalogAccess.GetProductDetails(productId);
        titleLabel.Text = pd.Name;
        descriptionLabel.Text = pd.Description;
        priceLabel.Text = String.Format("{0:c}", pd.Price);
        productImage.ImageUrl = "ProductImages/" + pd.Image2FileName;
        this.Title = BalloonShopConfiguration.SiteName +
                     " : Product : " + pd.Name;
    }

    protected void addToCartButton_Click(object sender, EventArgs e)
    {
        string productId = Request.QueryString["ProductID"];
        ShoppingCartAccess.AddItem(productId);
    }

    protected void continueShoppingButton_Click(object sender, EventArgs e)
    {
        object page;
        if ((page = Session["LastVisitedCatalogPage"]) != null)
            Response.Redirect(page.ToString());
        else
            Response.Redirect(Request.ApplicationPath);
    }
}