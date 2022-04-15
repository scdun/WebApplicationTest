<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarTest.aspx.cs" Inherits="WebApplicationTest.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: large">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [DocAppts]">
            </asp:SqlDataSource>
                <asp:Panel ID="View1" runat="server">
                    <span class="auto-style1">Welcome
                    <asp:Label ID="LabelUNC" runat="server" Text="Label"></asp:Label>
                    ! Set a new appointment below.</span><br />
                    <br />
                    Please select your doctor.<br />
                    <br />
                    <asp:DropDownList ID="DropDownListDoctors" runat="server">
                        <asp:ListItem>Select Doctor</asp:ListItem>
                        <asp:ListItem>Dr. Smith</asp:ListItem>
                        <asp:ListItem>Dr. Johnson</asp:ListItem>
                        <asp:ListItem>Dr. Brown</asp:ListItem>
                        <asp:ListItem>Dr. Ng</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="ButtonDoc" runat="server" OnClick="ButtonDoc_Click" Text="Submit" />
                </asp:Panel>
                <asp:Panel ID="View2" runat="server">
                    Please select a date.<br />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                    <br />
                    <asp:Button ID="ButtonDate" runat="server" Text="Submit" OnClick="ButtonDate_Click" />
                </asp:Panel>
                <asp:Panel ID="View3" runat="server">
                    Please select a time.<br />
                    <br />
                    <asp:DropDownList ID="DropDownListTime" runat="server">
                        <asp:ListItem>Select a time</asp:ListItem>
                        <asp:ListItem>9 AM</asp:ListItem>
                        <asp:ListItem>10 AM</asp:ListItem>
                        <asp:ListItem>11 AM</asp:ListItem>
                        <asp:ListItem>12 AM</asp:ListItem>
                        <asp:ListItem>2 PM</asp:ListItem>
                        <asp:ListItem>3 PM</asp:ListItem>
                        <asp:ListItem>4 PM</asp:ListItem>
                        <asp:ListItem>5 PM</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RadioButton ID="RadioButton9" runat="server" Text="9:00 AM" CausesValidation="True" GroupName="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton10" runat="server" Text="10:00 AM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton11" runat="server" Text="11:00 AM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton12" runat="server" Text="12:00 PM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="2:00 PM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="3:00 PM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="4:00 PM" CausesValidation="True" GroupName="radiobuttons" ValidationGroup="radiobuttons" />
                    <br />
                    <br />
                    <asp:Label ID="LabelRadio" runat="server" ForeColor="Red" Text="Please select a time" Visible="False"></asp:Label>
                    <br />
                    <asp:Button ID="ButtonTime" runat="server" Text="Submit" OnClick="ButtonTime_Click" />
                </asp:Panel>
                <asp:Panel ID="View4" runat="server">
                    If this information is correct, confirm appointment below.<br />
                    <br />
                    Appointment with
                    <asp:Label ID="LabelDoctor" runat="server" Text="Label"></asp:Label>
                    &nbsp;on
                    <asp:Label ID="LabelDate" runat="server" Text="Label"></asp:Label>
                    &nbsp;at
                    <asp:Label ID="LabelTime" runat="server" Text="Label"></asp:Label>
                    .<br />
                    <br />
                    <asp:Button ID="ButtonConfirm" runat="server" Text="Confirm" />
                </asp:Panel>
                <asp:Panel ID="View5" runat="server">
                    Appointment successfully scheduled! You can view your scheduled appointments on your
                    <asp:HyperLink ID="HyperLinkUserPage" runat="server">User Page</asp:HyperLink>
                    .<br />
                </asp:Panel>
            <br />
            </div>
    </form>
</body>
</html>
