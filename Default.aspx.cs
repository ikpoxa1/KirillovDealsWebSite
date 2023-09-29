using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadRecord();
        }
    }
    SqlConnection con = new SqlConnection("Data Source=SHIPOV\\SQLEXPRESS;Initial Catalog=DealsDB;Integrated Security=True");
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand comm = new SqlCommand("Insert into DealsInfo_TAB values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+ TextBox3.Text + "','"+DropDownList1.SelectedValue+"','"+ TextBox4.Text + "','"+ TextBox5.Text + "')", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Успешно!');", true);
        LoadRecord();
    }
    void LoadRecord()
    {
        SqlCommand comm = new SqlCommand("select * from DealsInfo_TAB", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("update DealsInfo_TAB set CompName = '" + TextBox2.Text + "', DealSum = '" + TextBox3.Text + "', DealDL = '" + DropDownList1.SelectedValue + "', DateStart = '" + TextBox4.Text + "', DateStop = '" + TextBox5.Text + "' where DealsID= '" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Обновлено!');", true);
        LoadRecord();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("delete DealsInfo_TAB where DealsID= '" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Удалено!');", true);
        LoadRecord();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand("select * from DealsInfo_TAB where DealsID= '" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("select * from DealsInfo_TAB where DealsID= '" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataReader r = comm.ExecuteReader();
        while (r.Read())
        {
            TextBox2.Text = r.GetValue(1).ToString();
            TextBox3.Text = r.GetValue(2).ToString();
            DropDownList1.SelectedValue = r.GetValue(3).ToString();
            TextBox4.Text = r.GetValue(4).ToString();
            TextBox5.Text = r.GetValue(5).ToString();
        }
    }
}
