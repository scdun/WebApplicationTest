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
            background-color: rgba(240, 248, 255, .6);
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
.myButton {
	background-color:#7999d1;
	border-radius:15px;
	border:2px solid #000000;
	display:inline-block;
	cursor:pointer;
	color:#030003;
	font-family:Montserrat SemiBold;
	font-size:19px;
	padding:32px 76px;
	text-decoration:none;
	text-shadow:0px 0px 0px #000000;
}
.myButton:hover {
	background-color:#2f3c63;
    color:black;
}
.myButton:active {
	position:relative;
	top:1px;
}
</style>
    <div class="bg-container">
        <br />
        <br />
            <h1>Welcome Admin!<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </h1>
        <div class="flex-container">
            <div class="left">
                <a href="AdminUA.aspx" class="myButton">User Information</a>
            </div>
            <div class="right">
                <a href="AdminAppts.aspx" class="myButton">User Appointments</a>
            </div>
        </div>
    </div>
</asp:Content>