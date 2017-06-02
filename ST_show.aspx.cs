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


namespace ST_GROUP.Blog
{
	/// <summary>
	/// ST_show 的摘要说明。
	/// </summary>
	public partial class ST_show : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox title;
		protected System.Web.UI.WebControls.Button Button1;
		SqlConnection ST_myConn;
		public string ST_bgcolor;
		public string ST_tcolor;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if (IsSafe(Request.QueryString["id"],2)==false)
			{
				Response.Write("非法参数,<a href=BlogIndex.aspx>点此返回</a>");
				Response.End();
			}
			string ST_dns = ConfigurationSettings.AppSettings["conStr"];
		    string ST_sql = "select * from ST_news where ST_n_id=" +Request.QueryString["id"] +"";
			//最新推荐文章
			string ST_cmd_sql = "select top 10 * from ST_news where ST_n_iscmd=1 order by ST_n_id desc";

			ST_myConn = new SqlConnection(ST_dns);
			SqlDataAdapter ST_myCmd = new SqlDataAdapter(ST_sql,ST_myConn);
			SqlDataAdapter ST_classCmd = new SqlDataAdapter("select ST_c_id,ST_c_name from ST_class",ST_myConn);
			SqlDataAdapter ST_cmdCmd = new SqlDataAdapter(ST_cmd_sql,ST_myConn);

			DataSet ST_ds = new DataSet();
			ST_myCmd.Fill(ST_ds,"新闻查看");

			DataSet ST_classds = new DataSet();
			ST_classCmd.Fill(ST_classds,"类别列表");

			DataSet ST_cmdds = new DataSet();
			ST_cmdCmd.Fill(ST_cmdds,"推荐文章");

			NewsShow.DataSource = ST_ds.Tables[0];
			NewsShow.DataBind();

			ClassList.DataSource = new DataView(ST_classds.Tables[0]);
			ClassList.DataBind();

			CmdList.DataSource = new DataView(ST_cmdds.Tables[0]);
			CmdList.DataBind();
            //调用ST_UpdateHit()方法
			ST_UpdateHit();
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

		/// <summary>
		/// 更新点击次数。
		/// </summary>
		public void ST_UpdateHit()
		{
			string ST_up_sql = "update ST_news set ST_n_hit=ST_n_hit+1 where ST_n_id=" +Request.QueryString["id"]+ "";
            SqlCommand ST_upCmd = new SqlCommand(ST_up_sql,ST_myConn);

			ST_upCmd.Connection.Open();
			try
			{
				ST_upCmd.ExecuteNonQuery();
				//return true;
			}
			catch
			{
				//return false;
			}
			ST_upCmd.Connection.Close();


		}

		/// <summary>
		/// 获得评论。
		/// </summary>
		public void ST_get_Replay()
		{
			Response.Write ("<table width=100% border=0 cellspacing=0 cellpadding=0>");
            SqlCommand ST_myCmd = new SqlCommand("select * from ST_replay where ST_n_id=" + Request.QueryString["id"] + "", ST_myConn);
			ST_myConn.Open();
			SqlDataReader ST_read = ST_myCmd.ExecuteReader();
			while (ST_read.Read())
			{
				Response.Write ("<tr height=25><td  bgcolor=eeeeee><div align=center><font style='FONT-SIZE: 12px' color=red>"+ ST_read[2].ToString() +"</font></div></td></tr><tr height=30><td><font style='FONT-SIZE: 12px'>"+ ST_read[3].ToString() +"</font></td></tr><tr><td bgcolor=f8f8f8><div align=right><font style='FONT-SIZE: 12px'>"+ ST_read[1].ToString() +"评论于"+ ST_read[4].ToString() +"</font></div></td></tr>");

			}
			Response.Write ("</table>");
			ST_myConn.Close();

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

		/// <summary>
		/// 评论提交。
		/// </summary>
		protected void replay_Click(object sender, System.EventArgs e)
		{
			//string r_nick = r_nick.Text;
			//string r_title=r_title.Text;
			//string r_content = r_content.Value;
			if (IsPostBack)
			{
				if (r_nick.Text.Trim()=="" || r_title.Text.ToString().Trim()=="" || r_content.Value.Trim()=="")
				{
					Response.Write("<div align=center><li>昵称,标题,内容不能为空!</li><li><a href=javascript:history.back()>点此返回</a>");
					Response.End();
				}
				else
				{
					string ST_sql = "insert into ST_replay (ST_r_nick,ST_r_title,ST_r_content,ST_r_date,ST_n_id) values ('"+ r_nick.Text +"','"+ r_title.Text +"','"+ r_content.Value +"','"+System.DateTime.Now +"',"+Request.QueryString["id"]+")";
					SqlCommand ST_myCmd = new SqlCommand(ST_sql,ST_myConn);
					ST_myConn.Open();
					ST_myCmd.ExecuteNonQuery();
					ST_myConn.Close();
					ST_add_Re();
					Response.Redirect(""+Request.QueryString["id"]+".aspx");
				}
			}
		
		}
		
		/// <summary>
		/// 增加评论数。
		/// </summary>
		public void ST_add_Re()
		{
            //string ST_up_sql = "update ST_news set ST_n_re=ST_n_re+1 where ST_n_id=" + Request["id"] + "";
            string ST_up_sql = "update ST_news set ST_n_re=ST_n_re+1 where ST_n_id=" +Request.QueryString["id"]+ "";
			SqlCommand ST_upCmd = new SqlCommand(ST_up_sql,ST_myConn);

			ST_upCmd.Connection.Open();
			try
			{
				ST_upCmd.ExecuteNonQuery();
				//return true;
			}
			catch
			{
				//return false;
			}
			ST_upCmd.Connection.Close();


		}

	}
}
