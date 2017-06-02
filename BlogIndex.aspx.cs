using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;


public partial class BlogIndex : System.Web.UI.Page
{

    protected System.Web.UI.HtmlControls.HtmlForm Form1;
    SqlConnection ST_myConn;
    public string ST_bgcolor;
    protected System.Web.UI.WebControls.Calendar Calendar1;
    public string ST_tcolor;
    
    protected void Page_Load(object sender, EventArgs e)
    {
          // 在此处放置用户代码以初始化页面
			string ST_dns = ConfigurationSettings.AppSettings["conStr"];
			//最新推荐文章
			string ST_cmd_sql = "select top 10 * from ST_news where ST_n_iscmd=1 order by ST_n_date desc";
			ST_myConn = new SqlConnection(ST_dns);
            SqlDataAdapter ST_classCmd = new SqlDataAdapter("select ST_c_id, ST_c_name from ST_class ", ST_myConn);
			SqlDataAdapter ST_cmdCmd = new SqlDataAdapter(ST_cmd_sql,ST_myConn);
			DataSet ST_classds = new DataSet();
			ST_classCmd.Fill(ST_classds,"类别列表");
			DataSet ST_cmdds = new DataSet();
			ST_cmdCmd.Fill(ST_cmdds,"推荐文章");
			ClassList.DataSource = new DataView(ST_classds.Tables[0]);

			ClassList.DataBind();
			CmdList.DataSource = new DataView(ST_cmdds.Tables[0]);
			CmdList.DataBind();
            //调用自定义NewsBlogList_Bind方法
			NewsBlogList_Bind();
			if (Request.Cookies["colors"]!=null)
			{
				string ST_test = Request.Cookies["colors"].Value;
				String[] ST_colorList = ST_test.Split(new char[] { ',' });
				ST_bgcolor = ST_colorList[0];
				ST_tcolor = ST_colorList[1];
			}
			else
			{
				ST_bgcolor = "#FFDE94";
				ST_tcolor = "#efe3ce";
			}
			Page.DataBind();
		}

		public void ST_get_Replay()
		{
			Response.Write ("<table width=100% border=0 cellspacing=0 cellpadding=0>");
			SqlCommand ST_myCmd = new SqlCommand("select top 6 * from ST_replay order by ST_r_date desc",ST_myConn);
			ST_myConn.Open();
			SqlDataReader ST_read = ST_myCmd.ExecuteReader();
			while (ST_read.Read())
			{
				Response.Write ("<tr ><td height=25 bgColor=#f8f8f8><div align=center><font style='FONT-SIZE: 12px' color=red><a href="+ ST_read[5].ToString() +".aspx title="+ ST_read[3].ToString() +">"+ ST_read[2].ToString() +"</a></font></div></td></tr><tr><td><div align=right><em><font style='FONT-SIZE: 12px'>"+ ST_read[1].ToString() +"评论于"+ ST_read[4].ToString() +"</font></em></div></td></tr>");

			}
			Response.Write ("</table>");
			ST_myConn.Close();

		}

		public void get_Link()
		{
			Response.Write ("<table width=100% border=0 cellspacing=0 cellpadding=0>");
			SqlCommand ST_myCmd = new SqlCommand("select  * from ST_link",ST_myConn);
			ST_myConn.Open();
			SqlDataReader ST_read = ST_myCmd.ExecuteReader();
			while (ST_read.Read())
			{
				Response.Write ("<tr><td height=20><div align=center><font size=-1 color=red><a href="+ ST_read[2].ToString() +" target=_blank>"+ ST_read[1].ToString() +"</a></font></div></td></tr>");

			}
			Response.Write ("</table>");
			ST_myConn.Close();

		}

		public void NewsBlogList_Bind()
		{
			string ST_sql;
			
				if (Request.QueryString["c_id"]==null)
				{
					ST_sql = "select  * from ST_news order by ST_n_date desc";
				}
				else
				{
					if (IsSafe(Request.QueryString["c_id"],2)==true)
					{
						ST_sql = "select  * from ST_news where ST_c_id="+ Request.QueryString["c_id"] +" order by ST_n_date desc"; 
					}
					else
					{
						ST_sql="";
						Response.Write("非法参数");
						Response.End();
					}
				}
			
			SqlDataAdapter ST_myCmd = new SqlDataAdapter(ST_sql,ST_myConn);
			
			DataSet ST_ds = new DataSet();
			ST_myCmd.Fill(ST_ds,"文章列表");

			NewsList.DataSource = new DataView(ST_ds.Tables[0]);
			NewsList.DataBind();
		}
		public bool IsSafe (string str, int prama)
		{
			if (prama==1)
			{
				if (Regex.IsMatch(str,"[0-9]"))
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
			{
				if (str.IndexOf("and")>0 || str.IndexOf("or")>0 || str.IndexOf("'")>0)
				{
					return false;
				}
				else
				{
					return true;
				}
				
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN：该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion
    protected void NewsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        NewsList.PageIndex = e.NewPageIndex;
        NewsBlogList_Bind();
    }
   
}


