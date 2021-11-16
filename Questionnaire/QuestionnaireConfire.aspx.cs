using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Questionnaire.DBSource;

namespace Questionnaire
{
    public partial class QuestionnaireConfire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = @"Data Source=localhost;Initial Catalog=Questionnaire;Integrated Security=True;";

                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM 問卷", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ltlQTName.Text = $"{dr["問卷標題"].ToString()}";
                    ltlState.Text = $"{dr["是否啟用"].ToString()}";
                    ltlStTime.Text = $"{dr["開始時間"].ToString()}";
                    ltlEdTime.Text = $"{dr["結束時間"].ToString()}";
                }
                
            }


            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = @"Data Source=localhost;Initial Catalog=Questionnaire;Integrated Security=True;";

                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM 答題人資料", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ltlName.Text = $"{dr["姓名"].ToString()}";
                    ltlPhone.Text = $"{dr["手機"].ToString()}";
                    ltlEmail.Text = $"{dr["Email"].ToString()}";
                    ltlAge.Text = $"{dr["年齡"].ToString()}";
                }
            }

        }
    }
}