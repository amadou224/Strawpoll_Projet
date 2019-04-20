using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class ResultatVote
    {
        public Sondage ResultatVoteSondage { get; private set; }
        public Resultat ResultatVoteResultat { get; private set; }

        public ResultatVote (Sondage resultatVoteSondage, Resultat resultatVoteResultat)
        {
            ResultatVoteSondage = resultatVoteSondage;
            ResultatVoteResultat = resultatVoteResultat;

        }
    }
}