<%@ Page Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ST_BlogIndex.aspx.cs" Inherits="Module_Admin_ST_type" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 687px; height: 384px">
        <tr>
            <td style="width: 84px; height: 432px;">
                <iframe src="TreeMenuSys.aspx"  name="leftFrame" width="200"  frameborder="no" scrolling="no" style="height: 466px; width: 157px; background-image: url(../../Images/Skin/left.jpg);" ></iframe>
            </td>
            <td style="width: 95px; height: 432px;">
                <iframe src="CommonPage.aspx" name="rightFrame" frameborder="no" scrolling="no" height="500" width="600" style="width: 586px; height: 491px;"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

