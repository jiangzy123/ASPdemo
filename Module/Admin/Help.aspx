<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Module_Admin_Help" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>帮助说明</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table style="width: 1px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 10px; width: 744px;">
                    <uc2:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 477px; background-image: url(../../Images/Skin/reg.jpg); width: 744px;" colspan="3">
                    <div style="width: 478px; height: 314px; text-align: left;">
                        <span style="font-size: 9pt">
                            <div style="width: 486px; height: 1px; text-align: center">
                                <br />
                            系统帮助说明<br />
                            </div>
                            <br />
                            &nbsp; &nbsp;
                            为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：&nbsp;<br />
                            <br />
                            &nbsp; （一）不得利用本网站进行商业广告宣传；
                            <br />
                            &nbsp;&nbsp; （二）不得利用本网站发送非法文章；
                            <br />
                            &nbsp;&nbsp; （三）不得利用本网站进行上传非法图片；
                            <br />
                            &nbsp;&nbsp; （四）互相尊重，对自己的言论和行为负责；
                            <br />
                            &nbsp;&nbsp; （五）普通用户欲删除文章、评论、图片等信息，请与管理员联系；<br />
                            &nbsp;&nbsp; （六）本网站版权归XXX科技公司，不得对本网站进行转载或作为私用；</span></div>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 744px">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
