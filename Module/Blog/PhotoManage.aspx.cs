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

public partial class Module_Blog_PhotoManage : System.Web.UI.Page
{
    string ID;

	protected void Page_Load(object sender, EventArgs e)
	{
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/BlogIndex.aspx");
        }

        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        //SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog", mycon);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();

		SqlData da = new SqlData();
        this.GridView1.DataSource = da.ExceDS("select * from tb_Picture where BlogID='" + ID + "'");
        //this.GridView1.DataSource = da.ExceDS("select * from tb_Picture where BlogID='"+ID+"'");
		GridView1.DataKeyNames = new string[] { "PictureID" };
		GridView1.DataBind();
	}

	protected void btnSearch_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		string search = this.ddlSearch.SelectedValue;
		switch (search)
		{
			case "图片ID":
                da.BindData(this.GridView1, "Select * From tb_Picture Where PictureID  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
                //da.BindData(this.GridView1, "Select * From tb_Picture Where PictureID  Like  '%" + this.txtKey.Text + "%'");
				break;
			case "图片主题":
                //da.BindData(this.GridView1, "Select * From tb_Picture Where Subject  Like  '%" + this.txtKey.Text + "%'");
                da.BindData(this.GridView1, "Select * From tb_Picture Where Subject  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
				break;
			default:
				Response.Write("<script lanuage=javascript>alert('出错啦！');location='javascript:history.go(-1)'</script>");
				break;
		}
	}
	protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		SqlData da = new SqlData();
		da.ExceSQL("delete from tb_Picture where PictureID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
		Page.Response.Redirect("PhotoManage.aspx");

	}
	protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
	{
		GridView1.PageIndex = e.NewPageIndex;
		GridView1.DataBind();
	}
	protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			if ((e.Row.Cells[1].Text).Length > 6)
			{
				e.Row.Cells[1].Text = (e.Row.Cells[1].Text).Substring(0, 6) + "…";
			}
		}
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			((LinkButton)(e.Row.Cells[3].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
		}
	}
}
