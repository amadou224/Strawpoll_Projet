using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Strawpoll_Projet.Models;


namespace Strawpoll_Projet.Controllers
{
    public class SondageController : Controller
    {
        // GET: Sondage
        public ActionResult PageDeGarde()
        {                                           //PAGE D'ACCEUIL 
            return View();
        }

        public ActionResult CreationSondage() //(string question, string reponse1, string reponse2, string reponse3,bool choix)
        {
            //DetailModel sondage = DataAccess.CreerNouveauSondage(question, reponse1, reponse2, reponse3, choix);
            return View();                         //Creation Sondage avec les questions
        }

        public ActionResult ChoixVotant()
        {
            return View();                       //choix Votant avec les 3 liens


        }

        public ActionResult Vote()
        {
            return View();                      //Vote en cours


        }

        public ActionResult EnregistrementVote()
        {
            return View();                      // Votre vote a été pris en charge 
        }

    }
}