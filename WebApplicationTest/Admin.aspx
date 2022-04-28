<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="Admin.aspx.cs" Inherits="WebApplicationTest.Admin" %>

<asp:Content ID="ContentA" ContentPlaceHolderID="MainContent" runat="server">

<style>
    html, body {
            margin: 0;
            min-height: 100%;
            min-width: 100%;
            position: absolute;
            background-image: url('https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
    }
    .bg-container {
            background-color: aliceblue;
            opacity: .9;
            margin: auto;
            width: 60%;
            padding-bottom:20px;
    }
    .flex-container {
        display: flex;
        width: 100%;
        height:100%;
        align-items:center;
        justify-content:center;
        flex-direction: row column;
    }
    .left {
        text-align:center;
        flex:1;
        margin-top:8%;
        margin-bottom: 10%;
    }
    .right {
        text-align:center;
        flex: 1;
        margin-top:8%;
        margin-bottom:10%;
    }
    .hyperlink {
        color:black;
        cursor:pointer;
    }
    .hyperlink:hover {
        color:gray;
        cursor:pointer;
    }
</style>
    <div class="bg-container">
            <h1>Welcome Admin!</h1>
        <div class="flex-container">
            <div class="left">
                <asp:HyperLink class="hyperlink" ID="HyperLink2" runat="server" NavigateUrl="~/AdminUA.aspx">User Information</asp:HyperLink>
            </div>
            <div class="right">
                <asp:HyperLink class="hyperlink" ID="HyperLink1" runat="server" NavigateUrl="~/AdminAppts.aspx">User Appointments</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>