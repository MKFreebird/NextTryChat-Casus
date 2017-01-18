using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NextTryChat
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Session["name"] = txtname.Text;
            lbluname.Text = "Welcome " +txtname.Text;
            txtname.Text = "";

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            string message = txtsend.Text;
            DateTime TimeStamp = DateTime.Now;
            string my = name + ": " +message + "" +TimeStamp + Environment.NewLine; 

            
            txtmsg.Text += my;
            txtsend.Text = "";
            
            

        }
    }
}