using Razorpay.Api;
using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;

namespace www.Megamart.com
{
    public partial class paymentcheckout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //retriving user name
            HttpCookie reuname = Request.Cookies["user"];
            usernm.Text = reuname["uname"];

            // retriving total bill
            HttpCookie retotal = Request.Cookies["billsum"];
            reamount.Text=retotal["total"];

            int num = Convert.ToInt32(reamount.Text);


            string paymentId = Request.Form["razorpay_payment_id"];

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", (num*100)); // this amount should be same as transaction amount

            string key = "rzp_live_l1FduCrMNW5nRg";
            string secret = "6Wa1E6OLEobsrN0IOTsh0dtZ";

            RazorpayClient client = new RazorpayClient(key, secret);

            Dictionary<string, string> attributes = new Dictionary<string, string>();

            attributes.Add("razorpay_payment_id", paymentId);
            attributes.Add("razorpay_order_id", Request.Form["razorpay_order_id"]);
            attributes.Add("razorpay_signature", Request.Form["razorpay_signature"]);

            Utils.verifyPaymentSignature(attributes);

            //          Please use below code to refund the payment   
            //          Refund refund = new Razorpay.Api.Payment((string) paymentId).Refund();

            // Console.WriteLine(paymentId);
            // Response.Write("successfully completed transaction  "+paymentId);
            transaction.Text=paymentId;
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            //calling mail page for sending mails
            //  Response.Redirect("mail.aspx");
        }
    }
}