<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplicationTest.User" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

        <div style="font-size: large">
            <h1>Welcome back, <asp:Label ID="LabelUser" runat="server"></asp:Label>
                !</h1>
            <h2>Your Account Information</h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT UserData.UserID, UserData.Username, UserData.FirstName, UserData.LastName, UserData.DOB, UserData.Sex, UserData.PhoneNum, UserData.StreetAdd, UserData.StateAdd, UserData.Email, DocAppts.Doctor, DocAppts.Time, DocAppts.UserID, DocAppts.Date
FROM UserData
INNER JOIN DocAppts ON UserData.UserID=DocAppts.UserID
WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM [UserData] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [UserData] ([Username], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email]) VALUES (@Username, @FirstName, @LastName, @DOB, @Sex, @PhoneNum, @StreetAdd, @StateAdd, @Email)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Sex] = @Sex, [PhoneNum] = @PhoneNum, [StreetAdd] = @StreetAdd, [StateAdd] = @StateAdd, [Email] = @Email WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="PhoneNum" Type="String" />
                    <asp:Parameter Name="StreetAdd" Type="String" />
                    <asp:Parameter Name="StateAdd" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="LabelUser" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="PhoneNum" Type="String" />
                    <asp:Parameter Name="StreetAdd" Type="String" />
                    <asp:Parameter Name="StateAdd" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLinkAdmin" runat="server" NavigateUrl="~/AdminUA.aspx" Visible="False">Check User Data</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLinkApptData" runat="server" NavigateUrl="~/AdminAppts.aspx" Visible="False">Check Appointment Data</asp:HyperLink>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patient Information<br />
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="636px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" ReadOnly="True" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" ReadOnly="True" SortExpression="LastName" />
                    <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Text='<%# Bind("DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DOB", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:BoundField DataField="PhoneNum" HeaderText="Phone Number" SortExpression="PhoneNum" />
                    <asp:BoundField DataField="StreetAdd" HeaderText="Street Address" SortExpression="StreetAdd" />
                    <asp:BoundField DataField="StateAdd" HeaderText="State" SortExpression="StateAdd" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br />
&nbsp;&nbsp;&nbsp; Appointments<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="403px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:TemplateField HeaderText="Date" SortExpression="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
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
            <p>
            <br />
            <asp:Button ID="ButtonLogout" runat="server" Font-Size="Large" Height="36px" OnClick="ButtonLogout_Click" style="margin-left: 2px" Text="Logout" Width="74px" />
            </p>
        </div>
</asp:Content>