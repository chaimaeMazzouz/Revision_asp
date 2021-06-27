using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revision_Asp_webForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAuthentifier_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
            {
                cn_ComVoyage.Open();
                string Qr = "select count(1) from membre where login=@login and passe=@pass";
                SqlCommand cmd = new SqlCommand(Qr, cn_ComVoyage);
                cmd.Parameters.AddWithValue("@login", Login.Text);
                cmd.Parameters.AddWithValue("@pass", pass.Text);

                int count = (int)cmd.ExecuteScalar();
                if (count == 1)
                {

                    string Qr_sel = "select * from membre where login=@login and passe=@pass";
                    SqlCommand cmd_sel = new SqlCommand(Qr_sel, cn_ComVoyage);
                    cmd_sel.Parameters.AddWithValue("@login", Login.Text);
                    cmd_sel.Parameters.AddWithValue("@pass", pass.Text);
                    SqlDataReader dr = cmd_sel.ExecuteReader();
                    while (dr.Read())
                    {
                        Session["login"] = dr[0].ToString();
                        Session["nom_prenom"] = dr[2].ToString();
                        Session["passe"] = dr[3].ToString();
                    }
                   

                }
                else
                {
                    Response.Write("<script>alert('Ce membre n'exsist pas')</script>");
                }
            }
        }
    }
}