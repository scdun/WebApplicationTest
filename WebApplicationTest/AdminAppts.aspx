<%@ Page Title="AdminAppts" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AdminAppts.aspx.cs" Inherits="WebApplicationTest.AdminAppts" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <h2>Appointments</h2>
    <h2>
        <asp:Label ID="LabelAdmin1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" DeleteCommand="DELETE FROM [DocAppts] WHERE [ApptID] = @ApptID" InsertCommand="INSERT INTO [DocAppts] ([Doctor], [Time], [IsBooked], [UserID], [Date]) VALUES (@Doctor, @Time, @IsBooked, @UserID, @Date)" SelectCommand="SELECT DocAppts.ApptID, DocAppts.Doctor, DocAppts.Time, DocAppts.IsBooked, DocAppts.UserID, DocAppts.Date, UserData.Username, UserData.FirstName, UserData.LastName
FROM DocAppts
LEFT JOIN UserData ON DocAppts.UserID=UserData.UserID" UpdateCommand="UPDATE [DocAppts] SET [Doctor] = @Doctor, [Time] = @Time, [IsBooked] = @IsBooked, [UserID] = @UserID, [Date] = @Date WHERE [ApptID] = @ApptID">
            <DeleteParameters>
                <asp:Parameter Name="ApptID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Doctor" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="IsBooked" Type="String" />
                <asp:Parameter Name="UserID" Type="Int32" />
                <asp:Parameter Name="Date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Doctor" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="IsBooked" Type="String" />
                <asp:Parameter Name="UserID" Type="Int32" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="ApptID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h2>
<p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminUA.aspx">User Accounts</asp:HyperLink>
    </p>
<p style="font-size: large; text-align: left;">
        Appointment Information</p>
<p style="font-size: large">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Width="825px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ApptID" HeaderText="ApptID" InsertVisible="False" ReadOnly="True" SortExpression="ApptID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
    </p>

</asp:Content>
