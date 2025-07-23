using System;
using System.Net;
using System.Net.Mail;
using System.Web;


namespace www.Megamart.com
{
    public partial class mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //user email
            HttpCookie username = Request.Cookies["tabllee"];
            ftxtbox.Text  = username["ttable"];
            //shop email
            HttpCookie imcookie = Request.Cookies["shopname"];
            tomail.Text = imcookie["sname"];

            // ftxtbox.Text = "srinivaslingampelli18@gmail.com";
            //  tomail.Text="lingampellisrinivas3036@gmail.com";

            //disable
            tomail.Enabled=false;
            ftxtbox.Enabled=false;


        }

        protected void buttonmail_Click(object sender, EventArgs e)
        {




            try
            {

                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.EnableSsl = true;
                client.Port=587;
                client.DeliveryMethod=SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("megamartshopping247@gmail.com", "ceswutzrmjhphwih");
                MailMessage mail = new MailMessage();
                mail.To.Add(tomail.Text);
                mail.From=new MailAddress("megamartshopping247@gmail.com");
                if (FileUpload1.HasFile)
                {
                    mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));

                }
                mail.Subject="You have an order";
                mail.Body=address.Text;
                client.Send(mail);
                useremail();



                Response.Redirect("orderplaced.aspx");



            }
            catch (Exception ew)
            {

                Response.Write(ew.Message);
            }

            void useremail()
            {

                MailMessage mm = new MailMessage("megamartshopping247@gmail.com", ftxtbox.Text);
                mm.Subject =" Hello sir/Madam!";
                mm.Body= " <h1> your order placed successfully at selected supermarket </br> THANK YOU visit us again! </h1>";
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

            }




        }
    }
}