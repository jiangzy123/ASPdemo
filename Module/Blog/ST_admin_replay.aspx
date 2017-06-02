<%@ Page language="c#" Inherits="ST_GROUP.Blog.ST_admin_replay" CodeFile="ST_admin_replay.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ST_admin_replay</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body style="background-image: url(images/05.jpg)">
		<form id="Form1" method="post" runat="server">
                        <table cellpadding="0" cellspacing="0" style="left: 0px; width: 586px; height: 263px; background-image: url(../../Images/Skin/right.jpg);">
                            <tr>
                                <td colspan="3" style="height: 36px Font-Size="21pt"" align="center">
                                    <span style="color: #993300"><strong>&nbsp; &nbsp; &nbsp; &nbsp;<br />
                                        <br />
                                        <br />
                                        <br />
                                        回应管理&nbsp; </strong></span></td>
                            </tr>
                            <tr>
                                <td colspan="3" rowspan="2" style="vertical-align: top; height: 205px; text-align: left">
                                    <table style="width: 510px; height: 211px">
                                        <tr>
                                            <td style="width: 92px; height: 10px">
                                            </td>
                                            <td style="width: 115px; height: 10px">
                                                <span style="font-size: 9pt">
                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="9pt" Text="全选" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" /></span></td>
                                            <td style="width: 142px; height: 10px">
                        <asp:Button ID="Button1" runat="server" Text="取消全选" OnClick="Button1_Click" /></td>
                                            <td style="width: 54px; height: 10px">
                        <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="Button2_Click" /></td>
                                            <td style="width: 111px; height: 10px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" rowspan="2" style="vertical-align: top; height: 163px; text-align: center">
                                                <asp:GridView ID="ReplayList" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                                                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" OnPageIndexChanging="ReplayList_PageIndexChanging" OnRowDataBound="ReplayList_RowDataBound" PageSize="6" Width="448px" OnRowDeleting="ReplayList_RowDeleting">
                                                    <FooterStyle BackColor="Tan" />
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="9pt" Width="44px" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="ST_r_nick" HeaderText="回应者" />
                                                        <asp:BoundField DataField="ST_r_content" HeaderText="回应内容" />
                                                        <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
                                                    </Columns>
                                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                </asp:GridView>
                                                &nbsp;
                                                &nbsp;&nbsp;</td>
                                        </tr>
                                        <tr>
                                        </tr>
                                    </table>
                                    
                                    &nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                            </tr>
                        </table>
		</form>
	</body>
</HTML>
