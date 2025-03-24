using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckManagementSystem
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static bool isValidPhoneNumber(String PhoneNUMBERP)
        {
            string regex = "^([0-9]{10})$";
            Regex p = new Regex(regex);
            if (PhoneNUMBERP == null)
            {
                return false;
            }
            Match m = p.Match(PhoneNUMBERP);
            return m.Success;
        }
        public static bool isValidVehicleNumberPlate(String NUMBERPLATE)
        {
            string regex
                = "^[A-Z]{2}[\\ -]{0,1}[0-9]{2}[\\ -]{0,1}[A-Z]{1,2}[\\ -]{0,1}[0-9]{4}$";
            Regex p = new Regex(regex);
            if (NUMBERPLATE == null)
            {
                return false;
            }
            Match m = p.Match(NUMBERPLATE);
            return m.Success;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string jsAlert = "";
            bool getbool = isValidVehicleNumberPlate(txtVehicle_No.Text);
            bool getboolNo = isValidPhoneNumber(txtDriver_Mobile_No.Text);
            if (getbool)
            {

            }
            else
            {
                
                jsAlert = "<script type='text/javascript'>alert('Wrong Vehicle Number')</script>";
                ScriptManager.RegisterStartupScript(this, GetType(), "script", jsAlert, false);
                return;
            }
            if (getboolNo)
            {

            }
            else
            {
                jsAlert = "";
                jsAlert = "<script type='text/javascript'>alert('Wrong Mobile Number')</script>";
                ScriptManager.RegisterStartupScript(this, GetType(), "script", jsAlert, false);
                return;
            }

            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);
            string sqluery = "";
            sqluery = "insert into tblTruckManagement values(" + "'" + txtVehicle_No.Text + "'" + "," + "'" + txtDriver_Loc.Text + "'" + "," + "'" + txtVehicle_Type.Text + "'" + "," + "'" + txtDriver_Mobile_No.Text + "'" + "," + "'" + txtDriver_Name.Text + "'" + "," + "'" + Convert.ToInt32(DrpPacking.SelectedValue.ToString()) + "'" +","+"'" +Drpgettype.SelectedValue.ToString() + "'"+")";

            SqlCommand cmd1 = new SqlCommand(sqluery, sqlcon);
            sqlcon.Open();
            cmd1.ExecuteNonQuery();
            sqlcon.Close();
            jsAlert = "";
            jsAlert = "<script type='text/javascript'>alert('Data Inserted Successfully')</script>";
            ScriptManager.RegisterStartupScript(this, GetType(), "script", jsAlert, false);
            return;
        }
    }
}
