<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    <table class="style1" style="height: 393px">
        <tr>
            <td class="style6" width="50" valign="top">
                <table align="right" class="style8">
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT * FROM [UserData]" 
                                DeleteCommand="DELETE FROM [UserData] WHERE [Username] = @Username" 
                                InsertCommand="INSERT INTO [UserData] ([Username], [Email], [Phone_No], [Gender], [Country], [Password]) VALUES (@Username, @Email, @Phone_No, @Gender, @Country, @Password)" 
                                UpdateCommand="UPDATE [UserData] SET [Email] = @Email, [Phone_No] = @Phone_No, [Gender] = @Gender, [Country] = @Country, [Password] = @Password WHERE [Username] = @Username">
                                <DeleteParameters>
                                    <asp:Parameter Name="Username" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Username" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Phone_No" Type="Int32" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Country" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Phone_No" Type="Int32" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Country" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Username" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <div class="style12" 
                                style="z-index: 1; left: 556px; top: 189px; position: absolute; height: 33px; width: 194px; color: #000066">
                                <strong>Manage User</strong></div>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataSourceID="SqlDataSourceRegistration" GridLines="Vertical" 
                    Width="895px" DataKeyNames="Username" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged" 
                    style="z-index: 1; left: 1px; top: 67px; position: relative; width: 895px; height: 296px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" ReadOnly="True" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" 
                            SortExpression="Phone_No" />
                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="Gender" DataValueField="Gender" 
                                    SelectedValue='<%# Bind("Gender") %>' Width="100px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Gender] FROM [UserData]">
                                </asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country" SortExpression="Country">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="Country" DataValueField="Country" 
                                    Height="22px" Width="100px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Country] FROM [UserData]">
                                </asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                    </Columns>
                    <EmptyDataTemplate>
                        No Record.
                    </EmptyDataTemplate>
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
