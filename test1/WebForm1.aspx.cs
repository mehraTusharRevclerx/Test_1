using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            var firstName = FirstNameBox.Text;
            var lastName = LastNameBox.Text;
            var address = AddressBox.Text;
            var phoneNo = PhoneNoBox.Text;
            var emailBox = EmailBox.Text;
            SqlConnection con = new SqlConnection("Data Source=192.168.1.175;Initial Catalog=Tushar_Mehra;Persist Security Info=True;User ID=revclerxdb;Password=MindMatrix@615");

            string query = "insert into [test_1] (FirstName,LastName,[Address],PhoneNo,Email) " +
               "Values(' "+ firstName + "',' " + lastName + "', ' " + address + "',' " + phoneNo + "',' " + emailBox + "')";
            
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




            string query2 = "select * from [test_1]";

            SqlDataAdapter adp = new SqlDataAdapter(query2, con);
            DataTable tbl = new DataTable();
            adp.Fill(tbl);
            GridView1.Visible = true;
            GridView1.DataSource = tbl;
            GridView1.DataBind();




            AddressBox.Text = "";
            EmailBox.Text = "";
            FirstNameBox.Text = "";
            LastNameBox.Text = "";
            PhoneNoBox.Text = "";
           
        }

        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            AddressBox.Text = "";
            EmailBox.Text = "";
            FirstNameBox.Text = "";
            LastNameBox.Text = "";
            PhoneNoBox.Text = "";
        }

        

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=192.168.1.175;Initial Catalog=Tushar_Mehra;Persist Security Info=True;User ID=revclerxdb;Password=MindMatrix@615");

            string query = "delete from [test_1] where ID >=0 AND ID <= 100; ";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.Visible = false;
            AddressBox.Text = "";
            EmailBox.Text = "";
            FirstNameBox.Text = "";
            LastNameBox.Text = "";
            PhoneNoBox.Text = "";
        }
    }
}