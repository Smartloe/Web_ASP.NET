<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Web2022220054罗忠烨.L12.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString5 %>" DeleteCommand="DELETE FROM [班级表] WHERE [班号] = @班号" InsertCommand="INSERT INTO [班级表] ([班号], [年级], [添加时间]) VALUES (@班号, @年级, @添加时间)" SelectCommand="SELECT * FROM [班级表]" UpdateCommand="UPDATE [班级表] SET [年级] = @年级, [添加时间] = @添加时间 WHERE [班号] = @班号">
                <DeleteParameters>
                    <asp:Parameter Name="班号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="班号" Type="String" />
                    <asp:Parameter Name="年级" Type="String" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="年级" Type="String" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="班号" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="班号" HeaderText="班号" ReadOnly="True" SortExpression="班号" />
                    <asp:BoundField DataField="年级" HeaderText="年级" SortExpression="年级" />
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </div>
    </form>
    <script>
        function confirmDelete(className) {
            return confirm("确定要删除" + className + "?");
        }
    </script>
</body>
</html>
