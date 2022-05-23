<%@ Page Title="AdminAppts" Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="AdminAppts.aspx.cs" Inherits="WebApplicationTest.AdminAppts" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
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
        font-family: Montserrat SemiBold;
        background-color: rgba(240, 248, 255, .6);
        margin: auto;
        width: 90%;
        padding-bottom:20px;
    }
    .ApptGrid {
        margin-left:2.5%;
        margin-right:2.5%;
        font-family:Montserrat;
        width:95%;
    }
    .head {
        margin-top:2%;
        justify-content:center;
        text-align:center;
    }
    .titlelabel {
        font-size:42px;
        color:#123875;
    }
    </style>
    <div class="bg-container">
        <div class="head"><br /><h2 class="titlelabel">Appointments</h2>
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
    </p>
<p style="font-size: large; text-align: center;">
        Appointment Information</p>
        </div>

<p style="font-size: large">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="ApptGrid" Text-Align="Center" Horizontal-Align="Center" Justify-Content="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                <ControlStyle Font-Names="Montserrat SemiBold" Font-Size="18px" ForeColor="#000099" />
                </asp:CommandField>
                <asp:TemplateField HeaderText="ApptID" InsertVisible="False" SortExpression="ApptID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxApptID" runat="server" Font-Names="Montserrat" Height="30px" ReadOnly="True" style="text-align: left;" Text='<%# Bind("ApptID") %>' Width="180px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("ApptID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxUserID" runat="server" Font-Names="Montserrat" Height="30px" ReadOnly="True" style="text-align: left;" Text='<%# Bind("UserID") %>' Width="180px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxFN" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" Width="180px" Text='<%# Bind("FirstName", "{0}") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="First name is required" Font-Names="Montserrat" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxLN" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" Width="180px" Text='<%# Bind("LastName", "{0}") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Last name is required" Font-Names="Montserrat" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Username" SortExpression="Username">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxUN" runat="server" Height="30px" Width="180px" Font-Names="Montserrat" Text='<%# Bind("Username", "{0}") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Doctor" SortExpression="Doctor">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownListDoctors" runat="server" Font-Names="Montserrat" Height="30px" Width="187px" SelectedValue='<%# Bind("Doctor", "{0}") %>'>
                            <asp:ListItem>Select Doctor</asp:ListItem>
                            <asp:ListItem>Dr. Smith</asp:ListItem>
                            <asp:ListItem>Dr. Johnson</asp:ListItem>
                            <asp:ListItem>Dr. Nguyen</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownListDoctors" ErrorMessage="Please select doctor" Font-Names="Montserrat" ForeColor="Red" InitialValue="Select Doctor"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Doctor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Time" SortExpression="Time">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownListTime" runat="server" Font-Names="Montserrat" Height="30px" Width="187px" SelectedValue='<%# Bind("Time", "{0}") %>'>
                            <asp:ListItem>Select Time</asp:ListItem>
                            <asp:ListItem>9:00 AM</asp:ListItem>
                            <asp:ListItem>10:00 AM</asp:ListItem>
                            <asp:ListItem>11:00 AM</asp:ListItem>
                            <asp:ListItem>12:00 PM</asp:ListItem>
                            <asp:ListItem>2:00 PM</asp:ListItem>
                            <asp:ListItem>3:00 PM</asp:ListItem>
                            <asp:ListItem>4:00 PM</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please select a time" ForeColor="Red" ControlToValidate="DropDownListTime"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Time") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" Text='<%# Bind("Date", "{0}") %>' Width="180px" Font-Names="Montserrat"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Date required" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle Font-Names="Montserrat SemiBold" ForeColor="White" BackColor="Black" Font-Bold="True" />
            <PagerStyle Font-Names="Montserrat SemiBold" Font-Size="18px" ForeColor="Black" BackColor="#999999" HorizontalAlign="Center" />
            <RowStyle Font-Names="Montserrat" Height="40px"/>
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    </div>
</asp:Content>
