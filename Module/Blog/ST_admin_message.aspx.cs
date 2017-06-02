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
	/// ST_admin_message ��ժҪ˵����
	/// </summary>
	public partial class ST_admin_message : System.Web.UI.Page
	{
		SqlConnection ST_myConn;
        SqlData sd = new SqlData();
		protected void Page_Load(object sender, System.EventArgs e)
		{
            this.MessageList.Attributes.Add("style", "word-break:break-all;word-wrap:break-word");
			// �ڴ˴������û������Գ�ʼ��ҳ��
			/*�ж��Ƿ��¼*/
			ST_check_Login();
			/*��������*/
			string ST_dns = ConfigurationSettings.AppSettings["conStr"];
			ST_myConn = new SqlConnection(ST_dns);
            if (!IsPostBack)
            {
                ST_Link_Bind();
            }
		}
		private void ST_Link_Bind()
		{
			string ST_sql = "select * from ST_message order by ST_mdate desc";
            //���ù������е�ExceDS������ִ�в�ѯ���
            MessageList.DataSource = sd.ExceDS(ST_sql);
            MessageList.DataKeyNames = new string[] { "ST_id" };
            this.MessageList.DataBind();
		}
        public void ST_check_Login()
        {

            if ((Session["UserName"] == null))
            {
                Response.Write("<script>alert('�Բ����������ǻ�Ա������ע���ٵ�¼��');location='../../BlogIndex.aspx'</script>");
                Response.End();
            }
        }
       
#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
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


        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i <= MessageList.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)MessageList.Rows[i].FindControl("CheckBox1");
                if (CheckBox2.Checked == true)
                {
                    cbox.Checked = true;
                }
                else
                {
                    cbox.Checked = false;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBox2.Checked = false;
            for (int i = 0; i <= MessageList.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)MessageList.Rows[i].FindControl("CheckBox1");
                cbox.Checked = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlData sd = new SqlData();
            ST_myConn.Open();
            for (int i = 0; i <= this.MessageList.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)MessageList.Rows[i].FindControl("CheckBox1");
                if (cbox.Checked == true)
                {
                    string sqlstr = "delete from ST_message where ST_id='" + MessageList.DataKeys[i].Value + "'";
                    sd.ExceSQL(sqlstr);
                }
            }

            ST_Link_Bind();
        }
        protected void MessageList_PageInexChanging(object sender, GridViewPageEventArgs e)
        {
            MessageList.PageIndex = e.NewPageIndex;
            ST_Link_Bind();
        }
}
}

        