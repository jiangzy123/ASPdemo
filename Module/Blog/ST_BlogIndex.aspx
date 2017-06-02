<%@ Page Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ST_BlogIndex.aspx.cs" Inherits="Module_Admin_ST_type" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 97px; height: 424px;">
                <iframe src="TreeMenuSys.aspx"  name="leftFrame" width="200"  frameborder="no" scrolling="no" style="height: 465px; width: 157px; background-image: url(../../Images/Skin/left.jpg);" ></iframe>
            </td>
            <td style="width: 101px; height: 424px;">
                <iframe src="CommonPage.aspx" name="rightFrame" frameborder="no" scrolling="no" height="500" width="600" style="width: 582px; height: 465px; background-image: url(../../Images/Skin/right.jpg);"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

