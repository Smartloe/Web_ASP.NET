<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="User_Add.aspx.cs" Inherits="Library.Admin.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="h3 text-center" style="margin-top: 100px;">
        <b>添加用户</b>
    </div>
    <div id="form" class="form-horizontal text-center" style="width:250px;margin: 20px auto 0;">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">用户ID</div>
                    <asp:TextBox ID="userId" runat="server" type="text" class="form-control" placeholder="请输入用户ID" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">密码</div>
                <%--<input type="password" class="form-control" placeholder="请输入密码" name="password">--%>
                    <asp:TextBox ID="password" runat="server" type="password" class="form-control" placeholder="请输入密码" ></asp:TextBox>

            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">姓名</div>
                <%--<input type="text" class="form-control" placeholder="请输入姓名" name="name">--%>
                    <asp:TextBox ID="name" runat="server" type="text" class="form-control" placeholder="请输入姓名" ></asp:TextBox>

            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">班级</div>
                <%--<input type="text" class="form-control" placeholder="请输入班级" name="class">--%>
                    <asp:TextBox ID="class1" runat="server" type="text" class="form-control" placeholder="请输入班级" ></asp:TextBox>

            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">状态</div>
                
        <asp:DropDownList ID="status" runat="server" class="form-control">
            <asp:ListItem Value="1">正常</asp:ListItem>
            <asp:ListItem Value="0">挂失</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">状态</div>
                
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
            <asp:ListItem Value="0">学生</asp:ListItem>
            <asp:ListItem Value="2">教师</asp:ListItem>
            <asp:ListItem Value="1">管理员</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            
            <asp:Button ID="submit" runat="server" Text="添加" class="btn btn-primary" style="margin-right: 10px" OnClick="submit_Click" />
            
            <asp:Button ID="reset" runat="server" Text="重置" class="btn btn-danger" style="margin-left: 10px" OnClick="reset_Click" />
        </div>
    </div>
</asp:Content>
