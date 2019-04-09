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

        public ActionResult CreationSondage(int idSondage, string question ,string reponse1 , string reponse2, string reponse3, bool? Choixmultiple) //(
        {
            bool choix = Choixmultiple.GetValueOrDefault(false);
            DetailModel sondage = new DetailModel(idSondage,question, reponse1, reponse2, reponse3, choix);
            creationsondage Sondage = new creationsondage(sondage);
            int idSondageCree = DataAccess.CreerNouveauSondage(sondage);
           
            return RedirectToAction("ChoixVotant",new {idSondage = idSondageCree });                         
        }

        public ActionResult ChoixVotant()
        {
            return View();                       //choix Votant avec les 3 liens


        }
        // View Vote utiliser cette action pour faire appel a ma vieux cshtml Vote dans le @model 
        public ActionResult Vote(int idSondage)
        { 
                if (DataAccess.PageDeVote(idSondage,out DatailModel sondage))
                {
                   return View();  
                }
                else 
                {
                 string messageErreur ="Problème pour trouver le sondage en BDD";
                    return RedirectToAction("Erreur",new {messageErreur = messageErreur});
                }
   
        }

      /*   public ActionResult ConfirmationLecture(int idLivre)
        {          
            if (DataAccess.RecupererConfirmationLectureModel(idLivre, out Livre model))
            {
                ConfirmationLectureModel livreConfirme = new ConfirmationLectureModel(model);               
                return View(livreConfirme);
            }
            else
            {
                string messageErreur = "Probleme base de donnée en lecture Livre";
                return RedirectToAction("Erreur", new { messageErreur = messageErreur} );
            }
            
        }
        */














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