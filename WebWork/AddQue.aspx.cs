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
    public partial class AddQue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.Attributes.Add("OnClick", "javascript:return confirm('确定添加吗？')");
                Button1.Attributes.Add("OnClick", "javascript:return confirm('确定添加吗？')");
                Button3.Attributes.Add("OnClick", "javascript:return confirm('确定添加吗？')");
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Question qt = new Question();
            qt.id =TextBox1.Text;
            qt.title = TextBox2.Text;
            qt.answera = TextBox3.Text;
            qt.answerb = TextBox4.Text;
            qt.answerc = TextBox5.Text;
            qt.answerd = TextBox6.Text;
            qt.answer = TextBox7.Text;
            qt.style = TextBox8.Text;
            qt.db = new DataBase();
            qt.InsertSin();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Question qt = new Question();
            qt.id = TextBox9.Text;
            qt.title = TextBox10.Text;
            qt.answera = TextBox11.Text;
            qt.answerb = TextBox12.Text;
            qt.answerc = TextBox13.Text;
            qt.answerd = TextBox14.Text;
            qt.answer = TextBox15.Text;
            qt.style = TextBox16.Text;
            qt.db = new DataBase();
            qt.InsertMut();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Question qt = new Question();
            qt.id = TextBox17.Text;
            qt.title = TextBox18.Text;
            qt.answer = TextBox19.Text;
            qt.style = TextBox20.Text;
            qt.db = new DataBase();
            qt.InsertJud();
        }
    }
}