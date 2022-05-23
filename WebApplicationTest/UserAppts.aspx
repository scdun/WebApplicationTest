<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAppts.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplicationTest.UserAppts" %>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

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
        .head {
            margin-top:2%;
            justify-content:center;
            text-align:center;
        }
        .chart {
        }
        .auto-style1 {
            font-size: 18px;
            margin-left:10%;
            margin-right:10%;
        }
        .Grid1 {
            margin-left:2.5%;
            margin-right:2.5%;
            font-family:Montserrat;
            width:95%
        }
        .titlelabel {
            font-size:42px;
            color:#123875;
        }
  </style>
     <div class="bg-container">
        <div class="head">
            <h1>&nbsp;</h1>
            <h1 class="titlelabel"><asp:Label ID="LabelUser" runat="server" Font-Names="Montserrat SemiBold" Font-Size="42px" Height="42px"></asp:Label>&nbsp;Appointments</h1><br /><br />
            <p class="auto-style1">View scheduled appointments below</p><br />
            <p class="auto-style1">If you need to change an appointment, delete it from this page and reschedule it on the
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CalendarTest.aspx" Font-Names="Montserrat SemiBold" Font-Size="18px">set new appointments</asp:HyperLink>
                page, or contact our office at (123)456-7891.</p><br />
        </div>
        <div class="chart">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PPAdbConnectionString %>" SelectCommand="SELECT * FROM [DocAppts] WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM [DocAppts] WHERE [ApptID] = @ApptID" InsertCommand="INSERT INTO [DocAppts] ([Doctor], [Time], [IsBooked], [UserID], [Date], [UserName]) VALUES (@Doctor, @Time, @IsBooked, @UserID, @Date, @UserName)" UpdateCommand="UPDATE [DocAppts] SET [Doctor] = @Doctor, [Time] = @Time, [IsBooked] = @IsBooked, [UserID] = @UserID, [Date] = @Date, [UserName] = @UserName WHERE [ApptID] = @ApptID">
                <DeleteParameters>
                    <asp:Parameter Name="ApptID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="IsBooked" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="LabelUser" Name="UserName" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="IsBooked" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="ApptID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <span class="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" BackColor="#9CA8B6" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Text-Align="Center" HorizontalAlign="Center" Margin-Left="10%" Margin-Right="10%" Justify-Content="Center" CssClass="Grid1" CellSpacing="3" AllowSorting="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ApptID" HeaderText="ApptID" InsertVisible="False" ReadOnly="True" SortExpression="ApptID">
                    <HeaderStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#003060" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle ForeColor="Black" BackColor="#B7CAD2" BorderColor="#707070" BorderStyle="Solid" BorderWidth="2px" Height="40px" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </span>
            <h1>&nbsp;</h1>
        </div>
    </div>
</asp:Content>