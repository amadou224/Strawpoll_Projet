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



        // CREATION D'UN SONDAGE ET INSERTION EN BASE DE DONNEES

        public static int CreerNouveauSondage(DetailModel nouvoSondage)

        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Insert into Sondage(Questions,Reponse1,Reponse2,Reponse3,Choix) OUTPUT Inserted.ID VALUES (@question,@rep1,@rep2,@rep3,@choix)", connection);
                command.Parameters.AddWithValue("@question", nouvoSondage.Question);
                command.Parameters.AddWithValue("@rep1", nouvoSondage.Reponse1);
                command.Parameters.AddWithValue("@rep2", nouvoSondage.Reponse2);
                command.Parameters.AddWithValue("@rep3", nouvoSondage.Reponse3);
                command.Parameters.AddWithValue("@choix", nouvoSondage.Choix);
                int idInserer = (int)command.ExecuteScalar();
                return idInserer;
            }

        }
        // PAGE VOTE SELECTION DES ELEMENTS DE MON SONDAGE 
        //public static bool PageDeVote(int idSondage, out DetailModel sondage)
        //{
        //    using (SqlConnection connection = new SqlConnection(ConnectString))
        //    {
        //        connection.Open();
        //        SqlCommand command = new SqlCommand("Select Question,Reponse1,Reponse2,Reponse3,Choix FROM Sondage WHERE ID=@idSondage", connection);
        //        command.Parameters.AddWithValue("@idSondage", idSondage);
        //        SqlDataReader dataReader = command.ExecuteReader();
        //        if (dataReader.Read())
        //        {
        //            string question = (string)dataReader["Question"];
        //            string reponse1 = (string)dataReader["Reponse1"];
        //            string reponse2 = (string)dataReader["Reponse2"];
        //            string reponse3 = (string)dataReader["Reponse3"];
        //            bool choix = (bool)dataReader["Choix"];

        //            sondage = new DetailModel(idSondage, question, reponse1, reponse2, reponse3, choix);
        //            return true;
        //        }
        //        else
        //        {
        //            sondage = null;

        //            return false;
        //        }
        //    }




        // PAGE VOTE SELECTION DES ELEMENTS DE MON SONDAGE
        public static DetailModel PageDeVote (int idSondage)
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Select * FROM Sondage WHERE ID=@idSondage", connection);
                command.Parameters.AddWithValue("@idSondage", idSondage);
                SqlDataReader dataReader = command.ExecuteReader();
                dataReader.Read();
                
                    int id = (int)dataReader["ID"];
                    string question = (string)dataReader["Questions"];
                    string reponse1 = (string)dataReader["Reponse1"];
                    string reponse2 = (string)dataReader["Reponse2"];
                    string reponse3 = (string)dataReader["Reponse3"];
                    bool choix = (bool)dataReader["Choix"];

                    DetailModel sondage = new DetailModel(id,question, reponse1, reponse2, reponse3, choix);
                    return sondage;
                
               
                
                    
                    
                
            }



        }
}
}