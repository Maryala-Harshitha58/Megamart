using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Text;
using System.Web;

namespace www.Megamart.com
{
    public partial class userLogin : System.Web.UI.Page
    {
        //retrived cypher password


        // string cypherpasscode;
        string decryptedpassword;


        //retrived cypher password
        protected void Page_Load(object sender, EventArgs e)
        {
            //  usertext.Text=String.Empty;




        }

        protected void usertext_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsign_Click(object sender, EventArgs e)
        {

            Response.Redirect("signup.aspx");

            //  Response.Write(" <embed height='0' width='0' src='button-30.wav'/> ");
        }

        protected void butlogin_Click(object sender, EventArgs e)
        {
            Response.Write(" <embed height='0' width='0' src='button-30.wav'/> ");

            //calling decryption methhods
            // decypherpasscode();


            //calling decryption methhods

            verification();


            void verification()
            {

                //string Dataconn = ConfigurationManager.ConnectionStrings["show"].ConnectionString;
                string cs = "datasource=localhost;port=3306;database=mytrial;user=root;password=sri@123";

                MySqlConnection mycon = new MySqlConnection(cs);

                //  string query = "select * from mytrial.megamartsignup where email='"+this.usertext.Text+"' and password='"+textpass.Text+"' ";
                string query = "select * from mytrial.megamartsignup where email='"+this.usertext.Text+"' ";

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
                    infocookie();
                    funcdecypher(pass);
                    if (uname==usertext.Text && decryptedpassword==textpass.Text)
                    {
                        Response.Redirect("welcome.aspx");
                    }
                    else
                    {
                        labelerr.Text="invalid userid and password";
                    }

                }
                else
                {
                    labelerr.Text="invalid userid and password";
                }





                //cookie creating
                void infocookie()
                {
                    HttpCookie jaff = new HttpCookie("tabllee");
                    jaff["ttable"]=usertext.Text;
                    jaff.Expires=DateTime.Now.AddMinutes(180);
                    Response.Cookies.Add(jaff);
                }
                //cookie creating





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