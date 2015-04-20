using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UserSystem_EasyUI_MVC_SQLite.Web.Controllers.Fliters;

namespace UserSystem_EasyUI_MVC_SQLite.Web.Controllers
{
    [CheckLoginFliter]
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UserManage()
        {
            return View();
        }

    }
}
