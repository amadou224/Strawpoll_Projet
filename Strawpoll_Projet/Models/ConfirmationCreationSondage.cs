using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Strawpoll_Projet.Models
{
    public class ConfirmationCreationSondage
        // Classe confimation de la creation d'un sondage pour pouvoir faire notre vote 
    {
        public DetailModel SondageConfirme { get; private set; }

        public ConfirmationCreationSondage(DetailModel sondageConfirme)
        {
            SondageConfirme = sondageConfirme;
        }
    }
}