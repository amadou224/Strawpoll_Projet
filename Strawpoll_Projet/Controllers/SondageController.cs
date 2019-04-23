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

            //PAGE D'ACCEUIL 
        public ActionResult PageDeGarde()
        {                                        
            return View();
        }


        // CREATION SONDAGE

        public ActionResult CreationSondage(string question, string reponse1, string reponse2, string reponse3, bool? Choixmultiple)
        {
            bool choix = Choixmultiple.GetValueOrDefault(false);

            Sondage sondage = new Sondage(0, question, reponse1, reponse2, reponse3, choix);
            creationsondage Sondage = new creationsondage(sondage);

            int idSondageCree = DataAccess.CreerNouveauSondage(sondage);
            DataAccess.CreerNouveauResultat(idSondageCree);

            return RedirectToAction("ChoixVotant", new { idSondage = idSondageCree });
        }


        // VUE RECUPERATION DE MON SONDAGE CREER 


        public ActionResult ChoixVotant(int idSondage)
        {

            return View(DataAccess.PageDeVote(idSondage));
        }



        public ActionResult Vote(int idSondage)
        {

           Sondage model =DataAccess.PageDeVote(idSondage);
            if (model.ActiveSondage == true)
            {
                 return RedirectToAction("ImpossibleDevoter", new { idSondage = idSondage }); 
            }
            return View(model);

        }


         public ActionResult ImpossibleDevoter(int idSondage)
         {
            Sondage model = new Sondage(idSondage);
            return View(model);
         }


        public ActionResult DejaVoter(int idSondage)
        {
            Sondage model = new Sondage(idSondage);
            return View(model);
        }


        public ActionResult SondageDejaSupprimer(int idSondage)
        {
            Sondage model = new Sondage(idSondage);
            return View(model);
        }

        //GESTION POUR METTRE MON VOTE EN BDD ET ALLER A RESULTAT

        public ActionResult InserervoteBDD(int idSondage, bool? choix1, bool? choix2, bool? choix3)
        {
            return RedirectToAction("ResultatVote");  

        }

        public ActionResult ResultatVote(int idSondage)
        {
            Resultat sondage = DataAccess.RecupererResultatEnBdd(idSondage);
            sondage.PourcentageDesVotes();

            return View(sondage);      
        }

        public ActionResult ContactUs()
        {
            return View();
        }


        // VUE CREATION FORMULAIRE
        public ActionResult FormulaireCreation()
        {
            return View();
        }

        // GESTION POUR LE CHOIX MULTIPLE
        public ActionResult VoteMultiple(string Choix1, string Choix2, string Choix3, int idSondage)
        {

           
            if (TestSondagevote(Request.Cookies, idSondage))
            {
                return RedirectToAction("DejaVoter", new { idSondage = idSondage });
            }
          
            DataAccess.InsertionVoteBDD(idSondage, Sondage.Nouvo(Choix1), Sondage.Nouvo(Choix2), Sondage.Nouvo(Choix3));
            SaveCookie(idSondage);
            return RedirectToAction("ResultatVote", new { IDSondage = idSondage });

        }


        // GESTION POUR LE CHOIX UNIQUE 
        public ActionResult VoteSimple(string onechoose, int idSondage)
        {
         
            if (TestSondagevote(Request.Cookies, idSondage))
            {
                return RedirectToAction("DejaVoter", new { idSondage = idSondage });
            }
           
            Resultat model = new Resultat(0, 0, 0, 0, idSondage);
            switch (onechoose)
            {
                case "Choix1":
                    model.NbreVoteReponse1 = 1;
                    break;

                case "Choix2":
                    model.NbreVoteReponse2 = 1;
                    break;
                case "Choix3":
                    model.NbreVoteReponse3 = 1;
                    break;

            }
            DataAccess.InsertionVoteBDD(idSondage, model.NbreVoteReponse1, model.NbreVoteReponse2, model.NbreVoteReponse3);
            SaveCookie(idSondage);
            return RedirectToAction("ResultatVote", new { IDSondage = idSondage }); 
        }


        // GESTION POUR DESACTIVER SON SONDAGE 

        public ActionResult ConfirmationSuppression(int idSondage)
        {
            Sondage model = new Sondage(idSondage);
            return View(model);
        }


        public ActionResult SupprimerSondage(int idSondage)
        {
            Sondage sondage = DataAccess.DesactiverSondage(idSondage);
            if (sondage.ActiveSondage == false)
            {
                DataAccess.EtatDuSondageMiseAjour(sondage);
                return View(sondage);
            }
            else
            {
                return RedirectToAction("SondageDejaSupprimer", new { IdSondage = idSondage });
            }
        }


        ///  GESTION DU REVOTE UTILISATION COOKIES ////

        public void SaveCookie(int idSondage)
        {
            string Votant = Request.UserHostAddress;
            HttpCookie gestionCookies = new HttpCookie("gestionCookies" + idSondage);
            gestionCookies.Value = "";
            gestionCookies.Expires = DateTime.MaxValue;
            this.Response.Cookies.Add(gestionCookies);
        }
      
        
        public static bool TestSondagevote(HttpCookieCollection cookies, int idSondage)
        {
            return cookies["gestionCookies" + idSondage] != null;
        }       
        
    }
}