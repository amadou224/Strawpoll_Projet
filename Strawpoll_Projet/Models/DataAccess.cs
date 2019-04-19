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
        //  INSERTION EN BASE DE DONNEES TABLE RESULTAT DONNEES DU VOTE 

        public static void CreerNouveauResultat(int idSondage)

        {
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Insert into Resultat(NbreVoteReponse1,NbreVoteReponse2,NbreVoteReponse3,NbreVotant,FK_Id_sondage) VALUES (@rep1,@rep2,@rep3,@nbreTotal,@fkidS)", connection);
                command.Parameters.AddWithValue("@rep1", 0);
                command.Parameters.AddWithValue("@rep2", 0);
                command.Parameters.AddWithValue("@rep3", 0);
                command.Parameters.AddWithValue("@nbreTotal", 0);
                command.Parameters.AddWithValue("@fkidS", idSondage);

                command.ExecuteNonQuery();
            }

        }


        // PAGE VOTE SELECTION DES ELEMENTS DE MON SONDAGE POUR POUVOIR VOTER Recuperation de l'id du sondage 

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

        // MODIFICATION TABLE RESULTAT & MISE A JOUR DE LA TABLE

        public static void InsertionVoteBDD(int idSondage, int choix1, int choix2, int choix3)
        {
            int nombreVoteTotal = choix1 + choix2 + choix3;
            using (SqlConnection connection = new SqlConnection(ConnectString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("UPDATE Resultat SET NbreVoteReponse1 = NbreVoteReponse1 + @ch1, NbreVoteReponse2 = NbreVoteReponse2 + @ch2, NbreVoteReponse3 = NbreVoteReponse3 + @ch3, NbreVotant=NbreVotant+@nombreTotal WHERE FK_Id_sondage = @id", connection);
                command.Parameters.AddWithValue("@ch1", choix1);
                command.Parameters.AddWithValue("@ch2", choix2);
                command.Parameters.AddWithValue("@ch3", choix3);
                command.Parameters.AddWithValue("@nombreTotal", nombreVoteTotal);
                command.Parameters.AddWithValue("@id", idSondage);
                command.ExecuteNonQuery();
            }
        }


    }
}