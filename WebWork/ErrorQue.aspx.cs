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
    public partial class ErrorQue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBase db = new DataBase();
            DataSet ds1 = db.GetDataSet("select * from ErrorSin");
            DataSet ds2 = db.GetDataSet("select * from ErrorMul");
            DataSet ds3 = db.GetDataSet("select * from ErrorJud");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }
            if (ds2.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds2;
                GridView2.DataBind();
            }
            if (ds3.Tables[0].Rows.Count > 0)
            {
                GridView3.DataSource = ds3;
                GridView3.DataBind();
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataBase db2 = new DataBase();
            DataSet ds1 = db2.GetDataSet("select * from ErrorSin");
            this.GridView1.PageIndex = e.NewPageIndex;
            this.GridView1.DataSource = ds1;
            this.GridView1.DataBind();
        }
        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataBase db3 = new DataBase();
            DataSet ds2 = db3.GetDataSet("select * from ErrorMul");
            this.GridView2.PageIndex = e.NewPageIndex;
            this.GridView2.DataSource = ds2;
            this.GridView2.DataBind();
        }
        protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataBase db4 = new DataBase();
            DataSet ds3 = db4.GetDataSet("select * from ErrorJud");
            this.GridView3.PageIndex = e.NewPageIndex;
            this.GridView3.DataSource = ds3;
            this.GridView3.DataBind();
        }
    }
}