using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;



namespace www.Megamart.com
{
    public partial class forgot : System.Web.UI.Page
    {
        //retrived cypher password


        // string cypherpasscode;
        string decryptedpassword;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {

            //calling the function

            try
            {
                verification();
            }
            catch (Exception ee)
            {
                Response.Write(ee.Message);

            }


            void verification()
            {

                //string Dataconn = ConfigurationManager.ConnectionStrings["show"].ConnectionString;
                string cs = "datasource=localhost;port=3306;database=mytrial;user=root;password=sri@123";

                MySqlConnection mycon = new MySqlConnection(cs);

                //  string query = "select * from mytrial.megamartsignup where email='"+this.usertext.Text+"' and password='"+textpass.Text+"' ";
                string query = "select email,password from mytrial.megamartsignup where email='"+this.txtmail.Text+"' ";

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = query;
                cmd.Connection=mycon;
                MySqlDataAdapter mydata = new MySqlDataAdapter();
                mydata.SelectCommand = cmd;
                DataSet ds = new DataSet();
                mydata.Fill(ds);
                string uname;
                string pass;
                if (ds.Tables[0].Rows.Count > 0)
                {
                    uname=ds.Tables[0].Rows[0]["email"].ToString();
                    pass=ds.Tables[0].Rows[0]["password"].ToString();
                    mycon.Close();
                    //  funcdecypher(cypherpasscode);
                    // infocookie();
                    funcdecypher(pass);
                    MailMessage mm = new MailMessage("megamartshopping247@gmail.com", txtmail.Text);
                    mm.Subject ="Your password";
                    mm.Body= " <h1>Hello sir/Madam! Here your password is : "+decryptedpassword+"</h1>";
                    //  mm.Body=String.Format("Hello : <h1>(0) is your Email id <br/> your password is <h1>(1)<h1/>", uname, decryptedpassword);
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host="smtp.gmail.com";
                    smtp.EnableSsl=true;
                    NetworkCredential nc = new NetworkCredential();
                    nc.UserName="megamartshopping247@gmail.com ";
                    nc.Password=" ceswutzrmjhphwih";
                    smtp.UseDefaultCredentials=true;
                    smtp.Credentials=nc;
                    smtp.Port=587;
                    smtp.Send(mm);
                    msg.Text="Mail sent to <q> "+txtmail.Text+" </q> successfully";
                    msg.ForeColor= Color.Green;

                }
                else
                {
                    msg.Text="invalid email entered";
                    msg.ForeColor= Color.Red;
                }

                void funcdecypher(string cypherpasscode)
                {


                    string decrypted = string.Empty;
                    UTF8Encoding encodpwd = new UTF8Encoding();
                    Decoder decoder = encodpwd.GetDecoder();

                    byte[] todecode;
                    todecode = Convert.FromBase64String(cypherpasscode);
                    int charcount = decoder.GetCharCount(todecode, 0, todecode.Length);
                    char[] decodechar = new char[charcount];
                    decoder.GetChars(todecode, 0, todecode.Length, decodechar, 0);
                    decrypted = new string(decodechar);
                    decryptedpassword=decrypted;


                }

            }
        }
    }
}