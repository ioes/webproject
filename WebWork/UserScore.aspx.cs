using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebWork.DataBaseClass;
using System.Data;
using System.Data.SqlClient;

namespace WebWork
{
    public partial class UserScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBase db3 = new DataBase();
            string sqlstr = "select * from UserScore";
            DataSet ds = db3.GetDataSet(sqlstr);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}