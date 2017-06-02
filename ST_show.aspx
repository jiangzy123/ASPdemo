<%@ Page language="c#" Inherits="ST_GROUP.Blog.ST_show" CodeFile="ST_show.aspx.cs" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc4" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>BLOG 文章查看</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/css.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  </HEAD>
	<body topmargin="0" bgColor="<%#ST_tcolor%>">
	<form method="post" runat="server">
		<table cellSpacing="1" cellPadding="0" width="750" align="center" bgColor="#f9f8f4" border="0">
			
				<TBODY>
					<tr>
						<td colSpan="2">
                            &nbsp;<uc3:Header ID="Header1" runat="server" />
                        </td>
					</tr>
					<tr bgColor="#ffffff">
						<td vAlign="top" width="210" height="13" style="background-image: url(Images/Skin/04.jpg)">
							<table width="200" border="0" align="center" cellPadding="0" cellSpacing="1" bgcolor="<%#ST_bgcolor%>" style="background-image: url(Images/Skin/index1_01_08.jpg)">
								<tr>
									<td height="25" align="center">
                                        &nbsp;</td>
								</tr>
								<tr>
									<td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif)"><asp:datalist id="ClassList" runat="server">
											<HeaderTemplate>
												<FONT color="red" size="2">★</FONT><a href="BlogIndex.aspx"> 博客首页</a>
											</HeaderTemplate>
											<ItemTemplate>
												<FONT color="red" size="2">★</FONT><a href='index_<%# DataBinder.Eval(Container.DataItem, "ST_c_name") %>_<%# DataBinder.Eval(Container.DataItem, "ST_c_id") %>.aspx'>
													<%# DataBinder.Eval(Container.DataItem, "ST_c_name") %>
												</a>
											</ItemTemplate>
										</asp:datalist></td>
								</tr>
							</table>
							<table width="200" border="0" align="center" cellPadding="0" cellSpacing="1" bgcolor="<%#ST_bgcolor%>" style="background-image: url(Images/Skin/index1_01_10.jpg)">
								<tr>
									<td align="center" height="25">&nbsp;</td>
								</tr>
								<tr>
									<td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif)"><asp:datalist id="CmdList" runat="server">
											<ItemTemplate>
												&nbsp;<a href='<%# DataBinder.Eval(Container.DataItem, "ST_n_id") %>.aspx'>
													<%# DataBinder.Eval(Container.DataItem, "ST_n_title") %>
												</a>
											</ItemTemplate>
										</asp:datalist></td>
								</tr>
							</table>
							<TABLE id=Table1 cellSpacing=1 cellPadding=0 width=200 align=center 
      bgColor="<%#ST_bgcolor%>" border=0 style="background-image: url(Images/Skin/index1_01_16.jpg)">
								<TR>
									<TD height="25">
										<DIV align="center"><STRONG>
            <DIV align=center><STRONG></STRONG>&nbsp;</DIV></STRONG></DIV>
									</TD>
								</TR>
								<TR>
									<TD align="center" bgColor="#ffffff" style="background-image: url(images/1294850_472733.gif)">
										<BR>
										<A href="ST_message.aspx"><FONT size="3">[给我留言]</FONT></A></TD>
								</TR>
							</TABLE>
						</td>
						<td vAlign="top" width="540" bgColor="#ffffff" style="background-image: url(images/1294850_472733.gif)">
                            <asp:GridView ID="NewsShow" runat="server" AutoGenerateColumns="False" Width="536px">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
									<table border="0" style="width: 98%">
										<tr>
											<td><a href='BlogIndex.aspx'>首页</a>-><a href="#">文章查看</a></td>
										</tr>
										<tr align="center" bgcolor="<%#ST_bgcolor%>" height="25">
											<td>
												<font size="-1" color="#ff6633"><b>
														<%#DataBinder.Eval(Container.DataItem, "ST_n_title")%>
													</b></font>
											</td>
										</tr>
										<tr align="right" height="25">
											<td class="content">
												<font size="-1">[作者：<%#DataBinder.Eval(Container.DataItem, "ST_n_author")%>] [人气：<%#DataBinder.Eval(Container.DataItem, "ST_n_hit")%>] 
													[回复：<%#DataBinder.Eval(Container.DataItem, "ST_n_re")%>] [发布时间:<%#DataBinder.Eval(Container.DataItem, "ST_n_date")%>]
												</font>
											</td>
										</tr>
										<tr>
											<td class="content">
												<font size="-1">
													<%#DataBinder.Eval(Container.DataItem, "ST_n_content")%>
												</font>
											</td>
										</tr>
									</table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
							<br>
							<table width="98%" border="0" align="center" cellPadding="0" cellSpacing="1" bgcolor="<%#ST_bgcolor%>">
								<tr>
									<td align="center" height="25"><strong>网友回应</strong></td>
								</tr>
								<tr>
									<td bgcolor="#ffffff" height="30">
										<%ST_get_Replay();%>
									</td>
								</tr>
							</table>
							<br>
							<br>
							<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td height="25" colspan="2" class="article">&nbsp;&nbsp;<strong>网友回应</strong></td>
								</tr>
								<tr>
									<td width="18%" height="20"><div align="center">
                                        <span style="font-size: 11pt">呢称：</span></div>
									</td>
									<td width="82%" style="background-image: url(images/1294850_472733.gif)">&nbsp;
										<asp:TextBox id="r_nick" runat="server"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td height="20"><div align="center">
                                        <span style="font-size: 11pt">标题：</span></div>
									</td>
									<td style="background-image: url(images/1294850_472733.gif)">&nbsp;
										<asp:TextBox id="r_title" runat="server"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td height="20"><div align="center">
                                        <span style="font-size: 11pt">内容：</span></div>
									</td>
									<td height="20" style="background-image: url(images/01.jpg)">
										&nbsp;<TEXTAREA id="r_content" name="r_content" rows="6" cols="40" runat="server" style="left: -7px; position: relative; top: 0px; background-color: ghostwhite"></TEXTAREA>
									</td>
								</tr>
								<tr>
									<td height="20" colspan="2" style="background-image: url(images/1294850_472733.gif)" align="center">&nbsp;
										<asp:Button id="replay" runat="server" Text="提交" onclick="replay_Click" CausesValidation="False"></asp:Button></td>
								</tr>
							</table>
						</td>
					</tr>
			</TBODY>
		</table>
        <div align=center>
            <uc4:Footer ID="Footer1" runat="server" />
            &nbsp;</div>
	</form>
	</body>
</HTML>