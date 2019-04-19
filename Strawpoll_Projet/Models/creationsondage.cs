using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class creationsondage
    {
        public Sondage NouvoSondage {get; private set;}

        public creationsondage(Sondage nouvoSondage)
        {
            NouvoSondage = nouvoSondage;
        }
    }

    // 


}