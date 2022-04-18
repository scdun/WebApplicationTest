<%@ Page Title="CalendarTest" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CalendarTest.aspx.cs" Inherits="WebApplicationTest.CalendarTest" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
        <div style="font-size: large">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [DocAppts]">
            </asp:SqlDataSource>
                <asp:Panel ID="View1" runat="server">
                    <span class="auto-style1" style="font-size: x-large">Welcome
                    <asp:Label ID="LabelUNC" runat="server"></asp:Label>
                    ! Set a new appointment below.</span><br />
                    <asp:Label ID="LabelUserID" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    Please select your doctor.<br />
                    <br />
                    <asp:DropDownList ID="DropDownListDoctors" runat="server" OnSelectedIndexChanged="DropDownListDoctors_SelectedIndexChanged" Font-Names="Arial">
                        <asp:ListItem>Select Doctor</asp:ListItem>
                        <asp:ListItem>Dr. Smith</asp:ListItem>
                        <asp:ListItem>Dr. Johnson</asp:ListItem>
                        <asp:ListItem>Dr. Nguyen</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="ButtonDoc" runat="server" OnClick="ButtonDoc_Click" Text="Submit" Font-Names="Arial" />
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
                    <asp:Button ID="ButtonDate" runat="server" Text="Submit" OnClick="ButtonDate_Click" Font-Names="Arial" />
                </asp:Panel>
                <asp:Panel ID="View3" runat="server">
                    Please select a time.<br />
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
                    <asp:Label ID="LabelRadio" runat="server" ForeColor="Red" Text="Please select a time" Visible="False"></asp:Label>
                    <br />
                    <asp:Button ID="ButtonTime" runat="server" Text="Submit" OnClick="ButtonTime_Click" Font-Names="Arial" />
                    <br />
                </asp:Panel>
                <asp:Panel ID="View4" runat="server">
                    <br />
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
                    <asp:Button ID="ButtonConfirm" runat="server" Text="Confirm" OnClick="ButtonConfirm_Click" Font-Names="Arial" />
                </asp:Panel>
                <asp:Panel ID="View5" runat="server">
                    Appointment successfully scheduled! You can view your scheduled appointments on your
                    <asp:HyperLink ID="HyperLinkUserPage" runat="server" NavigateUrl="~/User.aspx">User Page</asp:HyperLink>
                    .<br />
                </asp:Panel>
            <br />
            </div>
</asp:Content>
