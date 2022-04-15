<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplicationTest.User" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

        <div>
            <h1>Welcome back, <asp:Label ID="LabelUser" runat="server"></asp:Label>
                !</h1>
            <h2>Your Account Information</h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT [UserID], [Username], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email] FROM [UserData] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="LabelUser" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFF8DC;">UserID:
                    <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PhoneNum:
                    <asp:Label ID="PhoneNumLabel" runat="server" Text='<%# Eval("PhoneNum") %>' />
                    <br />
                    StreetAdd:
                    <asp:Label ID="StreetAddLabel" runat="server" Text='<%# Eval("StreetAdd") %>' />
                    <br />
                    StateAdd:
                    <asp:Label ID="StateAddLabel" runat="server" Text='<%# Eval("StateAdd") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #008A8C;color: #FFFFFF;">UserID:
                    <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    <br />
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    PhoneNum:
                    <asp:TextBox ID="PhoneNumTextBox" runat="server" Text='<%# Bind("PhoneNum") %>' />
                    <br />
                    StreetAdd:
                    <asp:TextBox ID="StreetAddTextBox" runat="server" Text='<%# Bind("StreetAdd") %>' />
                    <br />
                    StateAdd:
                    <asp:TextBox ID="StateAddTextBox" runat="server" Text='<%# Bind("StateAdd") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    <br />FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />PhoneNum:
                    <asp:TextBox ID="PhoneNumTextBox" runat="server" Text='<%# Bind("PhoneNum") %>' />
                    <br />StreetAdd:
                    <asp:TextBox ID="StreetAddTextBox" runat="server" Text='<%# Bind("StreetAdd") %>' />
                    <br />StateAdd:
                    <asp:TextBox ID="StateAddTextBox" runat="server" Text='<%# Bind("StateAdd") %>' />
                    <br />Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #DCDCDC;color: #000000;">UserID:
                    <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PhoneNum:
                    <asp:Label ID="PhoneNumLabel" runat="server" Text='<%# Eval("PhoneNum") %>' />
                    <br />
                    StreetAdd:
                    <asp:Label ID="StreetAddLabel" runat="server" Text='<%# Eval("StreetAdd") %>' />
                    <br />
                    StateAdd:
                    <asp:Label ID="StateAddLabel" runat="server" Text='<%# Eval("StateAdd") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">UserID:
                    <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                    PhoneNum:
                    <asp:Label ID="PhoneNumLabel" runat="server" Text='<%# Eval("PhoneNum") %>' />
                    <br />
                    StreetAdd:
                    <asp:Label ID="StreetAddLabel" runat="server" Text='<%# Eval("StreetAdd") %>' />
                    <br />
                    StateAdd:
                    <asp:Label ID="StateAddLabel" runat="server" Text='<%# Eval("StateAdd") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:Button ID="ButtonLogout" runat="server" Font-Size="Large" Height="36px" OnClick="ButtonLogout_Click" style="margin-left: 414px" Text="Logout" Width="74px" />
        </div>
</asp:Content>