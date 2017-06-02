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
        <table bordercolor="silver" cellpadding="0" cellspacing="0" style="width: 182px; height: 407px;">
            <tr>
                <td style="width: 111px; height: 498px;">
                    <br />
        <asp:TreeView ID="TreeView1" runat="server" Height="301px" Font-Size="12pt" ForeColor="Black" Width="131px" style="left: 1px; position: relative; top: 27px" ImageSet="Faq" >
            <Nodes>
                <asp:TreeNode Text="博客后台管理" ToolTip="博客后台管理" Value="博客后台管理">
                   
                <asp:TreeNode Text="博客管理员" ToolTip="博客管理员" Value="博客管理员">
                    <asp:TreeNode Text="类型管理" ToolTip="类型管理" Value="类型管理" Target="rightFrame" NavigateUrl="BlogType.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="文章管理" ToolTip="文章管理" Value="文章管理" Target="rightFrame" NavigateUrl="ArticleManage.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="留言管理" ToolTip="留言管理" Value="留言管理" Target="rightFrame" NavigateUrl="ST_admin_message.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="回应管理" ToolTip="回应管理" Value="回应管理" Target="rightFrame" NavigateUrl="ST_admin_replay.aspx"></asp:TreeNode>
                     <asp:TreeNode Text="链接管理" ToolTip="链接管理" Value="链接管理" Target="rightFrame" NavigateUrl="LinkManage.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="通信管理" ToolTip="通信管理" Value="通信管理" Target="rightFrame" NavigateUrl="LinkManManage.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="图片管理" ToolTip="图片管理" Value="图片管理" Target="rightFrame" NavigateUrl="PhotoManage.aspx"></asp:TreeNode>
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
