using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class Result
    {
        public string Reponse1 { get; private set; }
        public string Reponse2 { get; private set; }
        public string Reponse3 { get; private set; }
        public int Votant { get; private set; }
        public int FK_Id_sondage { get; private set; }

        public Result(string reponse1, string reponse2, string reponse3, int votant, int fK_Id_sondage)
        {
            Reponse1 = reponse1;
            Reponse2 = reponse2;
            Reponse3 = reponse3;
            Votant = votant;
            FK_Id_sondage = fK_Id_sondage;
        }
    }
}