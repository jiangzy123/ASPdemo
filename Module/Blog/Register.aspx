<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Module_Admin_Register" %>

<%@ Register Src="../Blog/VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>博客注册</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

function Reset1_onclick() {

}

// -->
</script>
</head>
<body style="text-align: center; margin-top: 0px; padding-top: 0px;" text="#00">

    <form id="form1" runat="server">
    <div style="text-align: center" align="center">
        <table style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="text-align: center; height: 81px;">
                    <uc3:VisitorHeader ID="VisitorHeader1" runat="server" />
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; height: 369px; background-image: url(../../Images/Skin/bbgg.jpg); background-repeat: no-repeat;">
                    <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                        width: 392px; border-bottom: black thin solid; text-align: center;" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()" align="center">
                        <tr>
                            <td colspan="4" rowspan="1" style="height: 15px; text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" rowspan="2" style="height: 20px; text-align: center">
                                <span style="color: #993300"><strong>博客注册资料</strong></span></td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">用 户 名:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: center; font-size: 12pt;">
                                <asp:TextBox ID="txtName" runat="server" Width="115px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left; font-size: 12pt;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Font-Size="9pt" ErrorMessage="用户名不允许为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                            </td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: center">
                                <asp:Button ID="btnCheck" runat="server" CausesValidation="False" Text="检测用户" Font-Size="9pt" OnClick="Button1_Click" /></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                密 &nbsp;&nbsp; 码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: center">
                                <asp:TextBox ID="txtPwd" runat="server" Width="117px" TextMode="Password" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                    Font-Size="9pt" ErrorMessage="请输入密码">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="font-size: 9pt; color: #000000">
                            <td style="width: 82px; height: 17px; text-align: center">
                                <span>
                                确认密码:</span></td>
                            <td colspan="2" style="width: 16px; height: 17px; text-align: center">
                                <asp:TextBox ID="txtOKpwd" runat="server" Width="117px" TextMode="Password" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 17px; text-align: left">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                                    ControlToValidate="txtOKpwd">*密码不一致</asp:CompareValidator></td>
                        </tr>
                        <tr style="font-size: 12pt; color: #000000">
                            <td style="width: 82px; height: 18px; text-align: center">
                                <span style="font-size: 9pt">
                                性 &nbsp;&nbsp; 别:</span></td>
                            <td colspan="2" style="width: 16px; height: 18px; text-align: center">
                                <asp:DropDownList ID="ddlSex" runat="server" Font-Size="9pt">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList>&nbsp;</td>
                            <td colspan="1" style="width: 173px; height: 18px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                真实姓名:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: center; font-size: 12pt;">
                                <asp:TextBox ID="txtRealName" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left; font-size: 12pt;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRealName" Font-Size="9pt" ErrorMessage="姓名不能为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000; font-size: 12pt;">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                生 &nbsp;&nbsp; 日:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: center">
                                <asp:TextBox ID="txtBirthday" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                博客主题:</span></td>
                            <td colspan="3" style="height: 21px; font-size: 12pt; text-align: left;">
                                <asp:TextBox ID="txtSubject" runat="server" Width="292px" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                家庭地址:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtAddress" runat="server" Width="290px" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                邮政编码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtPostCode" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                <asp:RegularExpressionValidator ID="revPostCode" runat="server" ControlToValidate="txtPostCode"
                                    ErrorMessage="您的邮编输入有误" Font-Size="9pt" ValidationExpression="\d{6}" Width="134px">您的邮编输入有误</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                密码问题:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtQues" runat="server" Width="290px" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                问题答案:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtAns" runat="server" Width="290px" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                E-mail:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtEmail" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="您输入的E-mail地址格式不正确，请重新输入" Font-Size="9pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Width="138px">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                家庭电话:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtHphone" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtHphone"
                                    ErrorMessage="您输入的电话号码有误，请重新输入" Font-Size="9pt" ValidationExpression="\d{3,4}-\d{7,8}">您输入的电话号码有误，请重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">手机号码</span>:</td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtMphone" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMphone"
                                    ErrorMessage="您输入的号码有误，请重新输入" Font-Size="9pt" ValidationExpression="^[1]\d{10}">您输入的手机号码有误，请重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                QQ:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtQQ" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">注册日期:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtICQ" runat="server" Width="117px" Font-Size="9pt"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px" align="left">
                                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" CausesValidation="False"
                                    OnClick="Button1_Click1" Text=".." Width="23px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                            </td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                    Font-Size="8pt" ForeColor="#003399" Height="170px" OnSelectionChanged="Calendar1_SelectionChanged"
                                    Width="184px">
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                </asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 21px; text-align: center">
                                &nbsp;<asp:Button ID="btnOK" runat="server" Text="确定" Font-Size="9pt" OnClick="btnOK_Click" />
                                <asp:Button ID="btnBack" runat="server" Text="取消" Font-Size="9pt" OnClick="btnBack_Click" CausesValidation="False" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" Height="35px" Width="133px" ShowMessageBox="True" ShowSummary="False" />
                            </td>
                        </tr>
                    </table>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 72px">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>

</body>
</html>
