using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClerx.ASPNET.Day25
{
    public partial class Example3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            LblPanel1Time.Text = DateTime.Now.ToString();
            LblPanel2Time.Text = DateTime.Now.ToString();
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            LblPanel1Time.Text = DateTime.Now.ToString();
            LblPanel2Time.Text = DateTime.Now.ToString();
        }
    }
}