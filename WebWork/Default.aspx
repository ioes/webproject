<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebWork._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div class="content-wrapper">
        <hgroup class="title">
            <h2>在线考试系统</h2>
        </hgroup>
        <p>
            若要了解有关项目的详细信息，请访问 <a href="http://study.jnu.edu.cn" title="ASP.NET Website">http://study.jnu.edu.cn</a>
        </p>
        </p>
    </div>
    <h3>项目要求:</h3>
    <ol class="round">
        <li class="one">
            <h5>第一步</h5>
            分课程、题型建立试题库（题型包括单选、多选、问答题）。
        </li>
        <li class="two">
            <h5>第二步</h5>
            教师按课程完成实体与答案的录入、修改、删除、查询、关闭等操作。    
        </li>
        <li class="three">
            <h5>第三步</h5>
            学生按课程章节进行测试，并自动判分，完成后可以显示答案。
        </li>
    </ol>
    <form id="form1" runat="server">
        <div>
            请点击一下按钮进入在线开始系统：
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="测试" Height="35px" OnClick="Button1_Click" Width="106px" />
        </p>
    </form>
</body>
</html>
