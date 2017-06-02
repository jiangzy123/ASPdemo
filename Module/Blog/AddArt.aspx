<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddArt.aspx.cs" Inherits="Module_Blog_AddArt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加文章</title>
        <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div style="text-align: left">
        <table style="width: 528px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" rowspan="2" style="vertical-align: middle; text-align: center; height: 468px;">
                    <table style="width: 533px" cellspacing="0" class="0">
                        <tr>
                            <td style="text-align: right">
                                <span style="font-size: 9pt">文章标题:</span></td>
                            <td colspan="2" style="width: 368px; text-align: left">
                                <asp:TextBox ID="txtSubject" runat="server" Font-Size="9pt" Width="201px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubject"
                                    ErrorMessage="标题不能为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <span style="font-size: 9pt">作者:</span></td>
                            <td colspan="2" style="width: 368px; text-align: left">
                                <asp:TextBox ID="TextBox2" runat="server" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="text-align: right; height: 24px;">
                                类别:</td>
                            <td colspan="2" style="width: 368px; text-align: left; height: 24px;">
                                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="9pt">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="height: 14px; text-align: right">
                                摘要:</td>
                            <td colspan="2" style="width: 368px; height: 14px; text-align: left">
                                <asp:TextBox ID="TextBox1" runat="server" Height="61px" TextMode="MultiLine" Width="450px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: right">
                                <span style="font-size: 9pt">文章内容:</span></td>
                            <td colspan="2" style="width: 368px; height: 26px">
                                <asp:TextBox ID="txtContent" runat="server" Font-Size="9pt" Height="204px" TextMode="MultiLine"
                                    Width="455px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 24px">
                                <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="11pt" OnCheckedChanged="CheckBox1_CheckedChanged"
                                    Text="推荐" Width="56px" /></td>
                            <td colspan="2" style="width: 368px; height: 24px;">
                                &nbsp;<asp:Button ID="btnAdd" runat="server" Font-Size="9pt" OnClick="btnAdd_Click" Text="添加" />
                                <asp:Button ID="Button1" runat="server" Font-Size="9pt" OnClick="Button1_Click" Text="重置" />
                                <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" Text="返回" OnClick="btnCancle_Click" CausesValidation="False" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
