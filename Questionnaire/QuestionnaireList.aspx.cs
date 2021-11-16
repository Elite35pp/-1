using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Questionnaire.DBSource;
using System.Configuration;

namespace Questionnaire
{
    public partial class QuestionnaireList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
        }

        private void BindRepeater()
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM QuestionnaireList", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        RptQt.DataSource = dt;
                        RptQt.DataBind();
                    }
                }
            }
        }

        DataTable dt = new DataTable("QuestionnaireList");
        protected void btnSearch_Click(object sender, EventArgs e)
        {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
                {
                    if (con.State == ConnectionState.Closed) con.Open();
                        using (SqlCommand cmd = new SqlCommand("SELECT * FROM QuestionnaireList WHERE QtCaption=@QtCaption"))
                        {
                            cmd.Parameters.AddWithValue("QtCaption", txtSearch.Text);
                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            adapter.Fill(dt);
                            RptQt.DataSource = dt;
                        }                   
                }

        }
        private void txtSearch_KeyPress(object sender, EventArgs e)
        {

        }
    }
}


       