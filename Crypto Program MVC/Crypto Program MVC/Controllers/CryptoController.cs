using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;

namespace Crypto_Program_MVC.Controllers
{
    public class CryptoController : Controller
    {
        CspParameters cspp = new CspParameters();
        RSACryptoServiceProvider rsa;
        const string keyName = "Key01";

        // GET: Crypto
        public ActionResult Index()
        {
            ViewBag.BlaBla = "een andere tekst";
            return View();
           
        }

      /*  // GET: Crypto/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Crypto/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Crypto/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Crypto/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Crypto/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Crypto/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Crypto/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
*/
        public ActionResult CreateKeys()
        {
          
            // Stores a key pair in the key container.
            cspp.KeyContainerName = keyName;
            rsa = new RSACryptoServiceProvider(cspp);
            rsa.PersistKeyInCsp = true;

            Console.WriteLine("Hello");

            ViewBag.BlaBla = "methode is uitgevoerd";
            return ViewBag.BlaBla;
        } 
    }
}
