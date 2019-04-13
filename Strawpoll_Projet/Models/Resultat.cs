using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class Resultat
    {
        public int Id_Resultat { get; private set; }
        public int NbreVoteReponse1 { get; private set; }
        public int NbreVoteReponse2 { get; private set; }
        public int NbreVoteReponse3 { get; private set; }
        public int NbreTotalVotant { get; private set; }
        public int FK_Id_sondage{ get; private set; }

        public Resultat(int id_Resultat, int nbreVoteReponse1, int nbreVoteReponse2, int nbreVoteReponse3, int nbreTotalVotant, int fK_Id_sondage)
        {
            Id_Resultat = id_Resultat;
            NbreVoteReponse1 = nbreVoteReponse1;
            NbreVoteReponse2 = nbreVoteReponse2;
            NbreVoteReponse3 = nbreVoteReponse3;
            NbreTotalVotant = nbreTotalVotant;
            FK_Id_sondage = fK_Id_sondage;
        }
    }
}