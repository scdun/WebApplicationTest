<%@ Page Title="Admin" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="WebApplicationTest.Admin" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <h2>User Accounts</h2>
    <h2>
        <asp:Label ID="LabelAdmin" runat="server" Text="Label"></asp:Label>
    </h2>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRegistration">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" SortExpression="PhoneNum" />
            <asp:BoundField DataField="StreetAdd" HeaderText="StreetAdd" SortExpression="StreetAdd" />
            <asp:BoundField DataField="StateAdd" HeaderText="StateAdd" SortExpression="StateAdd" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
        </Columns>
    </asp:GridView>
</asp:Content>