<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplicationTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="LoginContent" runat="server">
        <style>
        html, body {
            margin: 0;
            min-height: 100%;
            min-width: 100%;
            position: absolute;
            background-image: url('https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
        }
        .bg-container {
            background-color: aliceblue;
            background-color: rgba(240, 248, 255, .6);
            margin-left: 5px;
            width: 68%;
        }
        .center {
            margin-left: 13%;
            text-align: left;
            font-family: Montserrat SemiBold;
            width: 87%;
        }
        .centertrue {
            margin: auto;
            text-align: center;
            font-family: Montserrat SemiBold;
            width: 60%;        
        }
        .lead, .header {
            text-align: left;
            margin-left: 13%;
            margin-right: 13%;
        }
        .lead {
            margin-bottom: 15px;
        }
        .submitsection {
            margin-left: 20%;
        }
            .auto-style5 {
                height: 56px;
            }
            .auto-style7 {
                height: 40px;
            }
            .auto-style10 {
                width: 178px;
            }
            .auto-style11 {
                width: 178px;
                height: 40px;
            }
            .auto-style12 {
                width: 178px;
                height: 84px;
            }
            .auto-style13 {
                height: 84px;
            }
            .auto-style14 {
                font-size: xx-large;
            }
            .auto-style15 {
                text-align: left;
                margin-left: 13%;
                margin-right: 13%;
                font-size: 50px;
            }
            .auto-style16 {
                font-size: large;
                font-weight: 300;
                line-height: 1.4;
                text-align: left;
                margin-left: 13%;
                margin-right: 13%;
                margin-bottom: 15px;
            }
    </style>

    <div class="bg-container">        
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h1 style="font-family: 'Montserrat Black'" class="text-left">&nbsp;</h1>
                <h1 class="auto-style15" style="font-family: 'Montserrat Black'"><em>Welcome!</em></h1>
                <p class="auto-style16" style="font-family: 'Montserrat SemiBold'">
                    Please register below</p>
                <div class="center">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style10">
                                <br />
                                Username:<br /> <br /> </td>
                            <td>
                                <br />
                                <asp:TextBox ID="TextBoxUN" runat="server" Height="30px" style="text-align: left;" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <br />
                                First Name:<br /> <br /> </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBoxFN" runat="server" Height="30px" style="text-align: left;" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="First name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <br />
                                Last Name:<br /> <br /> </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBoxLN" runat="server" Height="30px" style="text-align: left;" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Last name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style5"></td>
                        </tr>
                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Email:<br /> <br /> </td>
                            <td class="auto-style7">
                                <br />
                                <asp:TextBox ID="TextBoxEmail" runat="server" Height="30px" style="text-align: left;" TextMode="Email" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="Red" style="text-align: left;"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td class="auto-style5"></td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Sex:<br /> <br /> </td>
                            <td>
                                <asp:DropDownList ID="DropDownListSex" runat="server" Font-Names="montserrat" Height="30px" style="text-align: left;" Width="187px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>Other/Prefer not to answer</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSex" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select" style="text-align: right">Required</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Address:<br /> <br /> </td>
                            <td>
                                <asp:TextBox ID="TextBoxAddress" runat="server" Height="30px" style="text-align: left;" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                State:<br /> <br /> </td>
                            <td>
                                <asp:DropDownList ID="DropDownListState" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" Width="187px">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownListState" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select State">Please select a state</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Phone Number:<br /> <br /> </td>
                            <td>
                                <asp:TextBox ID="TextBoxPhone" runat="server" Height="30px" style="text-align: left;" TextMode="Phone" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Date of Birth:<br /> <br /> </td>
                            <td>
                                <asp:TextBox ID="TextBoxDOB" runat="server" Font-Names="Montserrat" Height="30px" style="text-align: left;" TextMode="Date" Width="180px"></asp:TextBox>
                                <span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                                </span>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style12">
                                <br />
                                Password:<br />
                                <br />
                                                    </td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBoxPass" runat="server" class="textbox" Height="30px" style="text-align: left;" TextMode="Password" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red" style="text-align: left;"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>

                                                <tr>
                            <td class="auto-style10">
                                <br />
                                Confirm Password:<br /> <br /> </td>
                            <td>
                                <br />
                                <asp:TextBox ID="TextBoxRPass" runat="server" class="textbox" Height="30px" style="text-align: left;" TextMode="Password" Width="180px" Font-Names="Montserrat"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm password is required" ForeColor="Red" style="text-align: left;"></asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Passwords must match" ForeColor="Red" style="text-align: left;"></asp:CompareValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                    </table>
                        <br />
                </div>
                <div class="center">
                    <span class="submitsection">
                    <asp:Label ID="LabelFail" runat="server" Text="Label" Visible="False"></asp:Label>
                    </span>
                    <br />
                    <br />
                    <span class="submitsection">
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" Font-Names="montserrat semibold" Font-Size="Large" Height="50px" Width="116px" />
                    </span>
                    <br />
                    <br />
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="centertrue">
                <br />
                <br />
                <h3 style="text-align: center;" class="auto-style14">Registration Successful!</h3>
                <p style="text-align: center;">
                    &nbsp;</p>
                <p style="text-align: center">
                    <asp:Button ID="ButtonSuccess" runat="server" OnClick="ButtonSuccess_Click" Text="Login" Font-Names="montserrat semibold" Font-Size="Large" Height="50px" Width="122px" />
                </p>
                <br />
                </div>
            </asp:View>
        </asp:MultiView>
        </div>
</asp:Content>
