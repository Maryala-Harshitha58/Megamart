using System;

namespace www.Megamart.com
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonone_Click(object sender, EventArgs e)
        {
            Response.Redirect("vegetables.aspx");
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("fruits.aspx");
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PHARMACY.aspx");
        }

        protected void button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("cosmetics.aspx");
        }

        protected void button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("groceryaspx.aspx");
        }

        protected void button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("cooldrinks.aspx");
        }

        protected void textsearch_TextChanged(object sender, EventArgs e)
        {
            if (textsearch.Text!=null)
            {
                if ((textsearch.Text=="tomato")||(textsearch.Text=="brinjal")||(textsearch.Text=="cabbage")
                    ||(textsearch.Text=="ladys finger")||(textsearch.Text=="greenchilli")||(textsearch.Text==" green chilli")
                    ||(textsearch.Text=="onion")||(textsearch.Text=="drum sticks")||(textsearch.Text=="spinach")||(textsearch.Text=="bottle gouard"))
                {
                    Response.Redirect("vegetables.aspx");

                }

                else if ((textsearch.Text=="mango")||(textsearch.Text=="apple")||(textsearch.Text=="banana")
                    ||(textsearch.Text=="pineapple")||(textsearch.Text=="pomagranate")||(textsearch.Text=="strawberry")
                    ||(textsearch.Text=="papaya")||(textsearch.Text=="orange")||(textsearch.Text=="grapes")||(textsearch.Text=="watermelon"))
                {
                    Response.Redirect("fruits.aspx");

                }

                else if ((textsearch.Text=="cococola")||(textsearch.Text=="pepsi")||(textsearch.Text=="fanta")
                    ||(textsearch.Text=="sevenup")||(textsearch.Text=="thumpsup")||(textsearch.Text=="sting")
                    ||(textsearch.Text=="sprite")||(textsearch.Text=="mountain dew")||(textsearch.Text=="pulpi orange")||(textsearch.Text=="maaza"))
                {
                    Response.Redirect("cooldrinks.aspx");

                }
                else if ((textsearch.Text=="3roses")||(textsearch.Text=="groundnut")||(textsearch.Text=="sunflower oil")
                    ||(textsearch.Text=="sugar")||(textsearch.Text=="chanadal")||(textsearch.Text=="chillipower")
                    ||(textsearch.Text=="salt")||(textsearch.Text=="colgate")||(textsearch.Text=="tide")||(textsearch.Text=="lux"))
                {
                    Response.Redirect("groceryaspx.aspx");

                }
                else if ((textsearch.Text=="paracetomol")||(textsearch.Text=="calcium capsule")||(textsearch.Text=="antiseptic")
                    ||(textsearch.Text=="hydraselum")||(textsearch.Text=="vapourup")||(textsearch.Text=="ataphile")
                    ||(textsearch.Text=="vitaminb12")||(textsearch.Text=="eno")||(textsearch.Text=="syrup")||(textsearch.Text=="mederm"))
                {
                    Response.Redirect("PHARMACY.aspx");

                }
                else if ((textsearch.Text=="himalaya cream")||(textsearch.Text=="yardely powder")||(textsearch.Text=="jhonsons baby oil")
                    ||(textsearch.Text=="yardely perfum")||(textsearch.Text=="vaseline")||(textsearch.Text=="eyeliner")
                    ||(textsearch.Text=="nivea body lotion")||(textsearch.Text=="ponds")||(textsearch.Text=="nivea body cream")||(textsearch.Text=="lipstick"))
                {
                    Response.Redirect("cosmetics.aspx");

                }



            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}