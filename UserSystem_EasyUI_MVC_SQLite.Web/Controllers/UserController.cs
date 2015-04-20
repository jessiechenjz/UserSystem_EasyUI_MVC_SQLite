using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem_EasyUI_MVC_SQLite.Web.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UserManage()
        {
            return View();
        }

        public ActionResult Search()
        {
            return View();
        }
    }
}
