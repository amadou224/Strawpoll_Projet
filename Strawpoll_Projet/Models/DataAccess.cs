using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class DataAccess
    {
        const string ConnectString = @"Server=.\SQLExpress;Database=Strawpoll;Integrated Security=true";

        public static int CreerNouveauSondage (DetailModel nouvoSondage)
          
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
     SqlCommand command = new SqlCommand("Insert into Sondage(Questions,Reponse1,Reponse2,Reponse3,Choix) OUTPUT Inserted.ID VALUES (@question,@rep1,@rep2,@rep3,@choix)", connection);
                command.Parameters.AddWithValue("@question",nouvoSondage.Question);
                command.Parameters.AddWithValue("@rep1", nouvoSondage.Reponse1);
                command.Parameters.AddWithValue("@rep2", nouvoSondage.Reponse2);
                command.Parameters.AddWithValue("@rep3", nouvoSondage.Reponse3);
                command.Parameters.AddWithValue("@choix", nouvoSondage.Choix);
                int idInserer = (int)command.ExecuteScalar();
                return idInserer;
               
            }

        }


    }
}