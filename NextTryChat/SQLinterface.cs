using System;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Configuration;

namespace NextTryChat
{
    class SQLinterface
    {
        SqlConnection SQLConn;
         
        /// <summary>
        /// Constructor: initialiseer de ConnectionString en sqlserver connectie
        /// </summary>
        public SQLinterface() {
            ConnectionStringSettings settings;
            // haal de connection string op uit het Web.config bestand!
            settings = ConfigurationManager.ConnectionStrings["myConnString"];
            string connectionString = settings.ConnectionString;
            SQLConn = new SqlConnection(connectionString);
        }
        
        /// <summary>
        /// Schrijft een chatbericht naar de database.
        /// Koppel de Message tabel nog niet met een andere tabel anders kan hij de koppeling Chat_ChatID niet maken
        /// </summary>
        /// <param name="_message"> Het bericht dat in de chat is getypt</param>
        /// <param name="_timestamp"> Het tijdstip waarop het bericht is getypt</param>
        public void messageToDB(string _message, string _timestamp)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand("INSERT INTO MessageSet (Content, TimeStamp, PlayerID) " +
                                    "VALUES ('" + _message + "', '" + _timestamp + "', " + 1 +  ")", SQLConn);
            myCommand.ExecuteNonQuery();
            SQLConn.Close();
        }

        /// <summary>
        /// Open een verbinding met SQL-server en vang fouten af
        /// </summary>
        public void openConnection()
        {
            try
            {
                SQLConn.Open();
            }
            catch(Exception e)
            {
                Debug.WriteLine(e.ToString());
            }
        }

    }

}