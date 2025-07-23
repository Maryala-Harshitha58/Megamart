using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection mycon;
            string query;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";

            firstname();
            lastname();
            email();
            gender();
            phone();












            void firstname()
            {

                //cookie retriving



                HttpCookie username = Request.Cookies["tabllee"];
                name.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select firstname from mytrial.megamartsignup where email='"+name.Text+"' ";

                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("firstname");
                    }

                    fname.Text = Name;
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }



            }


            void lastname()
            {

                //cookie retriving



                HttpCookie username = Request.Cookies["tabllee"];
                name.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select lastname from mytrial.megamartsignup where email='"+name.Text+"' ";

                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("lastname");
                    }

                    lname.Text = Name;
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }



            }

            void email()
            {

                //cookie retriving


                HttpCookie username = Request.Cookies["tabllee"];
                name.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select email from mytrial.megamartsignup where email='"+name.Text+"' ";

                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("email");
                    }

                    eemail.Text = Name;
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }



            }


            void gender()
            {

                //cookie retriving



                HttpCookie username = Request.Cookies["tabllee"];
                name.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select gender from mytrial.megamartsignup where email='"+name.Text+"' ";

                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("gender");
                    }

                    ggender.Text = Name;
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }



            }

            void phone()
            {

                //cookie retriving

                HttpCookie username = Request.Cookies["tabllee"];
                name.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select phone from mytrial.megamartsignup where email='"+name.Text+"' ";

                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("phone");
                    }

                    pphone.Text = Name;
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }



            }







        }
    }
}