using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using testuser.Models;

namespace testuser.Controllers
{
    public class HomeController : Controller
    {

        //
        // GET: /About/
        public ActionResult About()
        {
            return View();
        }
        //
        // GET: /Home/
        private testusersdbEntities _db = new testusersdbEntities();
        public ActionResult Index()
        {
            return View(_db.users1.ToList());
        }

        //
        // GET: /Home/Details/5

        public ActionResult Details(int id)
        {
            users us = _db.users1.First();
            if (us == null)
            { 
               
            }
           

            return View(us);
        }

        //
        // GET: /Home/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create( users user)
        {
            if (!ModelState.IsValid)

                return View();

           // _db.AddTousers(user);
            _db.AddTousers1(user);
            _db.SaveChanges();

            return RedirectToAction("Index");

        }
        
        //
        // GET: /Home/Edit/5
 
        public ActionResult Edit(int id)
        {
            var movieToEdit = (from m in _db.users1

                               where m.id == id

                               select m).First();

            return View(movieToEdit);

        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        public ActionResult Edit(users us)
        {
            var ou = (from m in _db.users1

                                 where m.id == us.id

                                 select m).First();

            if (!ModelState.IsValid)
                                return View(ou);


                _db.ApplyPropertyChanges(ou.EntityKey.EntitySetName, us);


          //  _db.ApplyCurrentValues(ou.EntityKey.EntitySetName, us);
            _db.SaveChanges();
  
            return RedirectToAction("Index");

        }

        //
        // GET: /Home/Delete/5
 
        public ActionResult Delete(int id)
        {
            var ou1 = (from m in _db.users1 where m.id ==id                  select m).First();
            return View(ou1);
        }

        //
        // POST: /Home/Delete/5

        [HttpPost]
        public ActionResult Delete(users us)
        {
            var ou = (from m in _db.users1  where m.id == us.id  select m).First();
            
            if (!ModelState.IsValid)

                return View(ou);
            _db.ApplyOriginalValues(ou.EntityKey.EntitySetName, us);
            //_db.ApplyPropertyChanges(ou.EntityKey.EntitySetName, us);

            _db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
