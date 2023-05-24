<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="Web2022220054罗忠烨.L11.StudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString3 %>" SelectCommand="SELECT [Id], [姓名] FROM [学生表]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="姓名" DataValueField="Id"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
