using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebWork.DataBaseClass;
using System.Data;
using System.Data.SqlClient;

namespace WebWork.DataBaseClass
{
    public class Question
    {
        public string id;
        public string title;
        public string answera;
        public string answerb;
        public string answerc;
        public string answerd;
        public string answer;
        public string style;
        public DataBase db;

        public void InsertSin()
        {
            string str = "insert into SingleProblem values(@ID,@Title,@AnswerA,@AnswerB,@AnswerC,@AnswerD,@Answer,@Style)";
            SqlParameter[] para = new SqlParameter[8];
            para[0] = new SqlParameter("@ID",id);
            para[1] = new SqlParameter("@Title", title);
            para[2] = new SqlParameter("@AnswerA", answera);
            para[3] = new SqlParameter("@AnswerB", answerb);
            para[4] = new SqlParameter("@AnswerC", answerc);
            para[5] = new SqlParameter("@AnswerD", answerd);
            para[6] = new SqlParameter("@Answer", answer);
            para[7] = new SqlParameter("@Style", style);
            db.Insert(str,para);
        }
        public void InsertMut()
        {
            string str = "insert into MutilProblem values(@ID,@AnswerA,@AnswerB,@AnswerC,@AnswerD,@Answer,@Title,@Style)";
            SqlParameter[] para = new SqlParameter[8];
            para[0] = new SqlParameter("@ID", id);  
            para[1] = new SqlParameter("@AnswerA", answera);
            para[2] = new SqlParameter("@AnswerB", answerb);
            para[3] = new SqlParameter("@AnswerC", answerc);
            para[4] = new SqlParameter("@AnswerD", answerd);
            para[5] = new SqlParameter("@Answer", answer);
            para[6] = new SqlParameter("@Title", title);
            para[7] = new SqlParameter("@Style", style);
            db.Insert(str, para);
        }
        public void InsertJud()
        {
            string str = "insert into JudgeProblem values(@ID,@Title,@Answer,@Style)";
            SqlParameter[] para = new SqlParameter[4];
            para[0] = new SqlParameter("@ID", id);
            para[1] = new SqlParameter("@Title", title);
            para[2] = new SqlParameter("@Answer", answer);
            para[3] = new SqlParameter("@Style", style);
            db.Insert(str, para);
        }
    }
}