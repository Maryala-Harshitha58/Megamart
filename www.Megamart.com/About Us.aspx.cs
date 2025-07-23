using System;

namespace www.Megamart.com
{
    public partial class About_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                disimage();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            disimage();
        }

        void disimage()
        {
            if (ViewState["images"]==null)
            {
                Image1.ImageUrl="~/images/0.jpg";
                ViewState["images"]=0;
            }
            else
            {
                int i = (int)ViewState["images"];
                if (i==7)
                {
                    Image1.ImageUrl="~/images/0.jpg";
                    ViewState["images"]=0;
                }
                else
                {
                    i=i+1;
                    Image1.ImageUrl="~/images/"+i.ToString()+".jpg";
                    ViewState["images"]=i;


                }
            }

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}