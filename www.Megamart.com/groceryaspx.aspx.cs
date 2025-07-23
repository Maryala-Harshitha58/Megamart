using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class groceryaspx : System.Web.UI.Page
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

            //callling the price display functions
            sunflower();
            sugar();
            chananadal();
            chillipower();
            salt();
            groundnut();
            roses();
            colgate();
            tide();
            lux();










            //defining of price functions
            void sunflower()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=21";


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

                    oillabel1.Text = Name;
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
            void sugar()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=22";


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

                    sugarlabel2.Text = Name;
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
            void chananadal()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=23";


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

                    dalLabel1.Text = Name;
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
            void chillipower()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=24";


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

                    chilliLabel1.Text = Name;
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
            void salt()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=30";


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

                    saltLabel1.Text = Name;
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
            void groundnut()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=25";


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

                    groundnutLabel1.Text = Name;
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
            void roses()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=26";


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

                    teaLabel1.Text = Name;
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
            void colgate()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=27";


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

                    colgateLabel1.Text = Name;
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
            void tide()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=28";


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

                    tideLabel1.Text = Name;
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
            void lux()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=29";


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

                    luxLabel1.Text = Name;
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
            Response.Redirect("PHARMACY.aspx");
        }

        protected void cosmeticslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("cosmetics.aspx");
        }

        protected void grocerylink_Click(object sender, EventArgs e)
        {

            Response.Redirect("cooldrinks.aspx");
        }

        protected void cooldrinkslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("fruits.aspx");
        }

        protected void sugarbutton2_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(sugarlabel2.Text);
            int num2 = Convert.ToInt32(sugarquatextbox2.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+sugarname.Text+"','"+ qtn+"','"+sugarquatextbox2.Text+"'); ";

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

        protected void saltButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(saltLabel1.Text);
            int num2 = Convert.ToInt32(saltTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+saltname.Text+"','"+qtn+"','"+saltTextBox1.Text+"'); ";

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

        protected void oilbutton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(oillabel1.Text);
            int num2 = Convert.ToInt32(oiltextbox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+sunflowername.Text+"','"+ qtn+"','"+oiltextbox1.Text+"'); ";

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

        protected void chanadalButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(dalLabel1.Text);
            int num2 = Convert.ToInt32(dalTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+chanadalname.Text+"','"+ qtn+"','"+dalTextBox1.Text+"'); ";

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

        protected void chilliButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(chilliLabel1.Text);
            int num2 = Convert.ToInt32(chilliTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+chilliname.Text+"','"+ qtn+"','"+chilliTextBox1.Text+"'); ";

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

        protected void groundButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(groundnutLabel1.Text);
            int num2 = Convert.ToInt32(groundTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+groundnutname.Text+"','"+qtn+"','"+groundTextBox1.Text+"'); ";

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

        protected void teaButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(teaLabel1.Text);
            int num2 = Convert.ToInt32(teaTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+threerosename.Text+"','"+ qtn+"','"+teaTextBox1.Text+"'); ";

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

        protected void cplgateButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(colgateLabel1.Text);
            int num2 = Convert.ToInt32(colgateTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+colgatename.Text+"','"+qtn+"','"+colgateTextBox1.Text+"'); ";

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

        protected void Buttontide1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(tideLabel1.Text);
            int num2 = Convert.ToInt32(tideTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+tidename.Text+"','"+qtn+"','"+tideTextBox1.Text+"'); ";

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

        protected void luxButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(luxLabel1.Text);
            int num2 = Convert.ToInt32(luxTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+luxname.Text+"','"+ qtn+"','"+luxTextBox1.Text+"'); ";

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
            Response.Redirect("fruits.aspx");
        }

        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("PHARMACY.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}