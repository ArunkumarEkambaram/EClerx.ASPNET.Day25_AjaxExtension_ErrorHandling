using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace EClerx.ASPNET.Day25
{
    public partial class Example1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Department", con);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Employees");
                GridDepartment.DataSource = ds;
                GridDepartment.DataBind();
            }
        }

        //protected void Page_Error(object sender, EventArgs e)
        //{
        //    Exception ex = Server.GetLastError();
        //    File.WriteAllText(Server.MapPath("~/ErrorLogger/ErrorFile.Txt"), ex.ToString());
        //    Server.ClearError();
        //    Server.Transfer("ErrorPage.aspx");
        //}
    }
}