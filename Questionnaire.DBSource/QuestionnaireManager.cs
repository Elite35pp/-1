using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Questionnaire.DBSource
{
    public class QuestionnaireManager
    {
        private static string GetConnectionString()
        {
            string val = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            return val;
        }

        public static DataRow GetQuestionnaireList(string QtGuid)
        {
            string connectionString = GetConnectionString();
            string dbCommandString =
                $@"SELECT
                   QtID
                  ,QtCaption
                  ,StTime
                  ,EdTime
                  ,CtTime
                  ,OnOff
                  ,QtAmount
                  ,QtGuid
                  ,QtContent
                    FROM QuestionnaireList
                    WHERE QtGuid = @QtGuid
                    ";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(dbCommandString, connection))
                {
                    command.Parameters.AddWithValue("@QtGuid", QtGuid);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        reader.Close();

                        if (dt.Rows.Count == 0)
                            return null;

                        DataRow dr = dt.Rows[0];
                        return dr;
                    }
                    catch (Exception ex)
                    {
                        Logger.WriteLog(ex);
                        return null;
                    }
                }
            }
        }
    }
}
