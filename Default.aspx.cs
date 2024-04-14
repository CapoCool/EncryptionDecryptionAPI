using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectPart2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void encryptButton_Click(object sender, EventArgs e)
        {
            ServiceReference1.ServiceClient client = new ServiceReference1.ServiceClient();
            string str = encryptBox.Text;
            string encryptedString = client.Encrypt(str);
            encryptBox.Text = encryptedString;
            Session["encrypted"] = encryptBox.Text;
        }

        protected void sendButton_Click(object sender, EventArgs e)
        {

            Server.Transfer("~/Decrypt.aspx");
            //Response.Redirect("~/Decrypt.aspx");
        }

        string str = string.Empty;
        protected void imageButton_Click(object sender, EventArgs e)
        {
            
            ServiceReference2.ServiceClient imageClient = new ServiceReference2.ServiceClient();
            string lengthStr = imageLengthBox.Text;
            str = imageClient.GetVerifierString(lengthStr);
            Session["verifyStr"] = str;
            
            System.Drawing.Image image1 = System.Drawing.Image.FromStream(imageClient.GetImage(str));
            byte[] image2 = ToByteArray(image1);

            image.ImageUrl = "data:image;base64," + Convert.ToBase64String(image2);

        }

        public byte[] ToByteArray(System.Drawing.Image img)
        {
            using (var stream = new MemoryStream())
            {
                img.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
                return stream.ToArray();
            }
        }

        protected void verifyButton_Click(object sender, EventArgs e)
        {
            string verifyInput = verifyBox.Text;
            string textFromService = Session["verifyStr"].ToString();
            if (verifyInput == textFromService)
            {
                confirm.Text = "Congrats! You entered the right text";
            }
            else
            {
                confirm.Text = "Sorry, try again";
            }
        }
    }
}