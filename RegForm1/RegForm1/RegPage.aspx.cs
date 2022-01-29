using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace RegForm1
{

    
    public partial class RegPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = "server=localhost; user id=root;database=testdb;Password=abcd1234";
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into person1 (name,phone_number,email,dob,gender) values (@name,@phone_number,@email,@dob,@gender)", conn);
            cmd.Parameters.AddWithValue("@name", personname.Text);
            cmd.Parameters.AddWithValue("@phone_number", phNumber.Text);
            cmd.Parameters.AddWithValue("@email", emailId.Text);
            cmd.Parameters.AddWithValue("@dob",dateofbirth.SelectedDate.ToString());
            cmd.Parameters.AddWithValue("@gender", gend.SelectedValue.ToString());
            if (cmd.ExecuteNonQuery() == 1) {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Records Inserted Successfully')", true);
            }
            else{
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration failed, try again please')", true);
            }
            
        }
    }
}