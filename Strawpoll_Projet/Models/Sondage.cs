using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class Sondage
    {
        public int ID { get; private set; }
        public string Questions { get; private set; }
        public string Reponse1 { get; private set; }
        public string Reponse2 { get; private set; }
        public string Reponse3 { get; private set; }
        public bool Choix { get; private set; }
        public bool ActiveSondage { get; private set; }

        public Sondage(int iD, string questions, string reponse1, string reponse2, string reponse3, bool choix)
        {
            ID = iD;
            Questions = questions;
            Reponse1 = reponse1;
            Reponse2 = reponse2;
            Reponse3 = reponse3;
            Choix = choix;
            ActiveSondage = false;
        }
        public Sondage(int iD, string questions, string reponse1, string reponse2, string reponse3, bool choix, bool activeSondage)
        {
            ID = iD;
            Questions = questions;
            Reponse1 = reponse1;
            Reponse2 = reponse2;
            Reponse3 = reponse3;
            Choix = choix;
            ActiveSondage = activeSondage;
        }
        // GESTION DU CHOIX MULTIPLE OU PAS 
        public static int Nouvo(string variable)
        {
            int choix = 0;
            if (variable != null)
            {
                choix = 1;
            }
            return choix;

        }


       


    }






}