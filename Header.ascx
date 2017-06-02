<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="UseControls_Header" %>
<%@ Register Src="VisitorNav.ascx" TagName="VisitorNav" TagPrefix="uc2" %>
<table align="center" style="width: 755px; height: 127px; background-image: url(Images/Skin/head.jpg);" cellpadding="0" cellspacing="0" width="750">
    <tr>
        <td colspan="5" style="width: 716px; text-align: right; height: 8px;">
        </td>
    </tr>
    <tr>
        <td colspan="5" style="width: 716px; height: 1px; text-align: right">
            <uc2:VisitorNav ID="VisitorNav1" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="5" style="width: 716px; text-align: right; height: 59px;">
            &nbsp;
            &nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5" style="height: 28px; text-align: center; width: 716px;">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" Height="38px"
                ShowMessageBox="True" ShowSummary="False" Width="126px" />
            <asp:RequiredFieldValidator ID="reqVial" runat="server" ControlToValidate="txtUid"
                ErrorMessage="用户名不能为空" Font-Size="9pt">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd"
                ErrorMessage="密码不能为空" Font-Size="9pt">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVali"
                ErrorMessage="验证码不能为空" Font-Size="9pt">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td align="center" colspan="4" rowspan="2" style="height: 4px; text-align: center; width: 755px;">
            <table cellpadding="0" cellspacing="0" width="750" style="height: 26px">
                <tr>
                    <td align="center" colspan="1" rowspan="3" style="width: 95px; height: 1px; text-align: right">
                    </td>
                    <td align="center" colspan="3" rowspan="3" style="height: 1px; text-align: center">
                        <span style="font-size: 9pt"></span></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 35px; height: 1px; text-align: center">
                        <span style="font-size: 9pt"></span></td>
                    <td align="center" colspan="1" rowspan="3" style="height: 1px; text-align: center;">
                        <span style="font-size: 9pt">
                        </span></td>
                    <td align="center" colspan="1" rowspan="3" style="height: 1px">
                    </td>
                    <td align="center" colspan="1" rowspan="3" style="width: 138px; height: 1px">
                        <span style="font-size: 9pt">用户名<asp:TextBox ID="txtUid" runat="server" Width="65px" Font-Size="9pt"></asp:TextBox></span></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 117px; height: 1px; text-align: center">
                        <span style="font-size: 9pt">
                        密码<asp:TextBox ID="txtPwd" runat="server" Width="65px" TextMode="Password" Font-Size="9pt"></asp:TextBox></span></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 53px; height: 1px; text-align: center">
                        <span style="font-size: 9pt">验证码</span></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 36px; height: 1px; text-align: center">
                        <asp:TextBox ID="txtVali" runat="server" Width="65px" Font-Size="9pt"></asp:TextBox></td>
                    <td align="center" colspan="1" rowspan="3" style="height: 1px; text-align: center">
                        <asp:Label ID="labVali" runat="server" Width="67px" BackColor="GhostWhite" ForeColor="Red" Font-Size="12pt"></asp:Label></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 27px; height: 1px; text-align: center">
                        <asp:Button ID="btnOK" runat="server" Text="登录" Font-Size="9pt" OnClick="btnOK_Click" /></td>
                    <td align="center" colspan="1" rowspan="3" style="height: 1px; text-align: center; width: 45px;">
                        <asp:Button ID="btnReg" runat="server" Text="注册" OnClick="btnReg_Click" CausesValidation="False" Font-Size="9pt" /></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 64px; height: 1px; text-align: center">
                        <asp:LinkButton ID="lnkbtnForget" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Blog/Findpwd1.aspx" CausesValidation="False" Font-Underline="False" ForeColor="Red" Width="61px">忘记密码？</asp:LinkButton></td>
                    <td align="center" colspan="1" rowspan="3" style="width: 40px; height: 1px; text-align: center">
                        <asp:LinkButton ID="lnkbtnAdmin" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Admin/Index.aspx" CausesValidation="False" Font-Underline="False" ForeColor="Red" Width="41px">管理员</asp:LinkButton></td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
    </tr>
</table>
