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
using System.Collections.Specialized;

public partial class UserControls_ProductList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateControls();

    }

    private void PopulateControls()
    {
        string departmentId = Request.QueryString["DepartmentID"];
        string categoryId = Request.QueryString["CategoryID"];
        string page = Request.QueryString["Page"];
        if (page == null) page = "1";
        string searchString = Request.QueryString["Search"];
        int howManyPages = 1;
        if (searchString != null)
        {
            string allWords = Request.QueryString["AllWords"];
            list.DataSource = CatalogAccess.Search(searchString, allWords, page, out howManyPages);
            list.DataBind();
        }
        else if (categoryId != null)
        {
            list.DataSource = CatalogAccess.GetProductsInCategory(categoryId, page, out howManyPages);
            list.DataBind();
        }
        else if (departmentId != null)
        {
            list.DataSource = CatalogAccess.GetProductsOnDepartmentPromotion(departmentId, page, out howManyPages);
            list.DataBind();
        }
        else
        {
            list.DataSource = CatalogAccess.GetProductsOnCatalogPromotion(page, out howManyPages);
            list.DataBind();
        }
        if (howManyPages > 1)
        {
            int currentPage = Int32.Parse(page);
            pagingLabel.Visible = true;
            previousLink.Visible = true;
            nextLink.Visible = true;
            pagingLabel.Text = "Page " + page + " of " + howManyPages.ToString();
            if (currentPage == 1)
                previousLink.Enabled = false;
            else
            {
                NameValueCollection query = Request.QueryString;
                string paramName, newQueryString = "?";
                for (int i = 0; i < query.Count; i++)
                    if (query.AllKeys[i] != null)
                        if ((paramName = query.AllKeys[i].ToString()).ToUpper() != "PAGE")
                            newQueryString += paramName + "=" + query[i] + "&";
                previousLink.NavigateUrl = Request.Url.AbsolutePath + newQueryString + "Page=" + (currentPage - 1).ToString();
            }
            if (currentPage == howManyPages)
                nextLink.Enabled = false;
            else
            {
                NameValueCollection query = Request.QueryString;
                string paramName, newQueryString = "?";
                for (int i = 0; i < query.Count; i++)
                    if (query.AllKeys[i] != null)
                        if ((paramName = query.AllKeys[i].ToString()).ToUpper() != "PAGE")
                            newQueryString += paramName + "=" + query[i] + "&";
                nextLink.NavigateUrl = Request.Url.AbsolutePath + newQueryString + "Page=" + (currentPage + 1).ToString();
            }
        }
    }

    protected void list_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string productId = e.CommandArgument.ToString();
        ShoppingCartAccess.AddItem(productId);
    }
}