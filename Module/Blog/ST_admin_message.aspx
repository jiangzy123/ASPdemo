<%@ Page language="c#" Inherits="ST_GROUP.Blog.ST_admin_message" CodeFile="ST_admin_message.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ST_admin_message</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="css/css.css" rel="stylesheet" type="text/css">
	
<script language="javascript" type="text/javascript">
// <!CDATA[

function Table1_onclick() {

}

// ]]>
</script>
</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            <table cellpadding="0" cellspacing="0" style="width: 578px; height: 285px">
                <tr>
                    <td align="left" colspan="3" rowspan="4" style="background-image: url(../../Images/Skin/right.jpg);
                        vertical-align: middle; height: 478px; text-align: center">
                        <strong><span style="color: #993300"></span></strong><table cellpadding="0" cellspacing="0" style="left: 0px; width: 528px; height: 263px">
                            <tr>
                                <td colspan="3" style="height: 31px">
                                    <span style="color: #993300;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="color: #993300">������Ϣ����</span></strong></span></td>
                            </tr>
                            <tr>
                                <td colspan="3" rowspan="2" style="vertical-align: top; height: 205px; text-align: left">
                                    <table style="width: 510px; height: 211px">
                                        <tr>
                                            <td style="width: 114px; height: 10px">
                                                <span style="font-size: 9pt"></span></td>
                                            <td style="width: 92px; height: 10px">
                                                <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="9pt" Text="ȫѡ" Width="61px" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" /></td>
                                            <td style="width: 115px; height: 10px">
                                                <span style="font-size: 9pt">
                                                    <asp:Button ID="Button1" runat="server" Font-Size="9pt" Text="ȡ��ȫѡ" OnClick="Button1_Click" /></span></td>
                                            <td style="width: 142px; height: 10px">
                                                <asp:Button ID="Button2" runat="server" Font-Size="9pt" Text="����ɾ��" OnClick="Button2_Click" /></td>
                                            <td style="width: 54px; height: 10px">
                                                </td>
                                            <td style="width: 111px; height: 10px">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" rowspan="2" style="vertical-align: top; height: 163px; text-align: center">
            <asp:GridView ID="MessageList" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Font-Size="8pt" Width="511px" AllowPaging="True" OnPageIndexChanging="MessageList_PageInexChanging" PageSize="4">
                <FooterStyle BackColor="Tan" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
											<TABLE class="table" cellSpacing="0" cellPadding="0" border="0" style="width: 101%">
												<TR>
                                                    <td style="width: 11%; height: 20px" >
                                                        <span style="font-size: 11pt">&nbsp; &nbsp;&nbsp;&nbsp; ����</span></td>
													<TD style="height: 20px; width: 10%;">
														<DIV align="center">
                                                            <span style="font-size: 11pt">
                                                            ʱ��</span></DIV>
													</TD>
													<TD style="height: 20px; width: 14%;">
														<DIV align="center">
                                                            <span style="font-size: 11pt">����/����</span></DIV>
													</TD>
													<TD style="height: 20px; width: 11%;">
														<DIV align="center">
                                                            <span style="font-size: 11pt">��������&nbsp; &nbsp; </span></DIV>
													</TD>
													<TD style="height: 20px; width: 10%;">
														<DIV align="center">
                                                            <span style="font-size: 11pt">ѡ��</span></DIV>
													</TD>
												</TR>
											</TABLE>
                        </HeaderTemplate>
                        <ItemTemplate>
											<TABLE class="table" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
												<TR>
                                                    <td height="20" style="width: 18%">
														<DIV align="center"><A onclick="return confirm('ȷ��ɾ��')" href='ST_edit.aspx?action=delmsg&id=<%# DataBinder.Eval(Container.DataItem, "ST_id") %>'>
                                                            <span style="font-size: 10pt">ɾ��</span></A><span style="font-size: 10pt">/</span><a href='ST_edit.aspx?action=hfmsg&id=<%# DataBinder.Eval(Container.DataItem, "ST_id") %>'><span
                                                                    style="font-size: 10pt">�ظ�</span></a></DIV>
													</td>
													<TD height="20" style="width: 20%;font-size:10pt">
														<DIV align="center"><%# DataBinder.Eval(Container.DataItem, "ST_mdate") %></DIV>
													</TD>
													<TD width="19%" height="20" style="font-size:10pt">
														<DIV align="center"><%# DataBinder.Eval(Container.DataItem, "ST_nickname") %>
                                                            <span style="font-size: 10pt">/<%# DataBinder.Eval(Container.DataItem, "ST_title") %></span></DIV>
													</TD>
													<TD height="20" style="width: 27%;font-size: 10pt">
														<DIV align="center"><%# DataBinder.Eval(Container.DataItem, "ST_content") %>
                                                            <span style="font-size: 10pt">/<%# DataBinder.Eval(Container.DataItem, "ST_hf") %></span></DIV>
													</TD>
													<TD height="20" style="width: 57px">
                                                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="8pt" Height="14px" Width="1px" /></TD>
												</TR>
											</TABLE>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                        </tr>
                                    </table>
                                    
                                    
                                    </td>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                        </td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
            </table>
            &nbsp;
		</form>
	</body>
</HTML>
