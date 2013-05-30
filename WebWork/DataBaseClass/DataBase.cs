using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebWork.DataBaseClass
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
        public DataSet GetDataSet(string Name,SqlParameter para)//从数据库取出题目
        {
            Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.Add(para);
            cmd.CommandText = Name;
            cmd.Connection = Connection;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            cmd.Parameters.Clear();
            Close();
            return dataset;
        }
        public DataSet GetDataSet(string Name)//从数据库取出题目
        {
            Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Name;
            cmd.Connection = Connection;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            cmd.Parameters.Clear();
            Close();
            return dataset;
        }
        public void Insert(string str,SqlParameter para)
        {
            Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.Add(para);
            cmd.CommandText = str;
            cmd.Connection = Connection;
            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            Close();
        }
    }
}