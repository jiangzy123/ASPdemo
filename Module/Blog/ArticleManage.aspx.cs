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

public partial class Module_Blog_ArticleManage : System.Web.UI.Page
{
    SqlData da = new SqlData();
    SqlConnection mycon;
    private static string ID;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //调用自定义绑定方法绑定数据
            ST_Article_Bind();
            /*判断是否登录*/
            ST_check_Login();
        }
        string ST_dns = ConfigurationSettings.AppSettings["conStr"];
        mycon = new SqlConnection(ST_dns);
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter1 = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter1.Fill(mydataset, "tb_Blog");
        DataRowView rowview1 = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview1["BlogID"].ToString();
    }
    public void ST_check_Login()
    {

        if ((Session["UserName"] == null))
        {
            Response.Write("<script>alert('对不起！您还不是管理员，请先注册再登录！');location='../../BlogIndex.aspx'</script>");
            Response.End();
        }
    }
    public void ST_Article_Bind()
    {
        string sqlstr = "select * from ST_news where BlogID='" + ID + "'";
        //调用公共类中的ExceDS方法，返回一个DataSet类型的数据集，并作为GridView控件的数据源
        GridView1.DataSource = da.ExceDS(sqlstr);
        GridView1.DataKeyNames = new string[] { "ST_n_id" };
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlData da = new SqlData();
        bool delete = da.ExceSQL("delete from ST_news where ST_n_id='" + GridView1.DataKeys[e.RowIndex].Value + "'");
        if (delete)
        {
            Response.Write("<script language=javascript>alert('删除成功！');location='ArticleManage.aspx'</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('删除失败！');location='ArticleManage.aspx'</script>");
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlData da = new SqlData();
        string search = this.ddlSearch.SelectedValue;
        switch (search)
        {
            case "文章ID":
                da.BindData(this.GridView1, "Select * From ST_news Where ST_n_id  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'"); 
                break;
            case "文章主题":
                da.BindData(this.GridView1, "Select * From ST_news Where ST_n_title  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
                break;
            default:
                Response.Write("<script lanuage=javascript>alert('查询失败！');location='javascript:history.go(-1)'</script>");
                break;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ST_Article_Bind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if ((e.Row.Cells[1].Text).Length > 5)
            {
                e.Row.Cells[1].Text = (e.Row.Cells[1].Text).Substring(0, 5) + "…";
            }
            ((LinkButton)e.Row.Cells[5].Controls[0]).Attributes.Add("onclick", "return confirm('确定要删除吗?')");
        }
      
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        for(int i=0; i<=GridView1.Rows.Count-1;i++)
        {
            CheckBox cbox=(CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if(CheckBox2.Checked==true)
            {
                cbox.Checked=true;
            }
            else
            {
                cbox.Checked=false;
            }
    }
}
    protected void Button2_Click(object sender, EventArgs e)
    {
        //mycon.Open();
      
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cbox.Checked == true)
            {
                string sqlstr = "delete from ST_news where ST_n_id='" + GridView1.DataKeys[i].Value + "'";
                da.ExceSQL(sqlstr);
                Response.Write("<script language=javascript>alert('批量删除成功！');location='ArticleManage.aspx'</script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            cbox.Checked = false;
        }
    }
}
