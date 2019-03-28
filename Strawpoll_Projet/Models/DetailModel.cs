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
        public bool ChoixMultiple { get; private set; }
        public int votant { get; private set; }

    }

}