using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class cosmetics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
           HttpCookie imptext = Request.Cookies["tablename"];
           string txtval = imptext["tabledata"];
           Response.Write(txtval); */

            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string query;

            //calling price functions
            himalayafacecream();
            yardelypower();
            Jbabyoil();
            Yperfum();
            lipstick();
            lakmebodycream();
            pondsgel();
            nivea();
            vaseline();
            eyeliner();







            //definition of price functions

            void himalayafacecream()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=41";


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

                    himalayalabel1.Text = Name;
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

            void yardelypower()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=42";


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

            void Jbabyoil()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=43";


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

                    jhoneLabel2.Text = Name;
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

            void Yperfum()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=44";


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

                    sparyLabel2.Text = Name;
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

            void lipstick()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=45";


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

                    lipstickLabel2.Text = Name;
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


            void lakmebodycream()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=46";


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

                    lakmecreamLabel2.Text = Name;
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


            void pondsgel()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=47";


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

                    pondsgelLabel2.Text = Name;
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

            void nivea()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=48";


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

                    niveaLabel2.Text = Name;
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

            void vaseline()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=49";


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

                    vaselineLabel2.Text = Name;
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

            void eyeliner()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=50";


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

                    eyeLabel2.Text = Name;
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

            Response.Redirect("fruits.aspx");

        }

        protected void pharmacylink_Click(object sender, EventArgs e)
        {
            Response.Redirect("PHARMACY.aspx");
        }

        protected void fruitslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("vegetables.aspx");
        }

        protected void grocerylink_Click(object sender, EventArgs e)
        {
            Response.Redirect("groceryaspx.aspx");
        }

        protected void cooldrinkslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("cooldrinks.aspx");
        }

        protected void himalayabutton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+himalayaname.Text+"','"+himalayalabel1.Text+"','"+1+"'); ";

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



        protected void jhonesonButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values( '"+babayoilname.Text+"','"+jhoneLabel2.Text+"','"+1+"'); ";

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

        protected void sparyButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+sparynameyardely.Text+"','"+sparyLabel2.Text+"','"+1+"'); ";

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

        protected void lipstickButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+lipstickname.Text+"','"+lipstickLabel2.Text+"','"+1+"'); ";

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

        protected void lakmecreamButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+lakmecreamname.Text+"','"+lakmecreamLabel2.Text+"','"+1+"'); ";

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

        protected void pondsgelButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+pondsgelname.Text+"','"+pondsgelLabel2.Text+"','"+1+"'); ";

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

        protected void niveaButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+niveaname.Text+"','"+niveaLabel2.Text+"','"+1+"'); ";

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

        protected void vaselineButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+vaselinename.Text+"','"+vaselineLabel2.Text+"','"+1+"'); ";

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

        protected void eyeButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+eyelinername.Text+"','"+eyeLabel2.Text+"','"+1+"'); ";

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

        protected void yardelyButton1_Click1(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+yardelypowername.Text+"','"+Label1.Text+"','"+1+"'); ";

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
            Response.Redirect("PHARMACY.aspx");
        }

        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("cooldrinks.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}