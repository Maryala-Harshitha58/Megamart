using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using MySql.Data.MySqlClient;
using System;
using System.IO;
using System.Web;
using System.Web.UI;

namespace www.Megamart.com
{
    public partial class ItemsList : System.Web.UI.Page
    {





        protected void Page_Load(object sender, EventArgs e)
        {
            // nextbutton.Enabled =false;



            impcookie();
            smuser();






            //table name from Welcome page



            //userLogin name
            void smuser()
            {
                HttpCookie username = Request.Cookies["tablename"];
                duplicateusername.Text  = username["tabledata"];
            }
            //userLogin name

            //shopname
            void impcookie()
            {
                HttpCookie imcookie = Request.Cookies["shopname"];
                email.Text= duplicate.Text = imcookie["sname"];
            }
            //shopname
            datetime.Text=DateTime.Today.ToLongDateString();

            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string query;


            //calling market details function
            smname();
            smemail();
            smaddress();
            smphone();
            //calling userlogin page functions
            usname();
            usemail();
            usphone();
            //calling gridviewcontrol
            gridviewcontrol();


            //calling totalitems function
            totalitems();
            totalprices();
            //calling totalitems function








            //shop details

            void smname()
            {

                mycon = new MySqlConnection(cs);
                query = "select supermarketname from megamart.supermarkets where email='"+duplicate.Text+"' ";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("supermarketname");
                    }

                    name.Text = Name;

                    HttpCookie ssname = new HttpCookie("supername");
                    ssname["smpname"]=name.Text;
                    ssname.Expires=DateTime.Now.AddMinutes(60);
                    Response.Cookies.Add(ssname);



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


            void smemail()
            {

                mycon = new MySqlConnection(cs);
                query = "select email from megamart.supermarkets where email='"+duplicate.Text+"' ";


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

                    email.Text= Name;

                    //super market name

                    HttpCookie supername = new HttpCookie("super");
                    supername["spname"]=email.Text;
                    supername.Expires=DateTime.Now.AddDays(1);
                    Response.Cookies.Add(supername);
                    //super market name

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



            void smaddress()
            {

                mycon = new MySqlConnection(cs);
                query = "select * from megamart.supermarkets where email='"+duplicate.Text+"' ";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("  smaddress");
                    }

                    address.Text= Name;
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


            void smphone()
            {

                mycon = new MySqlConnection(cs);
                query = "select smphone from megamart.supermarkets where email='"+duplicate.Text+"' ";


                try
                {
                    string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();
                    reader=cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Name = reader.GetString("smphone");
                    }

                    phnumber.Text = Name;
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

            //user details

            void usname()
            {
                // HttpCookie username = Request.Cookies["tablename"];
                //   duplicateusername.Text  = username["tabledata"];
                HttpCookie username = Request.Cookies["tabllee"];
                duplicateusername.Text  = username["ttable"];


                mycon = new MySqlConnection(cs);
                query = "select lastname from mytrial.megamartsignup where email='"+duplicateusername.Text+"' ";


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

                    lastname.Text = Name;

                    //creation of cookie for username to get in payment
                    HttpCookie usernme = new HttpCookie("user");
                    usernme["uname"]=lastname.Text;
                    usernme.Expires=DateTime.Now.AddDays(1);
                    Response.Cookies.Add(usernme);
                    //creation of cookie for username to get in payment
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

            //useremail

            void usemail()
            {
                // HttpCookie username = Request.Cookies["tablename"];
                // duplicateusername.Text  = username["tabledata"];
                HttpCookie username = Request.Cookies["tabllee"];
                duplicateusername.Text  = username["ttable"];


                mycon = new MySqlConnection(cs);
                query = "select email from mytrial.megamartsignup where email='"+duplicateusername.Text+"' ";


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

                    useremail.Text = Name;
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

            //userphone
            void usphone()
            {
                //HttpCookie username = Request.Cookies["tablename"];
                // duplicateusername.Text  = username["tabledata"];
                HttpCookie username = Request.Cookies["tabllee"];
                duplicateusername.Text  = username["ttable"];

                mycon = new MySqlConnection(cs);
                query = "select phone from mytrial.megamartsignup where email='"+duplicateusername.Text+"' ";


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

                    userphone.Text = Name;
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




            //gridview control

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
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }
                finally
                {
                    mycon.Close();

                }


            }



            void totalitems()
            {
                //  HttpCookie username = Request.Cookies["tabllee"];
                //duplicateusername.Text  = username["ttable"];

                HttpCookie imptext = Request.Cookies["tablename"];
                string tname = imptext["tabledata"];


                mycon = new MySqlConnection(cs);
                query = "select COUNT(productid) from megamart."+tname+" ";


                try
                {
                    //  string Name = null;

                    cmd = new MySqlCommand(query, mycon);
                    mycon.Open();

                    countitems.Text=cmd.ExecuteScalar().ToString();
                    //  countitems.Text=Name;

                    // countitems.Text = Name;
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



            // calling total prices 

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

                    totalPrice.Text=cmd.ExecuteScalar().ToString();


                    //totalsum for bill payment page 
                    HttpCookie sum = new HttpCookie("billsum");
                    sum["total"]=totalPrice.Text;
                    sum.Expires= DateTime.Now.AddDays(1);
                    Response.Cookies.Add(sum);
                    //totalsum for bill payment page 


                    //  countitems.Text=Name;

                    // countitems.Text = Name;
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


            //ending of pageload event 
        }

        //download pdf button
        protected void buttondwn_Click(object sender, EventArgs e)
        {



            //complete page load



            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    d();


                    // nextbutton.Enabled =true;
                    // next.Enabled = true;
                    void d()
                    {

                        this.Page.RenderControl(hw);
                        StringReader sr = new StringReader(sw.ToString());
                        Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                        PdfWriter write = PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
                        pdfdoc.Open();

                        XMLWorkerHelper.GetInstance().ParseXHtml(write, pdfdoc, sr);
                        pdfdoc.Close();
                        Response.ContentType="application/pdf";
                        Response.AddHeader("content-disposition", "attachment;filename=invoice.pdf");
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);


                        Response.Write(pdfdoc);
                        Response.End();
                    }




                }
            }


        }
        //button gridview modification button
        protected void buttondelete_Click(object sender, EventArgs e)
        {
            string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
            MySqlConnection mycon;
            MySqlCommand cmd;
            //  MySqlDataReader reader;
            string query;

            // HttpCookie username = Request.Cookies["tablename"];
            //   duplicateusername.Text  = username["tabledata"];
            // HttpCookie username = Request.Cookies["tabllee"];
            //  duplicateusername.Text  = username["ttable"];


            HttpCookie imptext = Request.Cookies["tablename"];
            string tname = imptext["tabledata"];



            mycon = new MySqlConnection(cs);
            query = "delete from megamart."+tname+" where productid='"+textdel.Text+"' ";


            try
            {
                int count = 0;

                cmd = new MySqlCommand(query, mycon);
                mycon.Open();
                cmd.ExecuteNonQuery();
                count++;
                if (count>=1)
                {
                    labelmode.Text="List updated Successfully";

                }
                else
                {
                    labelmode.Text="List not Updated";
                }

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
        //button for payments next
        protected void nextbutton_Click(object sender, EventArgs e)
        {
            nextbutton.Enabled =false;
            Response.Redirect("payment.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}