using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class creationsondage
    {
        public DetailModel NouvoSondage {get; private set;}

        public creationsondage(DetailModel nouvoSondage)
        {
            NouvoSondage = nouvoSondage;
        }
    }
}