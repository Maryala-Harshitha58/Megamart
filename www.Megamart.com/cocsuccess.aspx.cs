using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class cocsuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie imcookie = Request.Cookies["supername"];
            lblsname.Text = imcookie["smpname"];

            HttpCookie resupername = Request.Cookies["super"];
            semail.Text=resupername["spname"];
        }

        protected void cocdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("orders.aspx");
        }
    }
}