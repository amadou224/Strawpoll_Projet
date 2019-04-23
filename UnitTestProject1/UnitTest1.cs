using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Strawpoll_Projet.Models;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
     


        [TestMethod]
        public void TestMethod1()
        {
            Sondage test1 = new Sondage(1,"","","","",false);
            Assert.IsFalse(test1.ID < 0, "Votre ID doit etre sup a 0");

        }
        [TestMethod]
        public void TestMethod2()
        {
            Sondage test2 = new Sondage(1, "question", "", "", "", false);
            Assert.IsFalse(test2.Questions =="", "Votre Question doit pas etre vide");

        }
        [TestMethod]
        public void TestMethod3()
        {
            Sondage test3 = new Sondage(1, "question", "rep1", "", "", false);
            Assert.IsFalse(test3.Reponse1 == "", "Il faut une prémière reponse");

        }
        [TestMethod]
        public void TestMethod4()
        {
            Sondage test4 = new Sondage(1, "question", "rep1", "rep2", "", false);
            Assert.IsFalse(test4.Reponse2 == "", "Il faut une deuxième reponse");

        }

        [TestMethod]
        public void TestMethod5()
        {
            Sondage test5 = new Sondage(1, "question", "rep1", "rep2", "rep3", false);
            Assert.IsFalse(test5.Reponse3 == "", "Il faut une deuxième reponse");

        }






    }
}
