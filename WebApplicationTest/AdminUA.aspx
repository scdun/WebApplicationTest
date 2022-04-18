<%@ Page Title="AdminUA" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AdminUA.aspx.cs" Inherits="WebApplicationTest.AdminUA" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <h2>User Accounts</h2>
    <h2>
        <asp:Label ID="LabelAdmin" runat="server" Text="Label" Visible="False"></asp:Label>
    </h2>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [UserData]" DeleteCommand="DELETE FROM [UserData] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [UserData] ([Username], [Password], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email], [Role]) VALUES (@Username, @Password, @FirstName, @LastName, @DOB, @Sex, @PhoneNum, @StreetAdd, @StateAdd, @Email, @Role)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Sex] = @Sex, [PhoneNum] = @PhoneNum, [StreetAdd] = @StreetAdd, [StateAdd] = @StateAdd, [Email] = @Email, [Role] = @Role WHERE [UserID] = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="PhoneNum" Type="String" />
                <asp:Parameter Name="StreetAdd" Type="String" />
                <asp:Parameter Name="StateAdd" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="PhoneNum" Type="String" />
                <asp:Parameter Name="StreetAdd" Type="String" />
                <asp:Parameter Name="StateAdd" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="UserID" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
        <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminAppts.aspx">Appointment Data</asp:HyperLink>
    <br />
        <br />
    <span style="font-size: x-large">User Information</span><br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSourceRegistration" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DOB", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="PhoneNum" HeaderText="Phone Number" SortExpression="PhoneNum" />
            <asp:BoundField DataField="StreetAdd" HeaderText="Street Address" SortExpression="StreetAdd" />
            <asp:BoundField DataField="StateAdd" HeaderText="State" SortExpression="StateAdd" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
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
    <br />
    </asp:Content>