using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebWork
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       /* protected void Button2_Click(object sender, EventArgs e)
        {
            txtUserID.Text = "";
            txtPwd.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserID");
            cookie.Values.Add("Name", "ljc");
            cookie.Expires = DateTime.MaxValue;
            Response.Cookies.Add(cookie);
            string ID = cookie.Values["Name"];
            if (txtUserID.Text == "ljc" && txtPwd.Text == "123")
            {
                Label3.Text = ID;
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
        }*/
    }
}