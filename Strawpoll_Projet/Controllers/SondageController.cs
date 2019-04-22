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
            return View(DataAccess.PageDeVote(idSondage));

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
        public ActionResult FormulaireCreation()
        {
            return View();
        }

        // GESTION POUR LE CHOIX MULTIPLE
        public ActionResult VoteMultiple(string Choix1, string Choix2, string Choix3, int idSondage)
        {
            DataAccess.InsertionVoteBDD(idSondage, Sondage.Nouvo(Choix1), Sondage.Nouvo(Choix2), Sondage.Nouvo(Choix3));
            return RedirectToAction("ResultatVote", new { IDSondage = idSondage });

        }

        // GESTION POUR LE CHOIX UNIQUE 
        public ActionResult VoteSimple(string onechoose, int idSondage)
        {
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
            return RedirectToAction("ResultatVote", new { IDSondage = idSondage }); 
        }


        // GESTION POUR DESACTIVER SON SONDAGE 

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
                return RedirectToAction("SupprimerSondage", new { IdSondage = idSondage });
            }
        }

    }
}