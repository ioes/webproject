using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebWork
{
    public partial class Default : System.Web.UI.Page
    {
        public class DataBase//数据库相关操作
        {
            protected SqlConnection Connection;
            protected string ConnectionString;
            public SqlParameter Para;
            public DataBase()
            {
                ConnectionString = "Server=73a320d8-4297-45cb-bb78-a1c6003d7a18.sqlserver.sequelizer.com;Database=db73a320d8429745cbbb78a1c6003d7a18;User ID=pgmjzoqlzyfawdci;Password=tJK5XLzYEJdwJLZhYKaiWyPp3jS7EcYTtMUZCYq8XNYuDrZqgeiqh5E44ubM3BsB;";
            }
            public void Open()//open数据库
            {
                if (Connection == null)
                {
                    Connection = new SqlConnection(ConnectionString);
                    Connection.Open();
                }
            }
            public void Close()//close数据库
            {
                if (Connection.State.Equals(ConnectionState.Open))
                {
                    Connection.Close();
                }
            }
            public DataSet GetDataSet(string Name)//从数据库取出题目
           {
                Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.Add(Para);
            cmd.CommandText = Name;
            cmd.Connection = Connection;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            cmd.Parameters.Clear();
                Close();
            return dataset;
            }
        }

        public void initdata()//创造试卷
        {
            string str = RadioButtonList1.SelectedValue;
            DataBase db = new DataBase();
            db.Para = new SqlParameter("@Style",str);
            db.Para.Value = str;
            DataSet ds1 = db.GetDataSet("select top 2 * from SingleProblem where Style=@Style order by newid()");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }
            DataSet ds2 = db.GetDataSet("select top 1 * from MutilProblem where Style=@Style order by newid()");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds2;
                GridView2.DataBind();
            }
            DataSet ds3 = db.GetDataSet("select top 2 * from JudgeProblem where Style=@Style order by newid()");
            if (ds3.Tables[0].Rows.Count > 0)
            {
                GridView3.DataSource = ds3;
                GridView3.DataBind();
            }
        }
        public int PageSubmit()//上交试卷和计算成绩
        {
            int Grade = 0;
            if (GridView1.Rows.Count > 0)
            {
                foreach (GridViewRow dr in GridView1.Rows)
                {
                    string str = "";
                    if (((RadioButton)dr.FindControl("RadioButton1")).Checked)
                    {
                        str = "A";
                    }
                    else if (((RadioButton)dr.FindControl("RadioButton2")).Checked)
                    {
                        str = "B";
                    }
                    else if (((RadioButton)dr.FindControl("RadioButton3")).Checked)
                    {
                        str = "C";
                    }
                    else if (((RadioButton)dr.FindControl("RadioButton4")).Checked)
                    {
                        str = "D";
                    }
                    if (str == (((Label)dr.FindControl("Label4")).Text))
                    {
                        Grade = Grade + 20;
                    }
                    else
                    {
                        ((Label)dr.FindControl("Label3")).Visible = true;
                        ((Label)dr.FindControl("Label4")).Visible = true;
                    }
                }
            }
            if (GridView2.Rows.Count > 0)
            {
                foreach (GridViewRow dr in GridView2.Rows)
                {
                    string str = "";
                    if (((CheckBox)dr.FindControl("CheckBox1")).Checked)
                    {
                        str += "A";
                    }
                    if (((CheckBox)dr.FindControl("CheckBox2")).Checked)
                    {
                        str += "B";
                    }
                    if (((CheckBox)dr.FindControl("CheckBox3")).Checked)
                    {
                        str += "C";
                    }
                    if (((CheckBox)dr.FindControl("CheckBox4")).Checked)
                    {
                        str += "D";
                    }
                    if (str == (((Label)dr.FindControl("Label8")).Text))
                    {
                        Grade = Grade + 30;
                    }
                    else
                    {
                        ((Label)dr.FindControl("Label7")).Visible = true;
                        ((Label)dr.FindControl("Label8")).Visible = true;
                    }
                }
            }
            if (GridView3.Rows.Count > 0)
            {
                foreach (GridViewRow dr in GridView3.Rows)
                {
                    string str = "";
                    if (((CheckBox)dr.FindControl("CheckBox5")).Checked)
                    {
                        str = "true";
                    }
                    if (((CheckBox)dr.FindControl("CheckBox6")).Checked)
                    {
                        str = "false";
                    }
                    if (str == (((Label)dr.FindControl("Label12")).Text))
                    {
                        Grade = Grade + 15;
                    }
                    else
                    {
                        ((Label)dr.FindControl("Label11")).Visible = true;
                        ((Label)dr.FindControl("Label12")).Visible = true;
                    }
                }
            }
            return Grade;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.Attributes.Add("OnClick", "javascript:return confirm('要交卷吗？')");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Grade = PageSubmit();
            Label100.Text = "你的成绩是" + Convert.ToString(Grade) + "分";
            this.Button1.Enabled = false;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label102.Visible = true;
            Label102.Text = "你选择的科目是："+RadioButtonList1.SelectedValue;
            Button2.Visible = false;
            initdata();
            Button1.Visible = true;
        }
    }
}