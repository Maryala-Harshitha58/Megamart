using MySql.Data.MySqlClient;
using System;
using System.Web;


namespace www.Megamart.com
{
    public partial class vegetables : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string query;

            tomato();
            brinjal();
            spinach();
            bottlegourd();
            cabbage();
            ladiesfinger();
            greenchilli();
            drumsticks();
            onion();
            potato();




            void tomato()
            {

                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=1";


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

                    labelone.Text = Name;
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


            void brinjal()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=3";

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

                    label1.Text = Name;
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

            void spinach()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=7";

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

                    label2.Text = Name;
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

            void bottlegourd()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=6";

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

                    label3.Text = Name;
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



            void cabbage()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=10";

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

                    label4.Text = Name;
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
            void ladiesfinger()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=9";

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

                    label5.Text = Name;
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
            void greenchilli()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=5";

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

                    label6.Text = Name;
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

            void drumsticks()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=8";

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

                    label7.Text = Name;
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
            void onion()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=4";

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

                    label8.Text = Name;
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
            void potato()
            {
                mycon = new MySqlConnection(cs);
                query = "select price from megamart.productdetails where pid=2";

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

                    label9.Text = Name;
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

        protected void textboxtomqun_TextChanged(object sender, EventArgs e)
        {

        }

        protected void buttontomato_Click(object sender, EventArgs e)
        {
            //tomato button

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;
            int num = Convert.ToInt32(labelone.Text);
            int num2 = Convert.ToInt32(textboxtomqun.Text);
            int qtn = num*num2;

            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+tamatoname.Text+"','"+qtn+"','"+textboxtomqun.Text+"'); ";

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

        protected void button8_Click(object sender, EventArgs e)
        { //onion

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;
            int num = Convert.ToInt32(label8.Text);
            int num2 = Convert.ToInt32(textbox8.Text);
            int qtn = num*num2;

            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+onionname.Text+"','"+qtn+"','"+textbox8.Text+"'); ";

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

        protected void button1_Click(object sender, EventArgs e)
        {
            //brinjal button

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label1.Text);
            int num2 = Convert.ToInt32(textbox1.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+BRINJALNAME.Text+"','"+qtn+"','"+textbox1.Text+"'); ";

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

        protected void button2_Click(object sender, EventArgs e)
        {
            //spinach button
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);

            int num = Convert.ToInt32(label2.Text);
            int num2 = Convert.ToInt32(textbox2.Text);
            int qtn = num*num2;

            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+spinachname.Text+"','"+qtn+"','"+textbox2.Text+"'); ";

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

        protected void button3_Click(object sender, EventArgs e)
        {
            //bottle gourd 

            //spinach button
            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label3.Text);
            int num2 = Convert.ToInt32(textbox3.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+bottelguardname.Text+"','"+ qtn+"','"+textbox3.Text+"'); ";

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

        protected void button4_Click(object sender, EventArgs e)
        {
            //cabagge




            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label4.Text);
            int num2 = Convert.ToInt32(textbox4.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+cabbagename.Text+"','"+qtn+"','"+textbox4.Text+"'); ";

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

        protected void button5_Click(object sender, EventArgs e)
        {
            // ladiesfinger





            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label5.Text);
            int num2 = Convert.ToInt32(textbox5.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+ladiesfingername.Text+"','"+qtn+"','"+textbox5.Text+"'); ";

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

        protected void button6_Click(object sender, EventArgs e)
        { //greenchilli


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label6.Text);
            int num2 = Convert.ToInt32(textbox6.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+greenchilliname.Text+"','"+ qtn+"','"+textbox6.Text+"'); ";

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

        protected void button7_Click(object sender, EventArgs e)
        {
            //drumsticks

            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label7.Text);
            int num2 = Convert.ToInt32(textbox7.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+drumstickname.Text+"','"+ qtn+"','"+textbox7.Text+"'); ";

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

        protected void btnbutton9_Click(object sender, EventArgs e)
        { //potato


            HttpCookie imptext = Request.Cookies["tablename"];
            string txtval = imptext["tabledata"];
            // Response.Write(txtval);


            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            // MySqlDataReader reader;


            mycon = new MySqlConnection(cs);
            int num = Convert.ToInt32(label9.Text);
            int num2 = Convert.ToInt32(textbox9.Text);
            int qtn = num*num2;
            string query = "insert into megamart."+txtval+"(productname,price,Quantity) values('"+potatoname.Text+"','"+ qtn+"','"+textbox9.Text+"'); ";

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
            Response.Redirect("Home.aspx");
        }


        protected void buttonnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("fruits.aspx");
        }

        protected void btnprocess_Click(object sender, EventArgs e)
        {
            Response.Redirect("itemsList.aspx");
        }
    }
}