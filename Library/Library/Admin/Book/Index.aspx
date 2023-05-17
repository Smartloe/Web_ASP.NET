<%@ Page Title="图书管理" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Admin.Admin_Book" %>
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
            <a class="btn btn-info pull-right" href="Book_Add.aspx" style="margin:15px 10px 10px;">添加图书</a>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1069px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="图书ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="书名" SortExpression="name" />
                    <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
                    
                    <asp:TemplateField HeaderText="状态">  
                      <ItemTemplate>               
                        <%# Eval("status").ToString()=="1"?"已借出":"在馆" %>  
                      </ItemTemplate>  
                        </asp:TemplateField>
                     <asp:TemplateField HeaderText="操作">
                     <ItemTemplate>
                          <asp:Button ID="Button2" runat="server" CssClass="btn1" Text="修改" CommandArgument='<%# Eval("id") %>' OnClick="Button2_Click" />
                          <asp:Button ID="Button1" runat="server" CssClass="btn2"  Text="删除" CommandArgument='<%# Eval("id") %>' OnClick="Button1_Click" />
                      </ItemTemplate>  
                    </asp:TemplateField>
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
         $("table").eq(0).addClass("table table-bordered table-hover text-center")
         $("table").attr("data-pagination", 'true');
        $("table").attr("data-side-pagination", 'client');
        $("table").attr("data-page-size", '10');
        $("table .btn1").addClass("btn btn-primary btn - xs")
        $("table .btn2").addClass("btn btn-danger")
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
                }, {
                    field: '状态',
                    title:'状态'
                }, {
                    field: '操作',
                    title:'操作'
                }]
        });
</script>

</asp:Content>
