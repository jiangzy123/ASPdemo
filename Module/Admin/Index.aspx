<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Module_Admin_Index" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员登陆</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div align="center">
        <table style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td style="text-align: center; width: 691px; height: 159px;" colspan="3">
                    <uc5:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 691px; vertical-align: middle; height: 477px; background-image: url(../../Images/Skin/reg.jpg);" colspan="3" rowspan="2">
                    <table style="width: 697px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="3" style="text-align: center; height: 18px;">
                                <span style="color: #993300"><strong>管理员登录</strong></span></td>
                        </tr>
                        <tr>
                            <td colspan="3" rowspan="2" style="text-align: center">
                                <table style="width: 291px">
                                    <tr>
                                        <td style="width: 74px; height: 21px">
                                            <span style="font-size: 9pt">用户名:</span></td>
                                        <td colspan="2" style="height: 21px; text-align: left">
                                            <asp:TextBox ID="txtUid" runat="server" Width="191px" Font-Size="9pt"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 74px">
                                            <span style="font-size: 9pt">密&nbsp; 码:</span></td>
                                        <td colspan="2" style="text-align: left">
                                            <asp:TextBox ID="txtPwd" runat="server" Width="191px" TextMode="Password" Font-Size="9pt"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 74px; height: 24px;">
                                            <span style="font-size: 9pt">验证码:</span></td>
                                        <td style="width: 128px; text-align: left; height: 24px;">
                                            <asp:TextBox ID="txtVali" runat="server" Width="115px" Font-Size="9pt"></asp:TextBox></td>
                                        <td style="width: 66px; text-align: left; height: 24px;">
                                            <asp:Label ID="labVali" runat="server" Width="30px" BackColor="Transparent" BorderColor="White" ForeColor="Blue" Height="15px" Font-Size="12pt"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Button ID="btnOK" runat="server" Font-Size="9pt" Text="确定" OnClick="btnOK_Click" CausesValidation="False" />
                                            <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" Text="取消" OnClick="btnCancle_Click" CausesValidation="False" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 16px">
                                            <asp:LinkButton ID="lnkbtnForget" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Admin/Findpwd1.aspx" Font-Underline="False" ForeColor="Blue" CausesValidation="False">忘记密码?</asp:LinkButton></td>
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
                <td colspan="3" rowspan="1" style="text-align: center; width: 691px; height: 94px;">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
