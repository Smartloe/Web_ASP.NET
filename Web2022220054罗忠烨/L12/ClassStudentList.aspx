<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassStudentList.aspx.cs" Inherits="Web2022220054罗忠烨.L12.ClassStudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString6 %>" SelectCommand="SELECT * FROM [学生表] WHERE ([班号] = @班号) ORDER BY [学号]">
                <SelectParameters>
                    <asp:QueryStringParameter Name="班号" QueryStringField="bh" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="手机号" HeaderText="手机号" SortExpression="手机号" />
                    <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱" />
                    <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                    <asp:BoundField DataField="班号" HeaderText="班号" SortExpression="班号" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
