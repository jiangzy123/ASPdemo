<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoManage.aspx.cs" Inherits="Module_Blog_PhotoManage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>图片管理</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div align="left">
        <table style="width: 252px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" rowspan="2" style="vertical-align: middle; height: 477px; text-align: center; background-image: url(../../Images/Skin/bg.jpg); width: 755px;">
                    <table style="width: 449px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="6" style="height: 26px">
                                <strong><span style="color: #993300">图片信息管理</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 114px; height: 6px">
                                <span style="font-size: 9pt">查询条件</span></td>
                            <td style="width: 92px; height: 6px">
                                <asp:DropDownList ID="ddlSearch" runat="server" Width="114px" Font-Size="9pt">
                                    <asp:ListItem>图片ID</asp:ListItem>
                                    <asp:ListItem>图片主题</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 115px; height: 6px">
                                <span style="font-size: 9pt">关键字</span></td>
                            <td style="width: 142px; height: 6px">
                                <asp:TextBox ID="txtKey" runat="server" Width="87px" Font-Size="9pt"></asp:TextBox></td>
                            <td style="width: 54px; height: 6px">
                                <asp:Button ID="btnSearch" runat="server" Font-Size="9pt" Text="查找" OnClick="btnSearch_Click" /></td>
                            <td style="width: 148px; height: 6px">
                                <asp:LinkButton ID="lnkbtnAdd" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Blog/AddPhoto.aspx" Font-Underline="False" ForeColor="Blue">添加图片</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td colspan="6" rowspan="2" style="height: 121px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2"
                                    Font-Size="9pt" ForeColor="Black" GridLines="None" Width="500px" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                                    <FooterStyle BackColor="Tan" />
                                    <Columns>
                                        <asp:BoundField HeaderText="图片ID" DataField="PictureID" />
                                        <asp:BoundField HeaderText="图片主题" DataField="Subject" />
                                        <asp:HyperLinkField DataNavigateUrlFields="ImageUrl" DataNavigateUrlFormatString="../../images/pictures/{0}"
                                            HeaderText="图片信息" Target="_blank" Text="查看图片" />
                                        <asp:CommandField HeaderText="删除图片" ShowDeleteButton="True" />
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
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
