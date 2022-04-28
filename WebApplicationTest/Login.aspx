<%@ Page Title="Login Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Login.Master" CodeBehind="Login.aspx.cs" Inherits="WebApplicationTest.WebForm1" %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="LoginContent" runat="server">
    <style>
        html, body {
            margin: 0;
            min-height: 100%;
            min-width: 100%;
            position: absolute;
            background-image: url('https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
        }
        .bg-container {
            background-color: aliceblue;
            background-color: rgba(240, 248, 255, .6);
            margin: auto;
            width: 50%;
        }
        .center {
            margin: auto;
            text-align: center;
            font-family: Montserrat SemiBold;
            width: 50%;
        }
    </style>
    <div class="bg-container">    
        <div class="center">
            <h1 style="text-align: center; font-family: Montserrat ExtraBold;">&nbsp;</h1>
            <h1 style="text-align: center; font-family: Montserrat ExtraBold;">Welcome!</h1>
            <h2 style="text-align: center;">Please login</h2>
            <p style="text-align: center;">&nbsp;</p>
        </div>
        <div class="center" style="text-align: center; font-size: medium;">
            <asp:HyperLink ID="HyperLinkNewUser" runat="server" style="text-align: center" NavigateUrl="~/Register.aspx">New user?</asp:HyperLink>
            <br />
            <br />
        </div>
        <div class="center">

            Username:<asp:TextBox ID="TextBoxLoginUN" runat="server" Height="25px" style="margin-left: 8px; text-align: left;" Width="180px" Font-Names="montserrat regular"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUN" runat="server" ControlToValidate="TextBoxLoginUN" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Password:<asp:TextBox ID="TextBoxLoginPass" runat="server" Height="25px" style="margin-left: 8px; text-align: left;" TextMode="Password" Width="180px" Font-Names="montserrat regular"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPW" runat="server" ControlToValidate="TextBoxLoginPass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="center">
            <asp:Label ID="LabelPassFail0" runat="server" Font-Names="Montserrat SemiBold" ForeColor="Red" Text="Password is incorrect" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="LabelUserFail" runat="server" Font-Names="Montserrat SemiBold" ForeColor="Red" Text="Username does not exist" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ButtonLogin" runat="server" Font-Names="Montserrat SemiBold" Font-Size="Large" Height="35px" style="text-align: center; font-family: 'Montserrat SemiBold';" Text="Login" Width="70px" OnClick="ButtonLogin_Click" />
            <br />
            <br />
        </div>
    </div>
    </asp:Content>
