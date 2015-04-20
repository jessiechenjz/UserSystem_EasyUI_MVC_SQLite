using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem_EasyUI_MVC_SQLite.Web.Controllers
{
    public class PrimController : Controller
    {
        //
        // GET: /Prim/

        public ActionResult Index()
        {
            string json = string.Empty;
            json = @"[{
	""id"":1,
	""text"":""用户管理"",
    ""iconCls"":""icon-ok"",
	""children"":[{
		""id"":11,
		""text"":""Photos"",
		""state"":""closed"",
		""children"":[{
			""id"":111,
			""text"":""Friend""
		},{
			""id"":112,
			""text"":""Wife""
		},{
			""id"":113,
			""text"":""Company""
		}]
	},{
		""id"":12,
		""text"":""Program Files"",
		""children"":[{
			""id"":121,
			""text"":""Intel""
		},{
			""id"":122,
			""text"":""用户添加"",            
			""attributes"":{
                ""url"":""/User/UserManage"",
				""p1"":""Custom Attribute1"",
				""p2"":""Custom Attribute2""
			}
		},{
			""id"":123,
			""text"":""用户查找"",            
			""attributes"":{
                ""url"":""/User/Search"",
				""p1"":""Custom Attribute1"",
				""p2"":""Custom Attribute2""
			}
		},{
			""id"":124,
			""text"":""Games"",
			""checked"":true
		}]
	},{
		""id"":13,
		""text"":""index.html""
	},{
		""id"":14,
		""text"":""about.html""
	},{
		""id"":15,
		""text"":""welcome.html""
	}]
}]";

            return Content(json);
        }

    }
}
