using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Strawpoll_Projet.Controllers
{
    public class SondageController : Controller
    {
        // GET: Sondage
        public ActionResult PageDeGarde()
        {                                           // PAGE D'ACCEUIL 
            return View();
        }

        public ActionResult CreationSondage()
        {
            return View();                              // Creation Sondage avec les questions
        }

        public ActionResult ChoixVotant()
        {
            return View();                      // choix Votant avec les 3 liens


        }

        public ActionResult Vote()
        {
            return View();                      // vote en cours


        }

        public ActionResult EnregistrementVote()
        {
            return View();                      // Votre vote a été pris en charge 
        }

    }
}