using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Web.Services;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using System.EnterpriseServices;
using Newtonsoft.Json;

namespace TruckManagementSystem
{
    public partial class CommodityTrucks : System.Web.UI.Page
    {
        double distance = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static string GetTruckdata(string from, string to, string check)
        {
            try
            {
                if (from != "" && to != "")
                {

                    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);

                    string sqluery = "";
                    sqluery = "select distinct city from pincode_master where countryid=91 and pincode in ('" + from + "','" + to + "')";

                    SqlCommand sqlcmd = new SqlCommand(sqluery, sqlcon);
                    SqlDataAdapter ad = new SqlDataAdapter();
                    ad.SelectCommand = sqlcmd;
                    DataTable tb = new DataTable();
                    ad.Fill(tb);
                    sqlcon.Open();
                    sqlcon.Close();
                    string getfrom = tb.Rows[0]["City"].ToString();
                    string strto = tb.Rows[0]["City"].ToString();
                    string constr = ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        if (check == "radio2")
                        {
                            using (SqlCommand cmd = new SqlCommand("select distinct Vehicle_Type,trucktype from tblTruckManagement where (Driver_Location like '%" + tb.Rows[0]["City"].ToString() + "%' or Driver_Location like '%" + tb.Rows[0]["City"].ToString() + "%') and ispacking=1"))
                            {
                                cmd.Connection = con;
                                DataSet ds = new DataSet();
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    sda.Fill(ds);
                                    ds.Tables[0].TableName = "Vehicle";
                                }
                                con.Close();
                                return ds.GetXml();
                            }
                        }
                        else
                        {
                            using (SqlCommand cmd = new SqlCommand("select distinct Vehicle_Type,trucktype from tblTruckManagement where (Driver_Location like '%" + tb.Rows[0]["City"].ToString() + "%' or Driver_Location like '%" + tb.Rows[0]["City"].ToString() + "%') and ispacking=0"))
                            {
                                cmd.Connection = con;
                                DataSet ds = new DataSet();
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    sda.Fill(ds);
                                    ds.Tables[0].TableName = "Vehicle";
                                }
                                con.Close();
                                return ds.GetXml();
                            }
                        }

                    }
                }


            }
            catch (Exception)
            {


            }
            return "";
        }

        protected async void c1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Truckyconnection"].ConnectionString);

            string sqluery = "";
            sqluery = "select distinct city from pincode_master where countryid=91 and pincode in ('" + Request.Form["from"].ToString() + "','" + Request.Form["to"].ToString() + "')";


            try
            {
                SqlCommand sqlcmd = new SqlCommand(sqluery, sqlcon);
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = sqlcmd;
                DataTable tb = new DataTable();
                ad.Fill(tb);
                sqlcon.Open();
                sqlcon.Close();

                await GetDistance(Request.Form["from"].ToString(), Request.Form["to"].ToString(), tb.Rows.Count);
                string getfrom = tb.Rows[0]["City"].ToString();
                string strto = tb.Rows[0]["City"].ToString();
                Getpincodedata();
                if (tb != null && tb.Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "getdata", "getdata()", true);
                }
            }


            catch (Exception ex)
            {
                sqlcon.Close();
                return;
            }
        }

        public static async Task<string> GetDistance(string originPincode, string destinationPincode,int tablecount)
        {
            string originCoordinates = await GetCoordinates(originPincode, tablecount);
            string destinationCoordinates = await GetCoordinates(destinationPincode, tablecount);

            if (string.IsNullOrEmpty(originCoordinates) || string.IsNullOrEmpty(destinationCoordinates))
            {
                return "Could not get coordinates for the given pin codes.";
            }

            string url = $"http://router.project-osrm.org/route/v1/driving/{originCoordinates};{destinationCoordinates}?overview=false";

            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    string result = await response.Content.ReadAsStringAsync();
                    return result; // Extract distance from JSON response
                }
            }
            return "Error retrieving distance data.";
        }


        private static async Task<string> GetCoordinates(string pincode,int tablecount)
        {
            string url = $"https://nominatim.openstreetmap.org/search?format=json&q={pincode}";

            using (HttpClient client = new HttpClient())
            {
                client.DefaultRequestHeaders.Add("User-Agent", "ASP.NET App");
                HttpResponseMessage response = await client.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    string result = await response.Content.ReadAsStringAsync();
                    // Extract latitude and longitude from JSON response
                    return ExtractCoordinates(result,  tablecount);
                }
            }
            return "";
        }

        private const double EarthRadiusKm = 6371;
        public static double CalculateDistance(double lat1, double lon1, double lat2, double lon2, int tablecount)
        {
            double dLat = ToRadians(lat2 - lat1);
            double dLon = ToRadians(lon2 - lon1);

            double a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
                       Math.Cos(ToRadians(lat1)) * Math.Cos(ToRadians(lat2)) *
                       Math.Sin(dLon / 2) * Math.Sin(dLon / 2);
            double c;
            if (tablecount>1)
            {
                c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a)) * 400;
            }
            else
            {
                c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
            }
            return Math.Round(EarthRadiusKm * c); // Distance in km
        }

        private static double ToRadians(double angle)
        {
            return Math.PI * angle / 180.0;

        }
        private static string ExtractCoordinates(string json, int tablecount)
        {
            if (json.Contains("\"lat\":") && json.Contains("\"lon\":"))
            {
                var latStart = json.IndexOf("\"lat\":\"") + 7;
                var latEnd = json.IndexOf("\"", latStart);
                var lonStart = json.IndexOf("\"lon\":\"") + 7;
                var lonEnd = json.IndexOf("\"", lonStart);
                double distance = CalculateDistance(latStart, lonStart, latEnd, lonEnd,tablecount);
                Page page = (Page)HttpContext.Current.Handler as Page;
                string script = "document.getElementById('htmlInput').value = '" + distance.ToString() + "';";
                page.ClientScript.RegisterStartupScript(typeof(CommodityTrucks), "SetHtmlValue", script, true);
                string lat = json.Substring(latStart, latEnd - latStart);
                string lon = json.Substring(lonStart, lonEnd - lonStart);

                return distance.ToString(); // OSRM requires longitude first
            }
            return "";
        }

        public class PincodeResponse
        {
            public string Status { get; set; }
            public List<PostOffice> PostOffice { get; set; }
        }

        public class PostOffice
        {
            public string Name { get; set; }
            public string District { get; set; }
            public string State { get; set; }
        }

        private void Getpincodedata()
        {
            string apiUrl = $"http://postalpincode.in/api/pincode/{Request.Form["from"].ToString()}";
            string jsonResult = "";
            using (WebClient client = new WebClient())
            {
                jsonResult = client.DownloadString(apiUrl);
            }

            var response = JsonConvert.DeserializeObject<PincodeResponse>(jsonResult);

            if (response.Status == "Success" && response.PostOffice != null)
            {
                hdnpinvalue.Value=Convert.ToString(response.PostOffice[0].District+" "+ response.PostOffice[0].Name+" "+response.PostOffice[0].State);
            }

            apiUrl = $"http://postalpincode.in/api/pincode/{Request.Form["to"].ToString()}";
            jsonResult = "";
            using (WebClient client = new WebClient())
            {
                jsonResult = client.DownloadString(apiUrl);
            }
            response = null;
            response = JsonConvert.DeserializeObject<PincodeResponse>(jsonResult);

            if (response.Status == "Success" && response.PostOffice != null)
            {
                hdnpin1value.Value = Convert.ToString(response.PostOffice[0].District + " " + response.PostOffice[0].Name + " " + response.PostOffice[0].State);
            }


        }
    }
}