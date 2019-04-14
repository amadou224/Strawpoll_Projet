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

          public static int CreerNouveauSondage(Sondage nouvoSondage)

          {
              using (SqlConnection connection = new SqlConnection(ConnectString))
              {
                  connection.Open();
                  SqlCommand command = new SqlCommand("Insert into Sondage(Questions,Reponse1,Reponse2,Reponse3,Choix) OUTPUT Inserted.ID VALUES (@question,@rep1,@rep2,@rep3,@choix)", connection);
                  command.Parameters.AddWithValue("@question", nouvoSondage.Questions);
                  command.Parameters.AddWithValue("@rep1", nouvoSondage.Reponse1);
                  command.Parameters.AddWithValue("@rep2", nouvoSondage.Reponse2);
                  command.Parameters.AddWithValue("@rep3", nouvoSondage.Reponse3);
                  command.Parameters.AddWithValue("@choix", nouvoSondage.Choix);              
                  int idInserer = (int)command.ExecuteScalar(); 
                  return idInserer;
              }

          }
          
      /*  public static int CreerNouveauSondage(Sondage nouvoSondage)

        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Insert into Sondage(Questions,Reponse1,Reponse2,Reponse3,Choix,NbreVotantRep1,NbreVotantRep2,NbreVotantRep3,NbreTotalVotant) OUTPUT Inserted.ID VALUES (@question,@rep1,@rep2,@rep3,@choix,@nbreRep1,@nbreRep2,@nbreRep3,@nbreTotal)", connection);
                command.Parameters.AddWithValue("@question", nouvoSondage.Question);
                command.Parameters.AddWithValue("@rep1", nouvoSondage.Reponse1);
                command.Parameters.AddWithValue("@rep2", nouvoSondage.Reponse2);
                command.Parameters.AddWithValue("@rep3", nouvoSondage.Reponse3);
                command.Parameters.AddWithValue("@choix", nouvoSondage.Choix);
                command.Parameters.AddWithValue("@nbreRep1",nouvoSondage.NbreVotantRep1);
                command.Parameters.AddWithValue("@nbreRep2", nouvoSondage.NbreVotantRep2);
                command.Parameters.AddWithValue("@nbreRep3", nouvoSondage.NbreVotantRep3);
                command.Parameters.AddWithValue("@nbreTotal", nouvoSondage.NbreTotalVotant);
                int idInserer = (int)command.ExecuteScalar();
                return idInserer;
            }

        }         */



        // PAGE VOTE SELECTION DES ELEMENTS DE MON SONDAGE POUR POUVOIR VOTER 

        public static Sondage PageDeVote(int idSondage)
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
               

                Sondage sondage = new Sondage(id, question, reponse1, reponse2, reponse3, choix);
                return sondage;
            }
        }

        // MODIFICATION 

        public static void InsertionVoteBDD(int ID)            //d'autres parametres a mettre  int NbreVotantRep1)
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
   SqlCommand command = new SqlCommand("UPDATE Sondage SET NbreVotantRep1=NbreVotantRep1+1 WHERE ID=@id", connection);
              
                command.Parameters.AddWithValue("@id",ID);
                command.ExecuteNonQuery();
            }
        }

        public static void InsertionVoteBDD2(int ID)
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("UPDATE Sondage SET NbreVotantRep2=NbreVotantRep2+1 WHERE ID=@id", connection);
                command.Parameters.AddWithValue("@id",ID);
                command.ExecuteNonQuery();
                
            }
        }

        public static void InsertionVoteBB3(int ID)
        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("UPDATE Sondage SET NbreVotantRep3=NbreVotantRep3+1 WHERE ID=@id", connection);
                command.Parameters.AddWithValue("@id", ID);
                command.ExecuteNonQuery();

            }
        }


    }
}