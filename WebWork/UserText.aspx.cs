﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WebWork.DataBaseClass;


namespace WebWork
{
    public partial class Default : System.Web.UI.Page
    {
        public void initdata()//创造试卷
        {
            string str = RadioButtonList1.SelectedValue;
            DataBase db = new DataBase();
            SqlParameter para = new SqlParameter("@Style", str);
            para.Value = str;
            DataSet ds1 = db.GetDataSet("select top 2 * from SingleProblem where Style=@Style order by newid()",para);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }
            DataSet ds2 = db.GetDataSet("select top 1 * from MutilProblem where Style=@Style order by newid()",para);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds2;
                GridView2.DataBind();
            }
            DataSet ds3 = db.GetDataSet("select top 2 * from JudgeProblem where Style=@Style order by newid()",para);
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
                Button3.Attributes.Add("OnClick", "javascript:return confirm('确定保存吗？')");
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
            Button3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Grade =PageSubmit();
            DataBase db2 = new DataBase();
            string sqlstr = "insert into UserScore values('a2010052815','ljc',@Grade)";
            SqlParameter para = new SqlParameter("@Grade", Grade);
            para.Value = Grade;
            db2.Insert(sqlstr,para);
            //Response.Redirect("UserScore.aspx"); 
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}