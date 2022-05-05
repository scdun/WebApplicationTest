<%@ Page Title="AdminUsers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="AdminUsers.aspx.cs" Inherits="WebApplicationTest.AdminUsers" %>

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
        background-color: rgba(240, 248, 255, .8);
        margin: auto;
        width: 95%;
        padding-bottom:20px;
    }
    .usergrid {
        font-family:Montserrat;
        width:auto;
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
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
<div class="bg-container">
   <div class="head">
       <span class="titlelabel">
           <br />
           All User Accounts</span>
       <br />
       <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
   </div>
   <div>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [UserData]" DeleteCommand="DELETE FROM [UserData] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [UserData] ([Username], [Password], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email], [Role], [City]) VALUES (@Username, @Password, @FirstName, @LastName, @DOB, @Sex, @PhoneNum, @StreetAdd, @StateAdd, @Email, @Role, @City)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Sex] = @Sex, [PhoneNum] = @PhoneNum, [StreetAdd] = @StreetAdd, [StateAdd] = @StateAdd, [Email] = @Email, [Role] = @Role, [City] = @City WHERE [UserID] = @UserID">
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
                <asp:Parameter Name="City" Type="String" />
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
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="UserID" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" CssClass="usergrid" DataKeyNames="UserID" DataSourceID="SqlDataSourceRegistration" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                            <asp:TemplateField HeaderText="Username" SortExpression="Username">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox110" runat="server" Font-Names="Montserrat" ReadOnly="True" Text='<%# Bind("Username") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Font-Names="Montserrat" Text='<%# Bind("Password") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Font-Names="Montserrat" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Font-Names="Montserrat" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Font-Names="Montserrat" Text='<%# Bind("DOB", "{0:d}") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DOB", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sex" SortExpression="Sex">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Montserrat" SelectedValue='<%# Bind("Sex") %>' Width="70px">
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>F</asp:ListItem>
                                        <asp:ListItem>Other/Prefer not to answer</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone" SortExpression="PhoneNum">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Font-Names="Montserrat" Text='<%# Bind("PhoneNum") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("PhoneNum") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Street" SortExpression="StreetAdd">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Font-Names="Montserrat" Text='<%# Bind("StreetAdd") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" SortExpression="City">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Font-Names="Montserrat" Text='<%# Bind("City") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State" SortExpression="StateAdd">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownListState" runat="server" Font-Names="Montserrat" SelectedValue='<%# Bind("StateAdd") %>' style="text-align: left;">
                                        <asp:ListItem>AL</asp:ListItem>
                                        <asp:ListItem>AK</asp:ListItem>
                                        <asp:ListItem>AZ</asp:ListItem>
                                        <asp:ListItem>AR</asp:ListItem>
                                        <asp:ListItem>CA</asp:ListItem>
                                        <asp:ListItem>CO</asp:ListItem>
                                        <asp:ListItem>CT</asp:ListItem>
                                        <asp:ListItem>DE</asp:ListItem>
                                        <asp:ListItem>FL</asp:ListItem>
                                        <asp:ListItem>GA</asp:ListItem>
                                        <asp:ListItem>HI</asp:ListItem>
                                        <asp:ListItem>ID</asp:ListItem>
                                        <asp:ListItem>IL</asp:ListItem>
                                        <asp:ListItem>IN</asp:ListItem>
                                        <asp:ListItem>IA</asp:ListItem>
                                        <asp:ListItem>KS</asp:ListItem>
                                        <asp:ListItem>KY</asp:ListItem>
                                        <asp:ListItem>LA</asp:ListItem>
                                        <asp:ListItem>ME</asp:ListItem>
                                        <asp:ListItem>MD</asp:ListItem>
                                        <asp:ListItem>MA</asp:ListItem>
                                        <asp:ListItem>MI</asp:ListItem>
                                        <asp:ListItem>MN</asp:ListItem>
                                        <asp:ListItem>MS</asp:ListItem>
                                        <asp:ListItem>MO</asp:ListItem>
                                        <asp:ListItem>MT</asp:ListItem>
                                        <asp:ListItem>NE</asp:ListItem>
                                        <asp:ListItem>NV</asp:ListItem>
                                        <asp:ListItem>NH</asp:ListItem>
                                        <asp:ListItem>NJ</asp:ListItem>
                                        <asp:ListItem>NM</asp:ListItem>
                                        <asp:ListItem>NY</asp:ListItem>
                                        <asp:ListItem>NC</asp:ListItem>
                                        <asp:ListItem>ND</asp:ListItem>
                                        <asp:ListItem>OH</asp:ListItem>
                                        <asp:ListItem>OK</asp:ListItem>
                                        <asp:ListItem>OR</asp:ListItem>
                                        <asp:ListItem>PA</asp:ListItem>
                                        <asp:ListItem>RI</asp:ListItem>
                                        <asp:ListItem>SC</asp:ListItem>
                                        <asp:ListItem>SD</asp:ListItem>
                                        <asp:ListItem>TN</asp:ListItem>
                                        <asp:ListItem>TX</asp:ListItem>
                                        <asp:ListItem>UT</asp:ListItem>
                                        <asp:ListItem>VT</asp:ListItem>
                                        <asp:ListItem>VA</asp:ListItem>
                                        <asp:ListItem>WA</asp:ListItem>
                                        <asp:ListItem>WV</asp:ListItem>
                                        <asp:ListItem>WI</asp:ListItem>
                                        <asp:ListItem>WY</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownListState" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("StateAdd") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Font-Names="Montserrat" Text='<%# Bind("Email") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="250px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Role" SortExpression="Role">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Font-Names="Montserrat" Text='<%# Bind("Role") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" Font-Names="Montserrat" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" Font-Names="Montserrat" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                <br />
            </div>
            <div>

            </div>
        </div>
</asp:Content>