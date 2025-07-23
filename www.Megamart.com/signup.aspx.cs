using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Text;
using System.Web;

namespace www.Megamart.com
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  emailbox.Text=firstnamebox.Text=lastnamebox.Text=phonebox.Text=" ";
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        // encrypted data assined
        string encrypted;
        void infocookie()
        {
            // HttpCookie jaff = new HttpCookie("tablename");
            //jaff["tabledata"]=emailbox.Text;
            //jaff.Expires=DateTime.Now.AddMinutes(8);
            // Response.Cookies.Add(jaff);




            HttpCookie jaff = new HttpCookie("tabllee");
            jaff["ttable"]=emailbox.Text;
            jaff.Expires=DateTime.Now.AddMinutes(180);
            Response.Cookies.Add(jaff);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //calling encryption method

            encryption();
            //calling encryption method


            string Dataconn = ConfigurationManager.ConnectionStrings["show"].ConnectionString;
            // string cs = "datasource=localhost;port=3306;database=mytrial;user=root;password=sri@123";

            MySqlConnection mycon = new MySqlConnection(Dataconn);

            string query = "insert into mytrial.megamartsignup (email,password,firstname,lastname,gender,phone) values ('"+emailbox.Text+"','"+encrypted+"','"+firstnamebox.Text+"','"+lastnamebox.Text+"','"+RadioButtonList1.SelectedItem.Text+"', '"+phonebox.Text+"');";

            MySqlCommand cmd = new MySqlCommand(query, mycon);
            //cmd.Parameters.AddWithValue("email", emailbox.Text);    

            try
            {
                infocookie();
                mycon.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("Welcome.aspx");


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

        //decrypting the password
        public void encryption()
        {
            string strmsg = String.Empty;
            byte[] encode = new byte[passwordbox.Text.ToString().Length];
            encode=Encoding.UTF8.GetBytes(passwordbox.Text);
            strmsg=Convert.ToBase64String(encode);
            encrypted=strmsg;


        }
    }
}