<%@ Page Title="Login Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="WebApplicationTest.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div>
            <h1 style="text-align: center; font-family: 'Century Schoolbook';">Welcome!</h1>
            <h2 style="text-align: center; font-family: 'Century Schoolbook';">Please login</h2>
        </div>
        <div style="margin-left: 4px; text-align: center; font-size: medium;">
            <span style="font-family: 'Century Schoolbook'">
            <asp:HyperLink ID="HyperLinkNewUser" runat="server" style="text-align: center" NavigateUrl="~/Register.aspx">New user?</asp:HyperLink>
            <br />
        </div>
        <div class="auto-style1" style="margin-left: 239px">

            Username:</span><asp:TextBox ID="TextBoxLoginUN" runat="server" Height="25px" style="margin-left: 8px; font-family: 'Century Schoolbook'; text-align: left;" Width="180px"></asp:TextBox>
            <span style="font-family: 'Century Schoolbook'">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUN" runat="server" ControlToValidate="TextBoxLoginUN" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;Password:</span><asp:TextBox ID="TextBoxLoginPass" runat="server" Height="25px" style="margin-left: 8px; font-family: 'Century Schoolbook'; text-align: left;" TextMode="Password" Width="180px"></asp:TextBox>
            <span style="font-family: 'Century Schoolbook'">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPW" runat="server" ControlToValidate="TextBoxLoginPass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div style="margin-left: 5px">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <asp:Button ID="ButtonLogin" runat="server" Font-Names="Arial" Font-Size="Large" Height="35px" style="text-align: center; font-family: 'Century Schoolbook';" Text="Login" Width="70px" OnClick="ButtonLogin_Click" />

        </div>
    </asp:Content>
