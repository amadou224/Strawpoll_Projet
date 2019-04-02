using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class DetailModel
    {

        public string Question { get; private set; }
        public string Reponse1 { get; private set; }
        public string Reponse2 { get; private set; }
        public string Reponse3 { get; private set; }
        public bool Choix { get; private set; }
       // public int Votant { get; private set; }

        public DetailModel(string question, string reponse1, string reponse2, string reponse3, bool choix/* int votant */)
        {
            this.Question = question;
            this.Reponse1 = reponse1;
            this.Reponse2 = reponse2;               //Constructeur  
            this.Reponse3 = reponse3;
            this.Choix = choix;
          //  this.Votant = votant;
        }
    }


    

}