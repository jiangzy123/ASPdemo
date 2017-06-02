<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TreeMenuSys.aspx.cs" Inherits="Menu_TreeMenuSys" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>body{margin-top:0px;margin-left:0px}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-right: 0px; background-position: left top; margin-top: 0px; padding-left: 0px; margin-left: 0px; vertical-align: top; margin-right: 0px; padding-top: 0px; text-align: left; background-repeat: no-repeat;">
        <table bordercolor="silver" cellpadding="0" cellspacing="0" height="525" style="background-image: url(../Images/SysSkin/left.jpg); width: 104px;">
            <tr>
                <td style="width: 18px">
                </td>
                <td style="width: 100px">
                    <br />
        <asp:TreeView ID="TreeView1" runat="server" Height="241px" Font-Size="12pt" ForeColor="Black" Width="121px" style="left: 1px; position: relative; top: -64px" ImageSet="Faq" >
            <Nodes>
                <asp:TreeNode Text="博客后台管理" ToolTip="博客后台管理" Value="博客后台管理">
                   
               
               <asp:TreeNode Text="系统管理员" ToolTip="系统管理员" Value="系统管理员">
                <asp:TreeNode Text="系统管理员" ToolTip="系统管理员" Value="系统管理员" Target="rightFrame" NavigateUrl="AdminManage.aspx"></asp:TreeNode>
                    
                    <asp:TreeNode Text="博客管理" ToolTip="博客管理" Value="博客管理" Target="rightFrame" NavigateUrl="BlogManage.aspx"></asp:TreeNode>
                 </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <HoverNodeStyle ForeColor="Purple" Font-Underline="True" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px"
                NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
