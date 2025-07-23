using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void namecookie()
        {
            HttpCookie shop = new HttpCookie("shopname");
            shop["sname"]=locatxtbox.Text;
            shop.Expires=DateTime.Now.AddDays(1);
            Response.Cookies.Add(shop);

        }
        protected void locbutton_Click(object sender, EventArgs e)
        {



            namecookie();
            Response.Redirect("Home.aspx");
        }
    }
}