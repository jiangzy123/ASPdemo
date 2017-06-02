<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VisitorHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="VisitorNav.ascx" TagName="VisitorNav" TagPrefix="uc1" %>
<table style="width: 755px; height: 150px; background-image: url(../../Images/Skin/back_head.jpg);" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 80px; height: 17px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 61px; height: 17px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 236px; height: 17px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 85px; height: 17px;
            text-align: right">
        </td>
        <td colspan="3" rowspan="1" style="vertical-align: text-top; width: 273px; height: 17px;
            text-align: right">
        </td>
    </tr>
    <tr>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 80px; height: 109px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 61px; height: 109px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 236px; height: 109px;
            text-align: right">
        </td>
        <td colspan="1" rowspan="3" style="vertical-align: text-top; width: 85px; height: 109px;
            text-align: right">
        </td>
        <td colspan="3" rowspan="3" style="vertical-align: text-top; height: 109px; text-align: right; width: 273px;">
            <uc1:VisitorNav ID="VisitorNav1" runat="server" />
            &nbsp;</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td colspan="3" rowspan="1" style="vertical-align: text-top; height: 1px; text-align: right">
            &nbsp;</td>
        <td colspan="1" rowspan="1" style="vertical-align: text-top; width: 85px; text-align: right; height: 1px;">
            <span style="font-size: 9pt; vertical-align: middle; text-align: center;">当前时间：</span></td>
        <td colspan="3" rowspan="1" style="vertical-align: top; text-align: left; height: 1px; font-size:9pt; font-family:宋体; color:Red; width: 273px;">
        <script type="text/javascript"> 
　　　document.write("<span id=labTime width='118px' Font-Size='9pt'></span>") //输出显示日期的容器 
　　　//每1000毫秒(即1秒) 执行一次本段代码 
　　　setInterval("labTime.innerText=new Date().toLocaleString()",1000)  
　　　　</script>
        </td>
    </tr>
</table>
