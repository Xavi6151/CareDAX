using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareDAX.Backend.Strings;

namespace CareDAX.Frontend.HTML
{
    public partial class DAXIA : System.Web.UI.Page
    {

        protected string InfomessageValue { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            nombre.Text = StringsDaxia.nombreIA;
            InfomessageValue = StringsDaxia.Infomessage;
        }
    }
}