using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Module_Admin_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
			Random ran = new Random();
			this.labVali.Text = ran.Next(1000, 9999).ToString();
		}
    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		if (this.txtVali.Text != this.labVali.Text)
		{
			Response.Write("<script lanuage=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
		}
		else
		{
			SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			con.Open();
			SqlCommand com = new SqlCommand("select count(*) from tb_Admin where UserName='" + this.txtUid.Text + "' and PassWord='" + this.txtPwd.Text + "'", con);
			SqlData da = new SqlData();
			SqlDataReader read = da.ExceRead("select * from tb_Admin where UserName='" + this.txtUid.Text + "'");
			read.Read();
            if (read.HasRows)
            {
                Session["SuperAdmin"] = read["SuperAdmin"].ToString();
            }
			read.Close();
			int count = Convert.ToInt32(com.ExecuteScalar());
			if (count > 0)
			{
				Session["UserName"] = this.txtUid.Text;
				Session["PassWord"] = this.txtPwd.Text;
                Page.Response.Redirect("ST_BlogIndex.aspx");
			}
			else
			{
				Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
				return;
			}
		}
	}
	protected void btnCancle_Click(object sender, EventArgs e)
	{
        Response.Redirect("../../BlogIndex.aspx");
	}
}
