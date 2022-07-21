using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace EClerx.ASPNET.Day25
{
    public partial class Example2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DdlColors_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblMessage.ForeColor = Color.FromName(DdlColors.SelectedItem.ToString());
        }
    }
}