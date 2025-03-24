using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckManagementSystem
{
    public partial class Packers_Movers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Getclick_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);

            string sqluery = "";
            sqluery = "select * from pincode_master where countryid=91 and pincode in ('" + Request.Form["from"].ToString() + "','" + Request.Form["to"].ToString() + "')";


            try
            {
                SqlCommand sqlcmd = new SqlCommand(sqluery, sqlcon);
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = sqlcmd;
                DataTable tb = new DataTable();
                ad.Fill(tb);
                sqlcon.Open();
                if (tb != null && tb.Rows.Count > 0)
                {
                    string jsAlert = "";
                    jsAlert = "<script type='text/javascript'>alert('from " + tb.Rows[0]["City"].ToString() + " to " + tb.Rows[1]["City"].ToString() + "')</script>";
                    ScriptManager.RegisterStartupScript(this, GetType(), "script", jsAlert, false);
                    sqlcon.Close();
                    Response.Redirect("Packers_MoversInfo.aspx?from='%" + tb.Rows[0]["City"].ToString() + "%'&to='%" + tb.Rows[1]["City"].ToString() + "%'", false);
                }


            }
            catch (Exception ex)
            {
                sqlcon.Close();
                return;
            }
        }

        protected void G1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);

            string sqluery = "";
            sqluery = "select * from pincode_master where countryid=91 and pincode in ('" + Request.Form["from"].ToString() + "','" + Request.Form["to"].ToString() + "')";


            try
            {
                SqlCommand sqlcmd = new SqlCommand(sqluery, sqlcon);
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = sqlcmd;
                DataTable tb = new DataTable();
                ad.Fill(tb);
                sqlcon.Open();
                if (tb != null && tb.Rows.Count > 0)
                {
                    string jsAlert = "";
                    jsAlert = "<script type='text/javascript'>alert('from " + tb.Rows[0]["City"].ToString() + " to " + tb.Rows[1]["City"].ToString() + "')</script>";
                    ScriptManager.RegisterStartupScript(this, GetType(), "script", jsAlert, false);
                    sqlcon.Close();
                    Response.Redirect("Packers_MoversInfo.aspx?from='%" + tb.Rows[0]["City"].ToString() + "%'&to='%" + tb.Rows[1]["City"].ToString() + "%'", false);
                }


            }
            catch (Exception ex)
            {
                sqlcon.Close();
                return;
            }
        }
    }
}