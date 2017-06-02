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

public partial class UseControls_Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
			//生成一个随机数，在初始化时将其显示出来，作为验证码
			Random yzm = new Random();
			this.labVali.Text = yzm.Next(1000, 9999).ToString();
		}
    }

	protected void btnReg_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("~/Module/Blog/RegPro.aspx");
	}

	protected void btnOK_Click(object sender, EventArgs e)
	{
        if (this.txtVali.Text != this.labVali.Text)
        {
            Response.Write("<script lanuage=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
        }
        else
        {
            int i = this.checkLogin(txtUid.Text, txtPwd.Text);
            if (i > 0)
            {
               // Response.Write("<script lanuage=javascript>alert('登录成功！');location='~/Module/Blog/ST_BlogIndex.aspx'</script>");
                //Response.Write("<script>alert('登录成功！！！')</script>");
                Session["UserName"] = this.txtUid.Text;
                Session["PassWord"] = this.txtPwd.Text;
                Page.Response.Redirect("~/Module/Blog/ST_BlogIndex.aspx");
            }
            else
            {
                Response.Write("用户名称或密码错误！！！");
            }
        }
        
	}
    public int checkLogin(string loginName, string loginPwd)
    {
        SqlConnection con = new SqlConnection("Server=(local);database=db_Blog;Uid=sa;Pwd=");
        SqlCommand myCommand = new SqlCommand("select count(*) from tb_Blog where UserName=@loginName and PassWord=@loginPwd", con);
        myCommand.Parameters.Add(new SqlParameter("@loginName", SqlDbType.NVarChar, 50));
        myCommand.Parameters["@loginName"].Value = loginName;
        myCommand.Parameters.Add(new SqlParameter("@loginPwd", SqlDbType.NVarChar, 50));
        myCommand.Parameters["@loginPwd"].Value = loginPwd;
        myCommand.Connection.Open();
        int i = (int)myCommand.ExecuteScalar();
        myCommand.Connection.Close();
        return i;
    }
}
