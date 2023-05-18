<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConnStr.aspx.cs" Inherits="Web2022220054罗忠烨.L10.ConnStr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tangbin %>" SelectCommand="SELECT [Id], [学号], [姓名] FROM [学生表] WHERE ([出生日期] &lt; @出生日期) ORDER BY [Id] DESC" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:Parameter DbType="Date" DefaultValue="1999-02-03" Name="出生日期" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>