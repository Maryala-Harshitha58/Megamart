using MySql.Data.MySqlClient;
using System;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace www.Megamart.com
{
    public partial class cancelorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //retriving supermarket name
            buttoncancel.Enabled=true;

            //  Request.Cookies["tablename"];
            HttpCookie sp = Request.Cookies["shopname"];
            lblsp.Text=sp["sname"];

            //retriving useremail
            HttpCookie usna = Request.Cookies["tabllee"];
            Label2.Text=usna["ttable"];

        }

        protected void buttoncancel_Click(object sender, EventArgs e)
        {



            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.DeliveryMethod=SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("megamartshopping247@gmail.com", "ceswutzrmjhphwih");
            MailMessage mail = new MailMessage();
            mail.To.Add(lblsp.Text);
            mail.From=new MailAddress(Label2.Text);

            mail.Subject=" customer cancelled the order!";
            mail.Body=textcancel.Text;
            client.Send(mail);
            delete();

            buttoncancel.Enabled=false;

            Label3.Text="YOUR ORDER CANCELLED SUCCESSFULLY!";
            //  delete();
            void delete()
            {

                /*  string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
                  MySqlConnection mycon;
                  MySqlCommand cmd;
                  MySqlDataReader reader;
                  string query; */

                HttpCookie imptext = Request.Cookies["tablename"];
                dup.Text = imptext["tabledata"];
                // Response.Write(txtval);


                string cs = "datasource=localhost;port=3306;database=megamart;user=root;password=sri@123";
                MySqlConnection mycon;
                MySqlCommand cmd;
                // MySqlDataReader reader;

                mycon = new MySqlConnection(cs);
                string query = "delete from megamart."+dup.Text+" ";

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


        }




    }
}