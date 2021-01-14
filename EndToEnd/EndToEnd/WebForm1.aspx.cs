using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using EndToEnd.Helpers;

namespace EndToEnd
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static StudentHelper studentHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            studentHelper = new StudentHelper();
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]

        public static void AddStudent()
        {
            var request = HttpContext.Current.Request["Student"];

            var stdconvert = JsonConvert.DeserializeObject<Model>(request);

            studentHelper.Insert(stdconvert.name, stdconvert.fname, stdconvert.classname, stdconvert.sect);
        }

        public class Model
        {
            public string name { get; set; }
            public string fname { get; set; }
            public string classname { get; set; }
            public string sect { get; set; }
        }
    }
}