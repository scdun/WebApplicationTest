<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplicationTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center">        
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h1 style="font-family: 'Century Schoolbook'" class="text-left">Welcome!</h1>
                <p class="lead" style="font-family: 'Century Schoolbook'; text-align: left;">
                    Please register below</p>
                <div class="text-left" style="text-align: left">
                    <span style="font-family: 'Century Schoolbook'">Username:</span><asp:TextBox ID="TextBoxUN" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required" Font-Names="Century Schoolbook" ForeColor="Red" style="text-align: left; font-family: 'Century Schoolbook'"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <span style="font-family: 'Century Schoolbook'">First Name: </span>
                    <asp:TextBox ID="TextBoxFN" runat="server" style="font-family: 'Century Schoolbook'; text-align: left;" Height="23px" Width="180px"></asp:TextBox>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="First name is required" ForeColor="Red" ControlToValidate="TextBoxFN"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Last Name: </span>
                    <asp:TextBox ID="TextBoxLN" runat="server" style="font-family: 'Century Schoolbook'; text-align: left;" Height="23px" Width="180px"></asp:TextBox>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Last name is required" ForeColor="Red" ControlToValidate="TextBoxLN"></asp:RequiredFieldValidator>
                    <br />
                    </span>
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">Email:</span><asp:TextBox ID="TextBoxEmail" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" TextMode="Email" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" Font-Names="Century Schoolbook" ForeColor="Red" style="text-align: left; font-family: 'Century Schoolbook'"></asp:RequiredFieldValidator>
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter a valid Email address" Font-Names="Century Schoolbook" ForeColor="Red" style="font-family: 'Century Schoolbook'" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">Sex:</span><asp:DropDownList ID="DropDownListSex" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" Width="187px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>Other/Prefer not to answer</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSex" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select" style="text-align: right">Required</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Address:</span><asp:TextBox ID="TextBoxAddress" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" Width="180px"></asp:TextBox>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    State: </span>
                    <asp:DropDownList ID="DropDownListState" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" Width="187px">
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
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownListState" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select State">Please select a state</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Phone Number:</span><asp:TextBox ID="TextBoxPhone" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" TextMode="Phone" Width="180px"></asp:TextBox>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    Date of Birth:</span><asp:TextBox ID="TextBoxDOB" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" TextMode="Date" Width="180px"></asp:TextBox>
                    <span style="font-family: 'Century Schoolbook'">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">Password:</span><asp:TextBox ID="TextBoxPass" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" Font-Names="Century Schoolbook" ForeColor="Red" style="text-align: left; font-family: 'Century Schoolbook'"></asp:RequiredFieldValidator>
                    <br style="font-family: 'Century Schoolbook'" />
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">Confirm Password:</span><asp:TextBox ID="TextBoxRPass" runat="server" Height="23px" style="font-family: 'Century Schoolbook'; text-align: left;" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm password is required" Font-Names="Century Schoolbook" ForeColor="Red" style="text-align: left; font-family: 'Century Schoolbook';"></asp:RequiredFieldValidator>
                    <br style="font-family: 'Century Schoolbook'" />
                    <span style="font-family: 'Century Schoolbook'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Passwords do not match" Font-Names="Century Schoolbook" ForeColor="Red" style="text-align: left; font-family: 'Century Schoolbook';"></asp:CompareValidator>
                    <br />
                    <asp:Label ID="LabelFail" runat="server" style="font-family: 'Century Schoolbook'" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" style="font-family: 'Century Schoolbook'" Text="Submit" />
                    <br />
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <h3 style="text-align: center; font-family: 'Century Schoolbook';">Registration Successful!</h3>
                <p style="text-align: center">
                    <asp:Button ID="ButtonSuccess" runat="server" OnClick="ButtonSuccess_Click" style="font-family: 'Century Schoolbook'" Text="Login" />
                </p>
            </asp:View>
        </asp:MultiView>

    </div>

 <!--   <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>-->

</asp:Content>
