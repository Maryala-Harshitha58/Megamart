using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class PHARMACY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { /*
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            Response.Write(txtval); */

            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string query;

            //calling the functions
            paracetomol();
            calcium();
            antiseptic();
            hydraserum();
            vapourub();
            remove();
            syrup();
            vitamin();
            medderm();
            eno();




            //definition of price functions

            void paracetomol()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=51";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    paralabel1.Text = Name;
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
            void calcium()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=52";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    Label1.Text = Name;
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
            void antiseptic()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=53";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    Label2.Text = Name;
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

            void hydraserum()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=54";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    Label3.Text = Name;
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
            void vapourub()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=55";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    vapourLabel4.Text = Name;
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
            void remove()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=56";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    moisturLabel4.Text = Name;
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
            void syrup()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=57";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    cetaLabel4.Text = Name;
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
            void vitamin()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=58";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    vitaLabel5.Text = Name;
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
            void medderm()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=59";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    scarsLabel5.Text = Name;
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
            void eno()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=60";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("price");
                    }

                    Label5.Text = Name;
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

        protected void vegetablelink_Click(object sender, EventArgs e)
        {
            Response.Redirect("vegetables.aspx");
        }

        protected void pharmacylink_Click(object sender, EventArgs e)
        {
            Response.Redirect("fruits.aspx");
        }

        protected void cosmeticslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("cosmetics.aspx");
        }

        protected void grocerylink_Click(object sender, EventArgs e)
        {
            Response.Redirect("groceryaspx.aspx");
        }

        protected void cooldrinkslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("cooldrinks.aspx");
        }

        protected void parabutton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+paracetomolname.Text+"','"+paralabel1.Text+"','"+1+"'); ";

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

        protected void calciumButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+cakciumname.Text+"','"+Label1.Text+"','"+1+"'); ";

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

        protected void antisepticButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+antisepiname.Text+"','"+Label2.Text+"','"+1+"'); ";

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

        protected void hydraButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+hydrasermname.Text+"','"+Label3.Text+"','"+1+"'); ";

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

        protected void vapourButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+vapourname.Text+"','"+vapourLabel4.Text+"','"+1+"'); ";

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

        protected void moistureButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+cetaphilename.Text+"','"+moisturLabel4.Text+"','"+1+"'); ";

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

        protected void cetaphileButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+serupname.Text+"','"+cetaLabel4.Text+"','"+1+"'); ";

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

        protected void vitaButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+b12name.Text+"','"+vitaLabel5.Text+"','"+1+"'); ";

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

        protected void scarsButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+dermcream.Text+"','"+scarsLabel5.Text+"','"+1+"'); ";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+enoname.Text+"','"+Label5.Text+"','"+1+"'); ";

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

        protected void buttonprev_Click(object sender, EventArgs e)
        {
            Response.Redirect("groceryaspx.aspx");
        }

        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("cosmetics.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}