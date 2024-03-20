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
        protected void Page_Load(object sender, EventArgs e)
        {
            nombre.Text = Strings.nombreIA;
            Infomessage.Text = Strings.Infomessage;
            request.Text = Strings.request;
        }
    }
}