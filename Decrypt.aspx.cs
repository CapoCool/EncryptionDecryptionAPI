using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectPart2
{
    public partial class Decrypt : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            decryptBox.Text = Session["encrypted"].ToString();
        }

        protected void decryptButton_Click(object sender, EventArgs e)
        {
            ServiceReference1.ServiceClient client = new ServiceReference1.ServiceClient();
            string str = Session["encrypted"].ToString();
            if (Session.Count == 0)
            {
                decryptBox.Text = "Nothing to display";
            }
            else
            {
                string str2 = client.Decrypt(str);
                decryptBox.Text = str2;
            }
        }

        protected void returnButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}