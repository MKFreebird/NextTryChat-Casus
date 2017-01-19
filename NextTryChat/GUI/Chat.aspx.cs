using System;


namespace NextTryChat
{
    /// <summary>
    /// 
    /// </summary>
    public partial class Chat : System.Web.UI.Page
    {
        SQLinterface SQL = new SQLinterface();


        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Session["name"] = txtname.Text;
            lbluname.Text = "Welcome " + txtname.Text;
            txtname.Text = "";
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            //string name = Session["name"].ToString();
            string name = "TestAccount"; // tijdelijk hardcoded geen zin telkens opnieuw te tijpen
            string message = txtsend.Text;
            DateTime TimeStamp = DateTime.Now;
            string time = TimeStamp.ToString();
            string my = name + ": " + message + Environment.NewLine;
            SQL.messageToDB(message, time);
            txtmsg.Text += my;
            txtsend.Text = "";
        }
    }
}