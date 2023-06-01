<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridPageSort.aspx.cs" Inherits="Web2022220054罗忠烨.L11.GridPageSort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString4 %>" SelectCommand="SELECT * FROM [学生表]" DeleteCommand="DELETE FROM [学生表] WHERE [Id] = @Id" InsertCommand="INSERT INTO [学生表] ([学号], [姓名], [性别], [手机号], [邮箱], [出生日期], [添加时间], [班号]) VALUES (@学号, @姓名, @性别, @手机号, @邮箱, @出生日期, @添加时间, @班号)" UpdateCommand="UPDATE [学生表] SET [学号] = @学号, [姓名] = @姓名, [性别] = @性别, [手机号] = @手机号, [邮箱] = @邮箱, [出生日期] = @出生日期, [添加时间] = @添加时间, [班号] = @班号 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="手机号" Type="String" />
                    <asp:Parameter Name="邮箱" Type="String" />
                    <asp:Parameter DbType="Date" Name="出生日期" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="手机号" Type="String" />
                    <asp:Parameter Name="邮箱" Type="String" />
                    <asp:Parameter DbType="Date" Name="出生日期" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString %>" SelectCommand="SELECT 班号, 班号 + '(' + 年级 + '级)' AS 年级班号 FROM 班级表 ORDER BY 班号, 年级"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="3" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:TemplateField HeaderText="性别" SortExpression="性别">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("性别") %>'>
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("性别") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="班号" SortExpression="班号">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="年级班号" DataValueField="班号" SelectedValue='<%# Bind("班号") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("班号") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="手机号" HeaderText="手机号" SortExpression="手机号" />
                    <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱" />
                    <asp:TemplateField HeaderText="出生日期" SortExpression="出生日期">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("出生日期", "{0:D}") %>' TextMode="DateTime"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("出生日期") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                    <asp:BoundField DataField="照片" HeaderText="照片" SortExpression="照片" />

                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerSettings LastPageText="&amp;gt;|" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
