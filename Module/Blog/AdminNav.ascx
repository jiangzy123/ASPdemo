<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminNav.ascx.cs" Inherits="UseControls_MainControls_Navigation" %>
<table style="width: 240px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 67px;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
                <asp:LinkButton ID="lnkbtnAdmin" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" PostBackUrl="~/Module/Admin/AdminManage.aspx" CausesValidation="False">管理员</asp:LinkButton></span></td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 80px;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="9pt"
                Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Admin/VisitorManage.aspx">游客管理</asp:LinkButton><span style="font-size: 9pt"></span></span></td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 80px; color: #000000;">
            <span style="font-size: 9pt; color: #cc0033">◎ <a href="../../Index.aspx" style="color: #000000;
                text-decoration: none">
                <asp:LinkButton ID="lnkbtnCancle" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" OnClick="lnkbtnCancle_Click" CausesValidation="False">退出登录</asp:LinkButton></a> </span></td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
</table>
