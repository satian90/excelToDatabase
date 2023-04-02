using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void button1_Click(object sender, EventArgs e)
        {



            string path = string.Concat(Server.MapPath("~/Uploaded Folder/" + FileUpload1.FileName));
            FileUpload1.SaveAs(path);

            SqlConnection conn2 = new SqlConnection("Data Source =.; Initial catalog=testExcel;integrated security=true");

            string myexceldataquery = "select * from [" + txtSheetname.Text + "$]";


            string PathConn = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended properties='Excel 8.0;HDR=False' ");
            OleDbConnection conn = new OleDbConnection(PathConn);


            OleDbCommand oledbcmd = new OleDbCommand(myexceldataquery, conn);



            conn.Open();
            OleDbDataReader dr = oledbcmd.ExecuteReader();
            conn.Close();
            



            try
            {
                
                string tablename = DropDownList1.Text;

                SqlBulkCopy bulkcopy = new SqlBulkCopy(conn2);
                bulkcopy.DestinationTableName = tablename;
                conn2.Open();
                conn.Open();
                dr = oledbcmd.ExecuteReader();
               
                bulkcopy.WriteToServer(dr);

                dr.Close();
                conn2.Close();
                conn.Close();

                Label4.Text="Excel Sheet uploaded to " + DropDownList1.Text + ".";
               
            }

            catch(Exception ex)
            {
                Label4.Text = ex.Message;
            }
            finally
            {
                dr.Close();
                conn2.Close();
                conn.Close();

            }
        }

    }
  
}