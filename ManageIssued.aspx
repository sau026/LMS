<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageIssued.aspx.cs" Inherits="ManageIssued" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    
    <table align="center" class="style1" style="height: 564px">
        <tr>
            <td class="style3">
                <table align="right" class="style5" 
                    style="height: 156px; z-index: 1; left: 210px; top: 267px; position: absolute; width: 68%">
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewIssueBook" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                                onselectedindexchanged="GridViewIssueBook_SelectedIndexChanged" 
                                style="z-index: 2; left: 36px; top: -6px; position: absolute; height: 110px; width: 835px" 
                                Visible="False">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                                        SortExpression="Book_Name" />
                                    <asp:BoundField DataField="Issue_Stock" HeaderText="Issue_Stock" 
                                        SortExpression="Issue_Stock" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" 
                                        SortExpression="Username" />
                                    <asp:BoundField DataField="Issue_Date" HeaderText="Issue_Date" 
                                        SortExpression="Issue_Date" />
                                    <asp:BoundField DataField="Return_Date" HeaderText="Return_Date" 
                                        SortExpression="Return_Date" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT * FROM [IssueBook] WHERE ([Username] = @Username)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownListUN" Name="Username" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridViewAllData" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                DataSourceID="SqlDataSource3" GridLines="Vertical" 
                                style="z-index: 1; left: 34px; top: 154px; position: absolute; height: 166px; width: 841px" 
                                Visible="False">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                                        SortExpression="Book_Name" />
                                    <asp:BoundField DataField="Issue_Stock" HeaderText="Issue_Stock" 
                                        SortExpression="Issue_Stock" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" 
                                        SortExpression="Username" />
                                    <asp:BoundField DataField="Issue_Date" HeaderText="Issue_Date" 
                                        SortExpression="Issue_Date" />
                                    <asp:BoundField DataField="Return_Date" HeaderText="Return_Date" 
                                        SortExpression="Return_Date" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT * FROM [IssueBook]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Username] FROM [IssueBook]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <table class="style6">
                    <tr>
                        <td class="style7">
                            Select Username 
                            <asp:DropDownList ID="DropDownListUN" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="Username" 
                                DataValueField="Username" Width="180px" 
                                style="z-index: 1; left: 122px; top: 6px; position: absolute">
                            </asp:DropDownList>
                        </td>
                        <td class="style8">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="ButtonSearch" runat="server" onclick="ButtonSearch_Click" 
                                style="z-index: 1; left: 370px; top: 2px; position: absolute; height: 28px; right: 388px; background-color: #99CCFF" 
                                Text="Search" Width="108px" />
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                style="z-index: 1; left: 658px; top: 3px; position: absolute; width: 117px; height: 28px; background-color: #99CCFF" 
                                Text="Show All Record" />
                        </td>
                    </tr>
                </table>
                <div style="width: 313px; z-index: 1; left: 513px; top: 182px; position: absolute; height: 35px">
                    <strong style="font-size: xx-large; color: #000066">Managed Issued Book</strong></div>
            </td>
        </tr>
        </table>
        </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style6
        {
            z-index: 2;
            left: 283px;
            top: 223px;
            position: absolute;
            height: 35px;
            width: 792px;
            background-color: #FFFFCC;
        }
    </style>
</asp:Content>

