using MySql.Data.MySqlClient;
using System;
using System.Web;
namespace www.Megamart.com
{
    public partial class cooldrinks : System.Web.UI.Page
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


            maaza();
            cococola();
            pepsi();
            sevenup();
            fanta();
            thumpsup();
            sting();
            sprite();
            orange();
            mountaindew();








            void maaza()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=31";


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

                    maazalabel1.Text = Name;
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
            void cococola()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=32";


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

                    cocolaLabel1.Text = Name;
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
            void pepsi()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=33";


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

                    pepsiLabel1.Text = Name;
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
            void sevenup()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=34";


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
            void fanta()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=35";


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

                    fantaLabel2.Text = Name;
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
            void thumpsup()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=36";


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

                    thumpsLabel2.Text = Name;
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
            void sting()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=37";


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

                    stingLabel2.Text = Name;
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
            void sprite()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=38";


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

                    spriteLabel2.Text = Name;
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

            void orange()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=39";


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

                    orjuiceLabel2.Text = Name;
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
            void mountaindew()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=40";


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

                    mtnLabel3.Text = Name;
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
            Response.Redirect("groceryaspx.aspx");
        }

        protected void maazabutton1_Click(object sender, EventArgs e)
        {

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(maazalabel1.Text);
            int num2 = Convert.ToInt32(maazabox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+mazaname.Text+"','"+ qtn+"','"+maazabox1.Text+"'); ";

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

        protected void cocolaButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(cocolaLabel1.Text);
            int num2 = Convert.ToInt32(cocolaTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+cocolaname.Text+"','"+ qtn+"','"+cocolaTextBox1.Text+"'); ";

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

        protected void pepsiButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(pepsiLabel1.Text);
            int num2 = Convert.ToInt32(pepsiTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+pepsiname.Text+"','"+ qtn+"','"+pepsiTextBox1.Text+"'); ";

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

        protected void sevenButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(Label1.Text);
            int num2 = Convert.ToInt32(sevenTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+sevenupname.Text+"','"+ qtn+"','"+sevenTextBox1.Text+"'); ";

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

        protected void fantaButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(fantaLabel2.Text);
            int num2 = Convert.ToInt32(fantaTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+fantaname.Text+"','"+ qtn+"','"+fantaTextBox1.Text+"'); ";

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

        protected void thumpsupButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(thumpsLabel2.Text);
            int num2 = Convert.ToInt32(thumpsupTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+thumpsupname.Text+"','"+qtn+"','"+thumpsupTextBox1.Text+"'); ";

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

        protected void stingButton1_Click(object sender, EventArgs e)
        {

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(stingLabel2.Text);
            int num2 = Convert.ToInt32(stingTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+stingname.Text+"','"+ qtn+"','"+stingTextBox1.Text+"'); ";

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

        protected void spriteButton1_Click(object sender, EventArgs e)
        {
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(spriteLabel2.Text);
            int num2 = Convert.ToInt32(spriteTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+spritename.Text+"','"+ qtn+"','"+spriteTextBox1.Text+"'); ";

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

        protected void orangejuiceButton1_Click(object sender, EventArgs e)
        {

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(orjuiceLabel2.Text);
            int num2 = Convert.ToInt32(TextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+orangename.Text+"','"+ qtn+"','"+TextBox1.Text+"'); ";

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

        protected void mountainButton1_Click(object sender, EventArgs e)
        {

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(mtnLabel3.Text);
            int num2 = Convert.ToInt32(mtnTextBox2.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+mtn2nameLabel2.Text+"','"+ qtn+"','"+mtnTextBox2.Text+"'); ";

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
            Response.Redirect("cosmetics.aspx");
        }

        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemsList.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}