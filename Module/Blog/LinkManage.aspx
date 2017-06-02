<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkManage.aspx.cs" Inherits="Module_Blog_LinkManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>链接管理</title>
        <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div style="text-align: left">
        <table cellpadding="0" cellspacing="0" style="width: 473px; height: 285px">
            <tr>
                <td align="left" colspan="3" rowspan="4" style="background-image: url(../../Images/Skin/bg.jpg);
                    vertical-align: middle; height: 478px; text-align: center">
                    <table cellpadding="0" cellspacing="0" style="left: 0px; width: 507px; height: 263px">
                        <tr>
                            <td colspan="3" style="height: 31px">
                                <span style="color: #993300"><strong>超链接管理</strong></span></td>
                        </tr>
                        <tr>
                            <td colspan="3" rowspan="2" style="vertical-align: top; height: 205px; text-align: left">
                                <table style="width: 510px; height: 211px">
                                    <tr>
                                        <td style="width: 114px; height: 10px">
                                            <span style="font-size: 9pt">查询条件</span></td>
                                        <td style="width: 92px; height: 10px">
                                            <asp:DropDownList ID="ddlSearch" runat="server" Font-Size="9pt" Width="114px">
                                                <asp:ListItem Selected="True">地址ID</asp:ListItem>
                                                <asp:ListItem>网站名称</asp:ListItem>
                                                <asp:ListItem>链接网址</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 115px; height: 10px">
                                            <span style="font-size: 9pt">关键字</span></td>
                                        <td style="width: 142px; height: 10px">
                                            <asp:TextBox ID="txtKey" runat="server" Font-Size="9pt" Width="77px"></asp:TextBox></td>
                                        <td style="width: 54px; height: 10px">
                                            <asp:Button ID="btnSearch" runat="server" Font-Size="9pt" OnClick="btnSearch_Click"
                                                Text="查找" /></td>
                                        <td style="width: 111px; height: 10px">
                                            <asp:LinkButton ID="lnkbtnAdd" runat="server" Font-Size="9pt" Font-Underline="False"
                                                ForeColor="Blue" PostBackUrl="~/Module/Blog/AddLink.aspx">添加新链接</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" rowspan="2" style="vertical-align: top; height: 163px; text-align: center">
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                CellPadding="2" Font-Size="9pt" ForeColor="Black" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                                                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                                                Width="500px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                                                <FooterStyle BackColor="Tan" />
                                                <Columns>
                                                    <asp:BoundField DataField="ST_l_id" HeaderText="地址ID" />
                                                    <asp:BoundField DataField="ST_l_name" HeaderText="网站名称" />
                                                    <asp:BoundField DataField="ST_l_url" HeaderText="链接网址" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="ST_l_id" DataNavigateUrlFormatString="AmendLink.aspx?ID={0}"
                                                        HeaderText="修改" Text="修改" />
                                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                                </Columns>
                                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                </table>
                                &nbsp;&nbsp;</td>
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
    </div>
    </form>
</body>
</html>
