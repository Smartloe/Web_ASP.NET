<%@ Page Title="图书查询" Language="C#" MasterPageFile="~/Home/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Home.Book.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div style="width:300px;" class="center-block">
            <div class="form-inline">
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</div>
                <div class="form-group">
                    <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control" >
                        <asp:ListItem Value="keyword">书名查询</asp:ListItem>
                        <asp:ListItem Value="bookId">书号查询</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</div>
                <div class="form-group">
                    <asp:button runat="server"  id="research" Cssclass="btn btn-primary" Text="搜索" OnClick="research_Click"></asp:button>
                </div>
            </div>
        </div>
        <div class="container">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1069px">
                <AlternatingRowStyle  ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="图书ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="书名" SortExpression="name" />
                    <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library %>" SelectCommand="SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info"></asp:SqlDataSource>
        </div>
      </div>
    <script type="text/javascript">
        $(".navbar-nav li").eq(1).addClass("active")
        $("table").eq(0).addClass("table table-bordered table-hover text-center ")
        $("table").attr("data-pagination", 'true');
        $("table").attr("data-side-pagination", 'client');
        $("table").attr("data-page-size", '10');
        $("table").bootstrapTable({
            columns: [{
                field: '图书ID',
                title:'图书ID'
            }, {
                    field: '书名',
                    title:'书名'
                }, {
                    field: '作者',
                    title:'作者'
                }]
        });
</script>
</asp:Content>
