<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookManager.aspx.cs" Inherits="BookManager" MasterPageFile="~/MasterPage.master" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
        <table align="center" class="style1" style="height: 403px">
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="Book_Name" DataSourceID="SqlDataSourceBook" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        
                        style="z-index: 2; left: 250px; top: 239px; position: absolute; height: 256px; width: 836px; margin-top: 0px;" 
                        ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" ReadOnly="True" 
                                SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" 
                                SortExpression="Author" />
                            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                                SortExpression="Publisher" />
                            <asp:BoundField DataField="ISBN_No" HeaderText="ISBN_No" 
                                SortExpression="ISBN_No" />
                            <asp:BoundField DataField="Category" HeaderText="Category" 
                                SortExpression="Category" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        </Columns>
                        <EmptyDataTemplate>
                            &nbsp;
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <div style="width: 205px; height: 39px; position: absolute; z-index: 1; left: 875px; top: 489px; background-color: #FFFFFF">
                        <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                            SelectCommand="SELECT * FROM [Book]" 
                            onselecting="SqlDataSourceBook_Selecting"></asp:SqlDataSource>
                    </div>
                    <div class="style12" 
                        style="width: 231px; z-index: 1; left: 556px; top: 183px; position: absolute; height: 38px">
                        <strong style="color: #000066; background-color: #FFFFFF">All Book Record</strong></div>
                </td>
            </tr>
            </table>
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style12
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
