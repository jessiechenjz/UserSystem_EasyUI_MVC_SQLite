using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using System.Data;

namespace UserSystem_EasyUI_MVC_SQLite.Common
{
    public static class JsonHelper
    {

        public static string ToJson(object obj)
        {
            JsonSerializerSettings settings = new JsonSerializerSettings();
            settings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
            return JsonConvert.SerializeObject(obj);
        }

        //赋予总记录数
        public static string ToJson(DataTable dt, int records)
        { 
            //Dictionary<string,object> dic = new Dictionary<string,object>();
            //dic.Add("total",records);

            //List<Dictionary<string,object>> jsonlist=new List<Dictionary<string,object>>();

            //dic.Add("rows",ToJson(jsonlist));
            //String json=ToJson(dic);
            //return json.Replace("\\","").Replace("\"[","[").Replace("]\"","]");
            string json=ToJson(dt);
            return @"{""total"":"+records.ToString()+@",""rows"":" + json + "}";
        }
    }
}
