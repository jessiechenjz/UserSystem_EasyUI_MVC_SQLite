using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem_EasyUI_MVC_SQLite.Web.Controllers.Fliters
{
    //action的拦截器
    public class CheckLoginFliter: FilterAttribute, IActionFilter
	{
        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
            if (HttpContext.Current.Session["user"] == null)
            {
                filterContext.HttpContext.Response.Write("-1");
            }
        }

        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (HttpContext.Current.Session["user"] == null)
            {
                //filterContext.HttpContext.Response.Write("-1");
                filterContext.Result = new RedirectResult("/Account/Login");
            }
        }

        
	}
}