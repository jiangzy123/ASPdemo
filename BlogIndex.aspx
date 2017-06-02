<%@ Page Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="BlogIndex.aspx.cs" Inherits="BlogIndex" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

function TABLE2_onclick() {

}

// -->
</script>

    <table align="center" bgcolor="<%#ST_tcolor%>" border="0" cellpadding="0" cellspacing="1"
        width="750" id="TABLE2" language="javascript" onclick="return TABLE2_onclick()" style="height: 162px">
        <tbody>
            <tr bgcolor="#ffffff">
                <td style="background-image: url(Images/Skin/04.jpg); width: 216px; height: 755px" valign="top">
                    <font face="宋体">
                    <table align="center" bgcolor="#ffbf30" cellspacing="1" style="width: 204px; height: 25px">
                        <tr>
                            <td align="center" bgcolor="#ffffff" style="height: 22px">
                                
                             <MARQUEE direction="left" onmouseout="this.start()" onmouseover="this.stop()" scrollAmount="2" scrollDelay="4" style="height: 22px; vertical-align: middle; text-align: center; width: 164px;">
                                 <span style="font-size: 11pt">欢迎您光临本网站！个人博客——追逐时代潮流，尽显个性风采！</span></MARQUEE>
                                <a href=""><strong><span style="font-size: 9pt; color: #000000"></span></strong></a></td>
                        </tr>
                    </table>
                    <table align="center" border="0" bgcolor="<%#ST_bgcolor%>" cellpadding="0" cellspacing="1"
                        style="font-size: 9pt; color: #000000; background-image: url(Images/Skin/index1_01_05.jpg);" width="200">
                        <tr>
                            <td height="25">
                                <div align="center">
                                    <span style="font-size: 11pt">
                                    &nbsp;</span>&nbsp;</div>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif); height: 211px;">
                                        <asp:Calendar ID="BlogCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                            ForeColor="#663399" Height="200px" ShowGridLines="True" Width="195px">
                                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                            <SelectorStyle BackColor="#FFCC66" />
                                            <OtherMonthDayStyle ForeColor="#CC9966" />
                                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        </asp:Calendar>
                                    </td>
                        </tr>
                    </table>
                    </font>
                    <table align="center" bgcolor="<%#ST_bgcolor%>" border="0" cellpadding="0" cellspacing="1"
                        style="font-size: 9pt; color: #000000; background-image: url(Images/Skin/index1_01_08.jpg); height: 153px;" width="200">
                        <tr>
                            <td height="25">
                                <div align="center">
                                    <span style="font-size: 11pt;">
                                        &nbsp;</span>&nbsp;</div>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif); height: 120px;">
                                <asp:DataList ID="ClassList" runat="server" Font-Size="11pt" Width="119px">
                                    <HeaderTemplate>
                                        <font color="red" size="2">★</font><a href="BlogIndex.aspx"> 博客首页</a>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <font color="red" size="2">★</font><a href='index_<%# DataBinder.Eval(Container.DataItem, "ST_c_name")%>_<%# DataBinder.Eval(Container.DataItem, "ST_c_id") %>.aspx '>
                                            <%# DataBinder.Eval(Container.DataItem, "ST_c_name") %>
                                        </a>
                                    </ItemTemplate>
                                </asp:DataList>
                                
                        </tr>
                    </table>
                    <table align="center" border="0" cellpadding="0" cellspacing="1"
                        width="200" style="background-image: url(Images/Skin/index1_01_10.jpg)">
                        <tr>
                            <td style="height: 24px">
                                <div align="center">
                                    <strong><span style="font-size: 11pt"></span></strong>&nbsp;
                                &nbsp;</div>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif)">
                                <asp:DataList ID="CmdList" runat="server" Font-Size="11pt" Width="120px">
                                    <ItemTemplate>
                                        &nbsp;<a href='<%# DataBinder.Eval(Container.DataItem, "ST_n_id") %>.aspx'>
                                            <%# DataBinder.Eval(Container.DataItem, "ST_n_title") %>
                                        </a>
                                    </ItemTemplate>
                                </asp:DataList></td>
                        </tr>
                    </table>
                    <table align="center" bgcolor="<%#ST_bgcolor%>" border="0" cellpadding="0" cellspacing="1"
                        width="200" style="background-image: url(Images/Skin/index1_01_12.jpg)">
                        <tr>
                            <td height="25">
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif); height: 19px;">
                                <%ST_get_Replay();%>
                            </td>
                        </tr>
                    </table>
                    <table align="center" bgcolor="<%#ST_bgcolor%>" border="0" cellpadding="0" cellspacing="1"
                        width="200" style="background-image: url(Images/Skin/index1_01_14.jpg)">
                        <tr>
                            <td style="height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif)">
                                <%get_Link();%>
                            </td>
                        </tr>
                    </table>
                    <table id="Table1" align="center" bgcolor="<%#ST_bgcolor%>" border="0" cellpadding="0"
                        cellspacing="1" width="200" style="background-image: url(Images/Skin/index1_01_16.jpg)">
                        <tr>
                            <td height="25" style="width: 198px">
                                <div align="center">
                                    <strong><span style="font-size: 11pt"></span></strong></div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="#ffffff" style="background-image: url(images/1294850_472733.gif);
                                width: 198px">
                                <br />
                                <a href="ST_message.aspx"><font size="3">[给我留言]</font></a></td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <p class="left">
                    <td bgcolor="#ffffff" style="background-image: url(Images/Skin/1294850_472733.gif); height: 755px"
                        valign="top" width="540">
                        <asp:GridView ID="NewsList" runat="server" AutoGenerateColumns="False" Width="544px" AllowPaging="True" OnPageIndexChanging="NewsList_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                            <table align="center" border="0" cellpadding="0" cellspacing="0" valign="top" width="98%">
                                                <tr>                                 
                                                    <td bgcolor="<%#ST_bgcolor%>" colspan="2" height="25">
                                                        <div align="center">
                                                            <font face="宋体"></font><font face="宋体"></font><a href='<%# DataBinder.Eval(Container.DataItem, "ST_n_id") %>.aspx'>
                                                                <font style="font-size: 14px"><b>
                                                                    <%# DataBinder.Eval(Container.DataItem, "ST_n_title") %>
                                                                </b></font></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <b><font size="-1">摘要</font></b>: &nbsp;<font style="font-size: 12px"><%# DataBinder.Eval(Container.DataItem, "ST_n_key") %><br>
                                                        </font>
                                                    </td>
                                                </tr>
                                                <tr bgcolor="#f8f8f8">
                                                    <td align="right" colspan="2" width="69%">
                                                        [<a href='<%# DataBinder.Eval(Container.DataItem, "ST_n_id") %>.aspx'>点击阅读全文</a>]
                                                        <font style="font-size: 12px"><font color="#0000ff">阅读</font>:[<%# DataBinder.Eval(Container.DataItem, "ST_n_hit") %>]
                                                            <font color="#ff3300">评论</font>:[<%# DataBinder.Eval(Container.DataItem, "ST_n_re") %>]
                                                            <font color="#003399">时间</font>:[<%# DataBinder.Eval(Container.DataItem, "ST_n_date") %>]</font></td>
                                                </tr>
                                            </table>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        <a href="BlogIndex.aspx">首页</a>-&gt;<a href="#"><%=Request.QueryString["name"]%>文章列表</a>
                                    </HeaderTemplate>
                                    <ItemStyle BackColor="BlanchedAlmond" />
                                    <HeaderStyle BackColor="Peru" />
                                    <FooterStyle BackColor="#FFC080" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </p>
            </tr>
        </tbody>
    </table>



</asp:Content>

