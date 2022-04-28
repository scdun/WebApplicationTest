<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplicationTest.User" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<style>
    html, body {
        margin: 0;
        min-height: 100%;
        min-width: 100%;
        position: absolute;
        background-image: url('https://images.unsplash.com/photo-1588591221967-be643f148e42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80');
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
    }
    .bg-container {
        font-family: Montserrat SemiBold;
        background-color: rgba(240, 248, 255, .8);
        margin: auto;
        width: 90%;
        padding-bottom:20px;
    }
    .usergrid {
        margin-left:2.5%;
        margin-right:2.5%;
        font-family:Montserrat;
        width:95%
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
        <div class="head">
            <br />
            <h1 class="titlelabel">Welcome back, <asp:Label ID="LabelUser" runat="server"></asp:Label>!</h1>
            <h2>Your Account Information</h2>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT [UserID], [Username], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email] FROM [UserData] WHERE ([Username] = @Username)" DeleteCommand="DELETE FROM [UserData] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [UserData] ([Username], [FirstName], [LastName], [DOB], [Sex], [PhoneNum], [StreetAdd], [StateAdd], [Email]) VALUES (@Username, @FirstName, @LastName, @DOB, @Sex, @PhoneNum, @StreetAdd, @StateAdd, @Email)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Sex] = @Sex, [PhoneNum] = @PhoneNum, [StreetAdd] = @StreetAdd, [StateAdd] = @StateAdd, [Email] = @Email WHERE [UserID] = @UserID">
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
            <br />
            <br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Text-Align="Center" Horizontal-Align="Center" Justify-Content="Center" ForeColor="#333333" GridLines="None" Height="50px" CssClass="usergrid" Font-Names="Montserrat" Font-Size="18px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" Font-Names="Montserrat" Font-Size="18px" Font-Strikeout="False" />
                <EditRowStyle BackColor="White" Font-Names="Montserrat" Font-Size="18px" />
                <EmptyDataRowStyle Font-Names="Montserrat" Font-Size="18px" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                    <asp:TemplateField HeaderText="Username" SortExpression="Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Montserrat" ReadOnly="True" Text='<%# Bind("Username") %>' Width="250px"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Montserrat" Text='<%# Bind("FirstName") %>' Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Montserrat" Text='<%# Bind("LastName") %>' Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxDOB" runat="server" Font-Names="montserrat" Height="30px" style="text-align: left;" TextMode="Date" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sex" SortExpression="Sex">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownListSex" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" Width="250px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>F</asp:ListItem>
                                <asp:ListItem>Other/Prefer not to answer</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSex" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select" style="text-align: right">Required</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Sex") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNum">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Font-Names="Montserrat" Text='<%# Bind("PhoneNum") %>' Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("PhoneNum") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("PhoneNum") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Street Address" SortExpression="StreetAdd">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Font-Names="Montserrat" Text='<%# Bind("StreetAdd") %>' Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State" SortExpression="StateAdd">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownListState" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" Width="250px">
                                <asp:ListItem>Select State</asp:ListItem>
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
                                <asp:ListItem>VI</asp:ListItem>
                                <asp:ListItem>WA</asp:ListItem>
                                <asp:ListItem>WV</asp:ListItem>
                                <asp:ListItem>WI</asp:ListItem>
                                <asp:ListItem>WY</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownListState" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("StateAdd") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("StateAdd") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Font-Names="Montserrat" Text='<%# Bind("Email") %>' Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertRowStyle Font-Names="Montserrat" Font-Size="18px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Font-Names="Montserrat" Font-Size="18px" />
                <RowStyle BackColor="#EFF3FB" Height="40px" Font-Names="Montserrat" />
            </asp:DetailsView>
            <br />
        </div>
    </div>
</asp:Content>