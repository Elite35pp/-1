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
    public partial class QuestionnaireDetail : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            string QtGuid = this.Request.QueryString["QtGuid"];
            DataRow dr = QuestionnaireManager.GetQuestionnaireList(QtGuid);

            ltlName.Text = dr["QtCaption"].ToString();
            ltlState.Text = dr["OnOff"].ToString();
            lblStTime.Text = dr["StTime"].ToString();
            lblEdTime.Text = dr["EdTime"].ToString();
            ltlnaiyou.Text = dr["QtContent"].ToString();



        }
    }
}