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

        public ActionResult CreationSondage( string question ,string reponse1 , string reponse2, string reponse3, bool? Choixmultiple) 
        {
            bool choix = Choixmultiple.GetValueOrDefault(false);
            Sondage sondage = new Sondage(0,question, reponse1, reponse2, reponse3, choix);
            creationsondage Sondage = new creationsondage(sondage);
            int idSondageCree = DataAccess.CreerNouveauSondage(sondage);
           
            return RedirectToAction("ChoixVotant",new {idSondage = idSondageCree });                         
        }

        // View récuperation de mon sondage Creer  
        public ActionResult ChoixVotant(int idSondage)
        {

            return View(DataAccess.PageDeVote(idSondage));                    
        }
        
        public ActionResult Vote(int idSondage)
        {
            return View(DataAccess.PageDeVote(idSondage));
           
        }

   

        public ActionResult EnregistrementVote()
        {
            return View();                    
        }


        public ActionResult ResultatVote()
        {
            return View();
        }


        public ActionResult ContactUs()
        {
            return View();
        }
        public ActionResult FormulaireCreation()
        {
            return View();
        }

        





    }
}