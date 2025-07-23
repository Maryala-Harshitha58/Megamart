using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Net;
using System.Web;



namespace www.Megamart.com
{
    public partial class payment : System.Web.UI.Page
    {
        public string orderId;

        protected void Page_Load(object sender, EventArgs e)
        {
            //retriving user name

            HttpCookie reuname = Request.Cookies["user"];
            lblname.Text = reuname["uname"];
            //retriving user name

            //retriving sum of products
            HttpCookie retotal = Request.Cookies["billsum"];
            amount.Text=retotal["total"];

            int num = Convert.ToInt32(amount.Text);







            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", (num*100)); // this amount should be same as transaction amount
            input.Add("currency", "INR");
            input.Add("receipt", "16161");
            input.Add("payment_capture", 1);

            string key = "rzp_live_l1FduCrMNW5nRg";
            string secret = "6Wa1E6OLEobsrN0IOTsh0dtZ";


            RazorpayClient client = new RazorpayClient(key, secret);
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;
            Razorpay.Api.Order order = client.Order.Create(input);
            orderId = order["id"].ToString();



        }

        protected void buttoncashon_Click(object sender, EventArgs e)
        {
            Response.Redirect("mail.aspx");
        }
    }



}