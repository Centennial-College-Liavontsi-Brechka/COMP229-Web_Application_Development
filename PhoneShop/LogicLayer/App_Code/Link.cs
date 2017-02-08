using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Link factory class
/// </summary>
public class Link
{
    public Link()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string ToSearch(string searchString, bool allWords, string page)
    {
        if (page == "1")
            return BuildAbsolute(
            String.Format("/Search.aspx?Search={0}&AllWords={1}",
            searchString, allWords.ToString()));
        else
            return BuildAbsolute(
            String.Format("/Search.aspx?Search={0}&AllWords={1}&Page={2}",
            searchString, allWords.ToString(), page));
    }

    // Builds an absolute URL
    private static string BuildAbsolute(string relativeUri)
    {
        // get current uri
        Uri uri = HttpContext.Current.Request.Url;
        // build absolute path
        string app = HttpContext.Current.Request.ApplicationPath;
        if (!app.EndsWith("/")) app += "/";
        relativeUri = relativeUri.TrimStart('/');
        // return the absolute path
        return HttpUtility.UrlPathEncode(
        String.Format("http://{0}:{1}{2}{3}",
        uri.Host, uri.Port, app, relativeUri));
    }
}