<%@ Page Title="AdminUA" Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="AdminUA.aspx.cs" Inherits="WebApplicationTest.AdminUA" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
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
        width: 85%;
        padding-bottom:20px;
    }
    .UserDetails {
        margin-left:20%;
        margin-right:20%;
        font-family:Montserrat;
        width:60%
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
            font-size: xx-small;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
    <div class="bg-container">
    <div class="head">
    <h2 class="titlelabel">
    User Accounts
        <asp:Label ID="LabelAdmin" runat="server" Text="Label" Visible="False"></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" DeleteCommand="DELETE FROM [UserData] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [UserData] ([Username], [Password], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email], [Role], [City]) VALUES (@Username, @Password, @FirstName, @LastName, @DOB, @Sex, @PhoneNum, @StreetAdd, @StateAdd, @Email, @Role, @City)" SelectCommand="SELECT * FROM [UserData] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Sex] = @Sex, [PhoneNum] = @PhoneNum, [StreetAdd] = @StreetAdd, [StateAdd] = @StateAdd, [Email] = @Email, [Role] = @Role, [City] = @City WHERE [UserID] = @UserID">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LabelUsername" Name="Username" PropertyName="Text" Type="String" />
                    </SelectParameters>
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
    </h2>
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceRegistration" DataTextField="Username" DataValueField="Username" Height="40px" Width="250px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Font-Size="Large" Font-Names="Montserrat SemiBold">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="35px" OnClick="Button1_Click" Text="Submit" Width="100px" Font-Names="Montserrat SemiBold" />
            <br />
            <br />
            <span class="auto-style2">OR</span><br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2" NavigateUrl="~/AdminUsers.aspx">View all users</asp:HyperLink>
            <br />
            <asp:Label ID="LabelUsername" runat="server" CssClass="auto-style1" Visible="False"></asp:Label>
            <br />
        </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Height="50px" Justify-Content="Center" HorizontalAlign="Center" CssClass="UserDetails" CellPadding="4" ForeColor="#333333" GridLines="None" Width="60%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="30%" />
                    <Fields>
                        <asp:TemplateField HeaderText="UserID" InsertVisible="False" SortExpression="UserID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxUser" runat="server" Font-Names="Montserrat" Height="30px" ReadOnly="True" Text='<%# Bind("UserID") %>' Width="250px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Username" SortExpression="Username">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxName" runat="server" Font-Names="Montserrat" Height="30px" ReadOnly="True" Text='<%# Bind("Username") %>' Width="250px"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" SortExpression="Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxPass" runat="server" Font-Names="Montserrat" Height="30px" ReadOnly="True" Text='<%# Bind("Password") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxFN" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("FirstName") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFN" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxLN" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("LastName") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLN" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxDOB" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("DOB", "{0:d}") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("DOB", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sex" SortExpression="Sex">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList33" runat="server" Font-Names="montserrat" Height="30px" Justify-Content="Center" SelectedValue='<%# Bind("Sex") %>' style="text-align: left;" Text-Align="Center" Width="250px">
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>Other/Prefer not to answer</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="DropDownList33" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Sex") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNum">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxPN" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("PhoneNum") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPN" runat="server" ControlToValidate="TextBoxPN" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("PhoneNum") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("PhoneNum") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Street" SortExpression="StreetAdd">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxSt" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("StreetAdd") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSt" runat="server" ControlToValidate="TextBoxSt" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="City">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxCity" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("City") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" SortExpression="StateAdd">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList77" runat="server" Font-Names="Montserrat" Height="30px" Justify-Content="Center" SelectedValue='<%# Bind("StateAdd") %>' style="text-align: left;" Text-Align="Center" Width="250px">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" ControlToValidate="DropDownList77" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("StateAdd") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("StateAdd") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxemail" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("Email") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Role" SortExpression="Role">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBoxRole" runat="server" Font-Names="Montserrat" Height="30px" Text='<%# Bind("Role") %>' Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole" runat="server" ControlToValidate="TextBoxRole" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="50px" HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:DetailsView>
            </asp:Panel>
        </div>
    <br />
    </div>
</asp:Content>