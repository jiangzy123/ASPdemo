<%@ Page language="c#" Inherits="ST_GROUP.Blog.ST_message" CodeFile="ST_message.aspx.cs" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc4" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>BLOG--网友留言 </title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/css.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body bgColor="<%#ST_tcolor%>" topmargin="0">
		<table cellSpacing="1" cellPadding="0" width="750" align="center" bgColor="<%#ST_tcolor%>" border="0">
			<form id="ST_show" method="post" runat="server">
				
					<tr bgColor="#ffffff">
						<td colSpan="2" style="height: 177px">
                            &nbsp;<uc3:Header ID="Header1" runat="server" />
                        </td>
					</tr>
					<tr bgColor="#ffffff">
						<td colSpan="2" style="background-image: url(images/1294850_472733.gif)">
                            <asp:GridView ID="messagelist" runat="server" AutoGenerateColumns="False" Width="759px">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
											<A href="BlogIndex.aspx">回首页</A>-&gt;<A href="#">网友留言</A>
                                        </HeaderTemplate>
                                        <ItemTemplate>
											<TABLE cellSpacing="0" cellPadding="0" width="700" align="center" border="0" valign="top">
												<TR>
													<TD bgColor="<%#ST_bgcolor%>" colSpan=2 height=25>
														<DIV align="left"><FONT size="2"><STRONG>网友</STRONG></FONT><A href='<%# DataBinder.Eval(Container.DataItem, "ST_homepage") %>' target=_blank><%# DataBinder.Eval(Container.DataItem, "ST_nickname") %></A><FONT size="2"><STRONG>于<%# DataBinder.Eval(Container.DataItem, "ST_mdate") %>留言:</STRONG></FONT></DIV>
													</TD>
												</TR>
												<TR>
													<TD style="HEIGHT: 31px" colSpan="2"><FONT style="FONT-SIZE: 12px"><%# DataBinder.Eval(Container.DataItem, "ST_content") %><STRONG><FONT size="2"></FONT></STRONG><STRONG><FONT size="2"></FONT></STRONG><BR>
														</FONT>
													</TD>
												</TR>
												<TR bgColor="#f8f8f8">
													<TD style="HEIGHT: 32px" align="left" width="69%" colSpan="2"><FONT face="宋体" color="#ff3366" size="2"><STRONG><EM>回复:</EM></STRONG></FONT><%# DataBinder.Eval(Container.DataItem, "ST_hf") %></TD>
												</TR>
											</TABLE>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
					</tr>
					<tr bgColor="#ffffff">
						<td colSpan="2">
							<P style="background-image: url(images/01.jpg)">
                                <span style="font-size: 11pt">
                                <strong>网友呢称</strong>:</span>
								<asp:TextBox id="nickname" runat="server"></asp:TextBox><BR>
                                <span style="font-size: 11pt">
                                <strong>留言标题</strong>:</span>
								<asp:TextBox id="title" runat="server"></asp:TextBox><BR>
                                <span style="font-size: 11pt">
                                <strong>个人主页</strong>:</span>
								<asp:TextBox id="homepage" runat="server"></asp:TextBox><BR>
                                <span style="font-size: 11pt">
                                <strong>留言内容</strong>:</span><TEXTAREA id="content" name="r_content" rows="6" cols="40" runat="server" style="background-color: aliceblue"></TEXTAREA>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="留言" CausesValidation="False" /><BR>
								</P>
						</td>
					<tr bgColor="#ffffff">
						<td colSpan="2" align=center>
                            <uc4:Footer ID="Footer1" runat="server" />
                            &nbsp;</td>
					</tr>
				
			</form>
		</table>
	</body>
</HTML>
