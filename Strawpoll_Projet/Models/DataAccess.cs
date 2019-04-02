using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class DataAccess
    {
        const string ConnectString = @"Server=.\SLQExpress;Database=Strawpoll;Integrated Security=true";

        public static void CreerNouveauSondage (string Question, string Reponse1, string Reponse2, string Reponse3, bool Choix)
          
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Insert into Sondage(Questions,Reponse1,Reponse2,Reponse3,Choix)" +
                                                          "Values(@question,@rep1,@rep2,@rep3,@choix)", connection);
                command.Parameters.AddWithValue("@question",Question);
                command.Parameters.AddWithValue("@rep1",Reponse1);
                command.Parameters.AddWithValue("@rep2", Reponse2);
                command.Parameters.AddWithValue("@rep3",Reponse3);
                command.Parameters.AddWithValue("@choix", Choix);
                command.ExecuteNonQuery();
            }

        }


    }
}