<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Book_edit.aspx.cs" Inherits="Library.Admin.Book.Book_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="h3 text-center">
        <b>编辑图书</b>
    </div>
    <div id="form" class="form-horizontal text-center" style="width:500px;margin: 20px auto 0;">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">图书名</div>
        <asp:TextBox ID="name" runat="server"  class="form-control" placeholder="请输入图书名" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">作者</div>
        <asp:TextBox ID="author" runat="server"  class="form-control" placeholder="请输入作者" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">出版社</div>
        <asp:TextBox ID="press" runat="server"  class="form-control" placeholder="请输入出版社" ></asp:TextBox>

            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">出版时间</div>
        <asp:TextBox ID="pressTime" runat="server"  class="form-control" placeholder="请输入出版时间" ></asp:TextBox>

            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">价格</div>
        <asp:TextBox ID="price" runat="server"  class="form-control" placeholder="请输入价格" ></asp:TextBox>
                <div class="input-group-addon">元</div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">ISBN</div>
        <asp:TextBox ID="ISBN" runat="server"  class="form-control" placeholder="请输入ISBN" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="text-left" style="width: 100%">作品简介：</label>
            <asp:TextBox ID="desc" runat="server"  class="form-control"  placeholder="请输入作品简介" style="resize: none;" TextMode="MultiLine" Height="116px" Width="501px" ></asp:TextBox>
        </div>
        <div class="form-group">
            
            <asp:Button ID="submit" runat="server" Text="确&nbsp;认"  class="btn btn-primary" style="margin-right: 20px" OnClick="submit_Click"/>
            <asp:Button ID="reset" runat="server" Text="重&nbsp;置" class="btn btn-danger" style="margin-left: 20px" OnClick="reset_Click" />

        </div>
    </div>
</asp:Content>
