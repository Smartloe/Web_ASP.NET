<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirdViewSubDiff1.aspx.cs" Inherits="Web2022220054罗忠烨.L12.GirdViewSubDiff1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString6 %>" SelectCommand="SELECT * FROM [班级表]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="班号" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="#">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex +1 %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="年级" HeaderText="年级" SortExpression="年级" />
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                    <asp:HyperLinkField DataNavigateUrlFields="班号" DataNavigateUrlFormatString="ClassStudentList.aspx?bh={0}" DataTextField="班号" DataTextFormatString="显示{0}班学生" HeaderText="班号" Target="x2d" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
