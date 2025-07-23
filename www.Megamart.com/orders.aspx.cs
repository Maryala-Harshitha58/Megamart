using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class orders : System.Web.UI.Page
    {

        string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
        MySqlConnection mycon;
        MySqlCommand cmd;

        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            gridviewcontrol();
            totalprices();






            //display orders

            void gridviewcontrol()
            {



                HttpCookie imptext = Request.Cookies["tablename"];
                string tname = imptext["tabledata"];


                mycon = new MySqlConnection(cs);
                query = "select * from megamart."+tname+" ";


                try
                {
                    // string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    MySqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();


                }
                catch (Exception)
                {
                    //modified as used  
                    noord.Text="Looks Like You Haven't Placed An Order";
                }
                finally
                {
                    mycon.Close();

                }


            }


            //total sum of number

            void totalprices()
            {

                HttpCookie imptext = Request.Cookies["tablename"];
                string tname = imptext["tabledata"];


                mycon = new MySqlConnection(cs);
                query = "select SUM(price) from megamart."+tname+" ";


                try
                {
                    //  string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();

                    lbltotal.Text=cmd.ExecuteScalar().ToString();


                    /*  //totalsum for bill payment page 
                      HttpCookie sum = new HttpCookie("billsum");
                      sum["total"]=totalPrice.Text;
                      sum.Expires= DateTime.Now.AddDays(1);
                      Response.Cookies.Add(sum);
                      //totalsum for bill payment page 

                      */
                    //  countitems.Text=Name;

                    // countitems.Text = Name;
                }
                catch (Exception)
                {
                    //modified as used  
                    Response.Write("");
                }
                finally
                {
                    mycon.Close();

                }
            }

        }

        protected void ordercancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("cancelorder.aspx");
        }
    }
}