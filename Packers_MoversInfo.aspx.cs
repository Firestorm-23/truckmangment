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
    public partial class Packers_MoversInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["from"] != null && Request.QueryString["to"] != null)
            {
                SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);
                string sqluery = "";
                sqluery = "select * from tblTruckManagement where Driver_Location like  " + Request.QueryString["from"] + " or Driver_Location like " + Request.QueryString["to"] + " and ispacking=1";
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
                        sqlcon.Close();
                        grdDriverInfo.DataSource = tb;
                        grdDriverInfo.DataBind();
                    }

                }

                catch (Exception ex)
                {
                    sqlcon.Close();
                    return;
                }



            }
            else
            {
                string jsAlert = "<script>alert('No data found!!')</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Alert", jsAlert, false);
            }
        }

        protected void grdDriverInfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;

                if (drv == null)
                {
                    return;
                }

                Label lblMobileNo = (Label)e.Row.FindControl("lblMobileNo");
                LinkButton lbtnGetinfo = (LinkButton)e.Row.FindControl("lbtnGetinfo");

                lbtnGetinfo.Attributes.Add("href", "https://api.whatsapp.com/send?phone=" + lblMobileNo.Text + "&text=Hi");

            }
        }
    }
}