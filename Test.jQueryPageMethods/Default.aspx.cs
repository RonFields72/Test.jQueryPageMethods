using System;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{

    [WebMethod]
    public static string GetDateTime()
    {
        return DateTime.Now.ToString();
    }
}