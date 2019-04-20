using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class Resultat
    {
        public Sondage Vote { get; private set; }
        public int Id_Resultat { get; private set; }
        public int NbreVoteReponse1 { get; set; }
        public int NbreVoteReponse2 { get;  set; }
        public int NbreVoteReponse3 { get;  set; }
        public int NbreTotalVotant { get; private set; }
        public int FK_Id_sondage{ get; private set; }

        // GESTION DES POURCENTAGES 


        public int PoucentageRep1 { get; set; }
        public int PoucentageRep2 { get; set; }
        public int PoucentageRep3 { get; set; }

        public Resultat(int poucentageRep1, int poucentageRep2, int poucentageRep3)
        {
            PoucentageRep1 = poucentageRep1;
            PoucentageRep2 = poucentageRep2;
            PoucentageRep3 = poucentageRep3;
        }

        public Resultat(Sondage vote, int nbreVoteReponse1, int nbreVoteReponse2, int nbreVoteReponse3, int nbreTotalVotant, int fK_Id_sondage)
        {
            Vote = vote;
            NbreVoteReponse1 = nbreVoteReponse1;
            NbreVoteReponse2 = nbreVoteReponse2;
            NbreVoteReponse3 = nbreVoteReponse3;
            NbreTotalVotant = nbreTotalVotant;
           
            FK_Id_sondage = fK_Id_sondage;
        }
        public Resultat(int nbreVoteReponse1, int nbreVoteReponse2, int nbreVoteReponse3, int nbreTotalVotant, int fK_Id_sondage)
        {
           
            NbreVoteReponse1 = nbreVoteReponse1;
            NbreVoteReponse2 = nbreVoteReponse2;
            NbreVoteReponse3 = nbreVoteReponse3;
            NbreTotalVotant = nbreTotalVotant;

            FK_Id_sondage = fK_Id_sondage;
        }


        public Resultat(Sondage vote, int nbreVoteReponse1, int nbreVoteReponse2, int nbreVoteReponse3, int nbreTotalVotant, int fK_Id_sondage, int poucentageRep1, int poucentageRep2, int poucentageRep3)
        {
            Vote = vote;
            NbreVoteReponse1 = nbreVoteReponse1;
            NbreVoteReponse2 = nbreVoteReponse2;
            NbreVoteReponse3 = nbreVoteReponse3;
            NbreTotalVotant = nbreTotalVotant;

            FK_Id_sondage = fK_Id_sondage;
            PoucentageRep1 = poucentageRep1;
            PoucentageRep2 = poucentageRep2;
            PoucentageRep3 = poucentageRep3;
        }

        // FONCTION  pourcentage 
        public void PourcentageDesVotes()
        {
            
            if (NbreTotalVotant == 0)
            {

                PoucentageRep1 = 0;
                PoucentageRep2 =0;
                PoucentageRep3 =0;

            }
            else
            {
                PoucentageRep1 = NbreVoteReponse1 * 100 / (NbreTotalVotant);
                  PoucentageRep2 = NbreVoteReponse2 * 100 / (NbreTotalVotant);
                 PoucentageRep3 = NbreVoteReponse3 * 100 / (NbreTotalVotant);
            }
           
           
        }
    }
}