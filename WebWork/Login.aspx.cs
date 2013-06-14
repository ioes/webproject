using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebWork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//判断页面是否首次加载
            {
                if (!Object.Equals(Request.Cookies["UserID"], null))
                {
                    //创建一个Cookie对象，实现记住用户名
                    HttpCookie readcookie = Request.Cookies["UserID"];
                    this.txtUserID.Text = readcookie.Value;
                }
            }  
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtUserID.Text = "";
            txtPwd.Text = "";
        }
    }
}