using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Questionnaire.DBSource
{
    class QuestionnaireProblem
    {
        private static string GetConnectionString()
        {
            string val = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            return val;
        }

        public static DataTable GetQuestionnaireList(string 問卷辨識碼)
        {
            string connectionString = GetConnectionString();
            string dbCommandString =
                $@"SELECT
                   問卷ID
                  ,問卷標題
                  ,開始時間
                  ,結束時間
                  ,建立時間
                  ,是否啟用
                  ,問題數量
                    FROM 問卷
                    WHERE [問卷辨識碼] = @問卷辨識碼
                    ";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(dbCommandString, connection))
                {
                    command.Parameters.AddWithValue("@問卷辨識碼", 問卷辨識碼);
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        reader.Close();

                        return dt;
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
