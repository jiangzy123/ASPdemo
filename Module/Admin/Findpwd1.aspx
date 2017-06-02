<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Findpwd1.aspx.cs" Inherits="Module_Admin_Findpwd" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>找回密码</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 755px; text-align: center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 8px">
                    <uc5:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 371px; background-image: url(../../Images/Skin/bg.jpg); vertical-align: middle; text-align: center;" colspan="3" rowspan="2">
                    <table style="width: 392px">
                        <tr>
                            <td colspan="3">
                                <strong><span style="color: #993300; text-align: center;">找回密码</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 149px; text-align: right;">
                                <span style="font-size: 9pt">用户名:</span></td>
                            <td style="width: 170px; text-align: left;">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                            <td style="width: 129px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName"
                                    ErrorMessage="请输入用户名">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 149px; text-align: right;">
                                <span style="font-size: 9pt">验证码:</span></td>
                            <td style="width: 170px; text-align: left;">
                                <asp:TextBox ID="txtVali" runat="server" Width="72px"></asp:TextBox>
                                <asp:Label ID="labVial" runat="server" Font-Bold="False" Font-Size="12pt" ForeColor="#0000FF"
                                    Width="68px"></asp:Label></td>
                            <td style="width: 129px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 149px">
                            </td>
                            <td style="width: 170px">
                                <asp:Button ID="btnOK" runat="server" Text="确定" OnClick="btnOK_Click" Font-Size="9pt" />
                                <asp:Button ID="btnCancle" runat="server" CausesValidation="False" Text="取消" OnClick="Button2_Click" Font-Size="9pt" /></td>
                            <td style="width: 129px">
                            </td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height: 21px">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
