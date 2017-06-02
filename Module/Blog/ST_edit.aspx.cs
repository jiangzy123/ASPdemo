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

namespace ST_GROUP.Blog
{
	/// <summary>
	/// ST_edit ��ժҪ˵����
	/// </summary>
	public partial class ST_edit : System.Web.UI.Page
	{
		SqlConnection ST_myConn;
		public string ST_n_content;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
            string ST_dns = ConfigurationSettings.AppSettings["conStr"];
			ST_myConn = new SqlConnection(ST_dns);
			if (Request.QueryString["id"]==null || Request.QueryString["id"]=="")
			{
				Response.Write("<script>alert('��������Ϊ��');</script>");
				Response.End();
			}

			string ST_action;
			if (Request.QueryString["action"]!=null)
			{
				ST_action = Request.QueryString["action"].ToString();
			}
			else
			{
				ST_action="edit";
			}

			switch (ST_action)
			{	
				case "delmsg":
					this.ST_Del_Msg();
					break;
				case "hfmsg":
					this.ST_Hf_Msg();
					break;
				case "shfmsg":
					this.ST_Shf_Msg();
					break;
			}
			Page.DataBind();
		}
		public void ST_Del_Msg()
		{
			string ST_sql = "delete from ST_message where ST_id in ("+ Request.QueryString["id"] +")";
            SqlData da = new SqlData();
            da.ExceSQL(ST_sql);
			Response.Redirect("ST_admin_message.aspx");
		}
		public void ST_Hf_Msg()
        {
         
			Response.Write("<form method=post action='ST_edit.aspx?action=shfmsg&id="+Request.QueryString["id"]+"'>");
            Response.Write("<TEXTAREA id=content name=content rows=6 cols=40 width=80%></TEXTAREA>");
			Response.Write("<input type=submit name=Button1 value=�ظ� id=Button1 />");
            Response.Write("�ظ���������20����");
			Response.Write("</form>");
			Response.End();
		}
		public void ST_Shf_Msg()
		{
            if (Request.Form["content"] == "")
            {
                Response.Write("<div align=center><li>�ظ������ݲ���Ϊ�գ�</li><li><a href=javascript:history.back()>��˷�������</a></li></div>");
            }
            else
            {
                if (Request.Form["content"].Length > 20)
                {
                    string ST_sql = "update ST_message set ST_hf='" + Convert.ToString(Request.Form["content"]).Substring(0, 20) + "' where ST_id = " + Convert.ToInt32(Request.QueryString["id"]).ToString() + "";
                    SqlData da = new SqlData();
                    da.ExceSQL(ST_sql);
                    Response.Redirect("ST_admin_message.aspx");
                }
                else
                {
                    string ST_sql = "update ST_message set ST_hf='" + Request.Form["content"] + "' where ST_id = " + Convert.ToInt32(Request.QueryString["id"]).ToString() + "";
                    SqlData da = new SqlData();
                    da.ExceSQL(ST_sql);
                    Response.Redirect("ST_admin_message.aspx");
                }
            }
		}
		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN���õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion
	}
}
