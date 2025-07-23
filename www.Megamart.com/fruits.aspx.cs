using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace www.Megamart.com
{
    public partial class fruits : System.Web.UI.Page
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

            mango();
            apple();
            banana();
            pineapple();
            pomagrante();
            strawberry();
            papaya();
            orange();
            grapes();
            watermelon();





            void mango()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=12";


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

                    mangolabel1.Text = Name;
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
            void apple()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=11";


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

                    applelabel2.Text = Name;
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
            void banana()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=13";


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

                    bananaLabel1.Text = Name;
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
            void pineapple()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=14";


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

                    pineLabel1.Text = Name;
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
            void pomagrante()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=19";


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

                    pomagranteLabel1.Text = Name;
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
            void strawberry()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=18";


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

                    strawLabel1.Text = Name;
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
            void papaya()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=16";


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

                    papayaLabel1.Text = Name;
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
                query = "select price from megamart.productdetails where pid=15";


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

                    orangeLabel1.Text = Name;
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
            void grapes()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=20";


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

                    grapesLabel1.Text = Name;
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
            void watermelon()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=17";


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

                    watermelonLabel1.Text = Name;
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

        protected void mangotextbox1_TextChanged(object sender, EventArgs e)
        {

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

        protected void cooldrinkslink_Click(object sender, EventArgs e)
        {
            Response.Redirect("cooldrinks.aspx");
        }

        protected void mangobutton1_Click(object sender, EventArgs e)
        {//mango

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(mangolabel1.Text);
            int num2 = Convert.ToInt32(mangotextbox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+mangoname.Text+"','"+qtn+"','"+mangotextbox1.Text+"'); ";

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

        protected void applebutton2_Click(object sender, EventArgs e)
        {//apple

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(applelabel2.Text);
            int num2 = Convert.ToInt32(applequatextbox2.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+applename.Text+"','"+qtn +"','"+applequatextbox2.Text+"'); ";

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

        protected void bananaButton1_Click(object sender, EventArgs e)
        {
            //banana

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(bananaLabel1.Text);
            int num2 = Convert.ToInt32(bananaTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+banananame.Text+"','"+qtn+"','"+bananaTextBox1.Text+"'); ";

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

        protected void pineButton1_Click(object sender, EventArgs e)
        {
            //pineapple 


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(pineLabel1.Text);
            int num2 = Convert.ToInt32(pineTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+pineapplename.Text+"','"+qtn+"','"+pineTextBox1.Text+"'); ";

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

        protected void pomagranteButton1_Click(object sender, EventArgs e)
        {
            //pomagrante


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(pomagranteLabel1.Text);
            int num2 = Convert.ToInt32(pomagranteTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+pomagrantename.Text+"','"+qtn+"','"+pomagranteTextBox1.Text+"'); ";

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

        protected void strawButton1_Click(object sender, EventArgs e)
        {
            //strawberry


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(strawLabel1.Text);
            int num2 = Convert.ToInt32(strawTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+strawberryname.Text+"','"+ qtn+"','"+strawTextBox1.Text+"'); ";

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

        protected void papayaButton1_Click(object sender, EventArgs e)
        {
            //papaya


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(papayaLabel1.Text);
            int num2 = Convert.ToInt32(papayaTextBox1.Text);
            int qtn = num*num2;

            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+papayaname.Text+"','"+qtn+"','"+papayaTextBox1.Text+"'); ";

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

        protected void orangeButton1_Click(object sender, EventArgs e)
        {
            //orange

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(orangeLabel1.Text);
            int num2 = Convert.ToInt32(orangeTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+orangename.Text+"','"+ qtn+"','"+orangeTextBox1.Text+"'); ";

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

        protected void grapesButton1_Click(object sender, EventArgs e)
        {
            //grapes


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(grapesLabel1.Text);
            int num2 = Convert.ToInt32(grapesTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+grapesname.Text+"','"+ qtn+"','"+grapesTextBox1.Text+"'); ";

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

        protected void watermelonButton1_Click(object sender, EventArgs e)
        {
            //watermelon

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(watermelonLabel1.Text);
            int num2 = Convert.ToInt32(watermelonTextBox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+watermelon.Text+"','"+qtn+"','"+watermelonTextBox1.Text+"'); ";

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
            Response.Redirect("vegetables.aspx");
        }

        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("groceryaspx.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}