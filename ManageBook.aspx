<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageBook.aspx.cs" Inherits="ManageBook" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
        <table align="center" class="style1" style="height: 411px">
            <tr>
                <td class="style20" valign="top">
                    <table class="style9" 
                        style="width: 888px; height: 32px; z-index: 1; left: 1px; top: 56px; position: relative; background-color: #FFFFCC">
                        <tr>
                            <td class="style16">
                                Select Book</td>
                            <td class="style15">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
                                    style="z-index: 1; left: 7px; top: 0px; position: relative; height: 22px">
                                    <asp:ListItem>Search By</asp:ListItem>
                                    <asp:ListItem>Book_Name</asp:ListItem>
                                    <asp:ListItem>Author</asp:ListItem>
                                    <asp:ListItem>Category</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style17">
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="Book_Name" 
                                    DataValueField="Book_Name" 
                                    style="z-index: 1; left: 422px; top: 8px; position: absolute; height: 22px; right: 286px" 
                                    Width="180px">
                                </asp:DropDownList>
                                Select Book Name</td>
                            <td class="style18">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    style="z-index: 1; top: -1px; position: relative; width: 111px; height: 25px; left: -60px; bottom: -24px; right: -51px; background-color: #99CCFF" 
                                    Text="Search" />
                                <div style="width: 104px; z-index: 1; left: 762px; top: 8px; position: absolute; height: 19px">
                                    <asp:LinkButton ID="LinkButtonAllBook" runat="server" 
                                        onclick="LinkButton1_Click" 
                                        
                                        style="z-index: 1; left: 15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 20px; width: 67px;">All-Book</asp:LinkButton>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table align="right" class="style12" 
                        style="z-index: 1; left: 878px; top: 419px; position: absolute">
                        <tr>
                            <td class="style13">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    DeleteCommand="DELETE FROM [Book] WHERE [ISBN_No] = @ISBN_No" 
                                    InsertCommand="INSERT INTO [Book] ([ISBN_No], [Book_Name], [Author], [Publisher], [Category], [Stock]) VALUES (@ISBN_No, @Book_Name, @Author, @Publisher, @Category, @Stock)" 
                                    SelectCommand="SELECT * FROM [Book] WHERE ([Book_Name] = @Book_Name)" 
                                    
                                    UpdateCommand="UPDATE [Book] SET [Book_Name] = @Book_Name, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [Stock] = @Stock WHERE [ISBN_No] = @ISBN_No">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ISBN_No" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ISBN_No" Type="Int32" />
                                        <asp:Parameter Name="Book_Name" Type="String" />
                                        <asp:Parameter Name="Author" Type="String" />
                                        <asp:Parameter Name="Publisher" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Stock" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="Book_Name" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Book_Name" Type="String" />
                                        <asp:Parameter Name="Author" Type="String" />
                                        <asp:Parameter Name="Publisher" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Stock" Type="Int32" />
                                        <asp:Parameter Name="ISBN_No" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Book_Name] FROM [Book]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <div class="style21" 
                        style="width: 194px; height: 40px; z-index: 1; left: 572px; top: 183px; position: absolute; right: 529px">
                        <strong><span class="style22">Manage Book</span></strong></div>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ISBN_No" 
                        DataSourceID="SqlDataSource1" GridLines="Vertical" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        style="z-index: 1; left: 8px; top: 61px; position: relative; height: 100px; width: 853px" 
                        Visible="False" BackColor="White" BorderColor="#999999" BorderStyle="None" 
                        BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ISBN_No" HeaderText="ISBN_No" ReadOnly="True" 
                                SortExpression="ISBN_No" />
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                                SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" 
                                SortExpression="Author" />
                            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                                SortExpression="Publisher" />
                            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        DataSourceID="SqlDataSource4" DataTextField="Category" 
                                        DataValueField="Category" SelectedValue='<%# Bind("Category") %>' Width="100px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [Category] FROM [Book]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        </Columns>
                        <EmptyDataTemplate>
                            Data Deleted Successfully.
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
            font-size: medium;
            width: 212px;
        }
        .style13
        {
            font-size: medium;
            width: 390px;
        }
        .style14
        {
            font-size: medium;
            width: 388px;
        }
        .style15
        {
            font-size: medium;
            width: 187px;
            height: 33px;
        }
        .style16
        {
            color: #000000;
            font-size: medium;
            width: 86px;
            height: 33px;
        }
        .style17
        {
            font-size: medium;
            width: 388px;
            height: 33px;
        }
        .style18
        {
            height: 33px;
        }
        .style19
        {
            height: 308px;
        }
        .style20
        {
            height: 316px;
        }
        .style21
        {
            font-size: x-large;
        }
        .style22
        {
            color: #000066;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
