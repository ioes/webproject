using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebWork
{
    public partial class WebWork2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try{
                int num=int.Parse(TextBox1.Text);
                for(int i=1;i<=num;i++)
                {
                    for(int j=1;j<=num;j++)
                    {
                        Label x = new Label();
                        x.ID = "Label" + i.ToString() + j.ToString();
                        x.Text =i.ToString()+"*"+ j.ToString()+"="+(i*j).ToString();
                        PlaceHolder1.Controls.Add(x);
                        PlaceHolder1.Controls.Add(new LiteralControl("<br>"));
                    }
                }
            }
            catch (Exception e1) { PlaceHolder1.Controls.Add(new LiteralControl(e1.Message)); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}