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
    public partial class QuestionnaireCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = @"Data Source=localhost;Initial Catalog=Questionnaire;Integrated Security=True;";

                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM QuestionnaireList", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ltlQTName.Text = $"{dr["QtCaption"].ToString()}";
                }
            }
        }
    }
}