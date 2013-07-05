using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebWork
{
    public partial class WebWork11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="admin" &&TextBox2.Text=="123")
            {
                Label1.Text = "欢迎你，登录成功";
            }
            else
                Label1.Text="你输入的用户名或密码有误，请重新输入！";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}