<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="AdminNav.ascx" TagName="AdminNav" TagPrefix="uc1" %>
<table style="width: 755px; height: 149px; background-image: url(../../Images/Skin/head.jpg);" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 87px; height: 125px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 39px; height: 125px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 25px; height: 125px;
            text-align: right">
            </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; height: 125px;
            text-align: right">
        </td>
        <td colspan="3" rowspan="3" style="vertical-align: text-top; height: 125px; text-align: right; width: 151px;">
            &nbsp;&nbsp;</td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 283px; height: 125px;
            text-align: right">
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 87px; height: 22px;
            text-align: right">
            <span style="font-size: 9pt">欢迎您:</span></td>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 39px; height: 22px;
            text-align: left">
            <asp:Label ID="labName" runat="server" Font-Size="9pt" ForeColor="#FF0000" Width="78px"></asp:Label></td>
        <td colspan="5" rowspan="1" style="font-size: 9pt; vertical-align: text-top; color: red;
            font-family: 宋体; height: 22px; text-align: left">
            &nbsp;</td>
        <td colspan="1" rowspan="1" style="font-size: 9pt; vertical-align: text-top; color: red;
            font-family: 宋体; height: 22px; text-align: left">
            <uc1:AdminNav ID="AdminNav1" runat="server" />
        </td>
    </tr>
</table>
