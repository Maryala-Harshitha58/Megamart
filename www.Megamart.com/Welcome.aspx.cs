using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class Welcome : System.Web.UI.Page
    {
        string deltable;
        protected void Page_Load(object sender, EventArgs e)
        {
            //calling cookie for username from signup or userlogin page

          HttpCookie username = Request.Cookies["tabllee"];
            welname.Text  = username["ttable"];  
            //calling cookie for username from signup or userlogin page

            //9999999999999999999

            //calling the tablename cookie from welcome page(self)
           
         //   HttpCookie retname = Request.Cookies["tablename"];
         //   deltable = retname["tabledata"];    
            //calling the tablename cookie from welcome page(self)



            //  usreloginwelcomename();
            //  signin();
            /*
           // string Dataconn = ConfigurationManager.ConnectionStrings["show"].ConnectionString;
             string cs = "datasource=localhost;port=3306;database=mytrial;user=root;password=sri@123";

            MySqlConnection mycon = new MySqlConnection(cs);

            string query = "select (lastname) from register where email="+textwelcome.+"";

            MySqlCommand cmd = new MySqlCommand(query, mycon);
            //cmd.Parameters.AddWithValue("email", emailbox.Text);    

            try
            {

                mycon.Open();
                cmd.ExecuteNonQuery();
              


            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            finally
            {
                mycon.Close();

            }
            */
            /*  void signin()
              {
                  welname.Text=Request.Form["lastnamebox"].ToString();
              } */

            /*  void usreloginwelcomename()
              {
                  welname.Text=Request.Form["usertext"].ToString();   
              }*/
        }

        protected void buttonwel_Click(object sender, EventArgs e)
        {

            //calling functions
            delete();

            tablecreation();



            //  onion();




            void delete()
            {

                string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
                MySqlConnection mycon;
                MySqlCommand cmd;

                // MySqlDataReader reader;

                mycon = new MySqlConnection(cs);
                string query = "drop table megamart."+deltable+" ";

                //succes for deleting the rows in a table

                try
                {


                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    cmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();
                    Response.Write(" <embed height='0' width='0' src='button-30.wav'/> ");

                }


            }


            void cookiedata()
            {

                HttpCookie ookie = new HttpCookie("tablename");
                ookie["tabledata"]=textwelcome.Text;
                ookie.Expires=DateTime.Now.AddDays(60);
                Response.Cookies.Add(ookie);

            }




            void tablecreation()
            {
                //  Response.Redirect("location.aspx");
                // string Dataconn = ConfigurationManager.ConnectionStrings["sri"].ConnectionString;
                string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";

                MySqlConnection mycon = new MySqlConnection(cs);

                string query = "create table megamart."+textwelcome.Text+"(productid  int(200) auto_increment primary key not null, productname varchar(200),price varchar(50), Quantity int(200))";

                MySqlCommand cmd = new MySqlCommand(query, mycon);
                //  cmd.Parameters.AddWithValue("", textwelcome.Text);    
                // cmd.Parameters.Add(new MySqlParameter ()

                try
                {

                    mycon.Open();
                    cmd.ExecuteNonQuery();
                    cookiedata();
                    // Response.Redirect("vegetables.aspx");
                    Response.Redirect("location.aspx");


                }
                catch (Exception ex)
                {

                    errorlabel.Text= ex.Message;
                }
                finally
                {
                    mycon.Close();

                }

            }


            //error






            //void onion()
            //{
            //    string cs = "datasource=localhost;port=3306;database=mytrial;user=root;password=sri@123";
            //    MySqlConnection mycon;
            //    MySqlCommand cmd;
            //    MySqlDataReader reader;
            //    string query;


            //    mycon = new MySqlConnection(cs);
            //    query = "select phone from mytrial.megamartsignup where email='"+this.welname.Text+"' ";

            //    try
            //    {

            //        cmd = new MySqlCommand(query, mycon);
            //        // int count = 0;
            //        string Name = null;
            //      //  int count = 0;
            //        mycon.Open();
            //        reader=cmd.ExecuteReader();
            //        while (reader.Read())
            //        {

            //            Name = reader.GetString("phone");

            //            // count=count+1;

            //        }
            //        string nm = textwelcome.Text;
            //        //Response.Write(nm);
            //        //Response.Write(Name);

            //        if ((nm.Trim()==Name.Trim()))
            //        {
            //            delete();
            //            tablecreation();
            //        }
            //        else
            //        {
            //            errorlabel.Text= "invalid bruh";
            //        }


            //    }
            //    catch (Exception ex)
            //    {

            //        Response.Write(ex.Message);
            //    }
            //    finally
            //    {
            //        mycon.Close();

            //    }




            //}

        }
    }
}